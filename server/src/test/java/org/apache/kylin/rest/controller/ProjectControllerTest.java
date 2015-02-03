package org.apache.kylin.rest.controller;

import java.io.IOException;
import java.util.List;

import org.apache.kylin.rest.exception.InternalErrorException;
import org.apache.kylin.rest.request.CreateProjectRequest;
import org.apache.kylin.rest.request.UpdateProjectRequest;
import org.apache.kylin.rest.service.ProjectService;
import org.apache.kylin.rest.service.ServiceTestBase;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import org.apache.kylin.metadata.project.ProjectInstance;
import org.apache.kylin.metadata.project.ProjectManager;

/**
 * Created by honma on 8/7/14.
 */
public class ProjectControllerTest extends ServiceTestBase {

    private ProjectController projectController;

    @Autowired
    ProjectService projectService;

    @Before
    public void setup() throws Exception {
        super.setUp();

        projectController = new ProjectController();
        projectController.setProjectService(projectService);
        try {
            projectController.deleteProject("new_project");
        } catch (InternalErrorException e) {
            //project doesn't exist
        }
        try {
            projectController.deleteProject("new_project_2");
        } catch (InternalErrorException e) {
            //project doesn't exist
        }

    }

    @Test
    public void testAddUpdateProject() throws IOException {

        List<ProjectInstance> projects = projectController.getProjects(null, null);

        int originalProjectCount = projects.size();
        CreateProjectRequest request = new CreateProjectRequest();
        request.setName("new_project");
        ProjectInstance ret = projectController.saveProject(request);

        Assert.assertEquals(ret.getOwner(), "ADMIN");
        Assert.assertEquals(ProjectManager.getInstance(getTestConfig()).listAllProjects().size(), originalProjectCount + 1);

        UpdateProjectRequest updateR = new UpdateProjectRequest();
        updateR.setFormerProjectName("new_project");
        updateR.setNewProjectName("new_project_2");
        projectController.updateProject(updateR);

        Assert.assertEquals(ProjectManager.getInstance(getTestConfig()).listAllProjects().size(), originalProjectCount + 1);
        Assert.assertEquals(ProjectManager.getInstance(getTestConfig()).getProject("new_project"), null);

        Assert.assertNotEquals(ProjectManager.getInstance(getTestConfig()).getProject("new_project_2"), null);

        // only update desc:
        updateR = new UpdateProjectRequest();
        updateR.setFormerProjectName("new_project_2");
        updateR.setNewProjectName("new_project_2");
        updateR.setNewDescription("hello world");
        projectController.updateProject(updateR);

        Assert.assertEquals(ProjectManager.getInstance(getTestConfig()).listAllProjects().size(), originalProjectCount + 1);
        Assert.assertEquals(ProjectManager.getInstance(getTestConfig()).getProject("new_project"), null);
        Assert.assertNotEquals(ProjectManager.getInstance(getTestConfig()).getProject("new_project_2"), null);
        Assert.assertEquals(ProjectManager.getInstance(getTestConfig()).getProject("new_project_2").getDescription(), "hello world");
    }

    @Test(expected = InternalErrorException.class)
    public void testAddExistingProject() throws IOException {
        CreateProjectRequest request = new CreateProjectRequest();
        request.setName("default");
        projectController.saveProject(request);
    }
}
