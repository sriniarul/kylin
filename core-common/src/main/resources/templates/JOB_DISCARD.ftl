<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="Multipart/Alternative; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<style>
    html {
        font-size: 10px;
    }

    * {
        box-sizing: border-box;
    }

    a:hover,
    a:focus {
        color: #23527c;
        text-decoration: underline;
    }

    a:focus {
        outline: 5px auto -webkit-focus-ring-color;
        outline-offset: -2px;
    }
</style>

<body>
<div style="margin-left:5%;margin-right:5%;font-family: 'Trebuchet MS ', Arial, Helvetica, sans-serif;">
<span style="
    line-height: 1.1;font-size: 18px;">
    <p style="text-align:left;">Dear Kylin user,</p>
    <p>It's a pity that the job is discarded.Thank you for using Kylin.</p>
</span>
    <hr style="margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;">
    <h1>
    <span style="display: inline;
            background-color: #607D8B;
            color: #fff;
            line-height: 1;
            font-weight: 700;
            font-size:36px;
            text-align: center;">&nbsp;Discarded&nbsp;</span>
    </h1>
    <hr style="margin-top: 20px;
            margin-bottom: 20px;
            border: 0;
            border-top: 1px solid #eee;">
    <table cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border:1px solid #f8f8f8">

        <tr>

            <td style="padding: 10px 15px;
                    background-color: #eeeeee;
                    border:1px solid #f8f8f8;">
                <h4 style="margin-top: 0;
                        margin-bottom: 0;
                        font-size: 16px;
                        color: inherit;
                        color: #404040;
                        font-family: 'Trebuchet MS ', Arial, Helvetica, sans-serif;">
                ${job_name}
                </h4>
            </td>
        </tr>

        <tr>

            <td style="padding: 10px 15px;
                    background-color: #eeeeee;
                    border:1px solid #f8f8f8;">
                <h4 style="margin-top: 0;
                        margin-bottom: 0;
                        font-size: 16px;
                        color: inherit;
                        color: #404040;
                        font-family: 'Trebuchet MS ', Arial, Helvetica, sans-serif;">
                ${env_name}
                </h4>
            </td>
        </tr>

        <tr>

            <td style="padding: 15px;">
                <table cellpadding="0" cellspacing="0" width="100%"
                       style="margin-bottom: 20px;border:1 solid #ddd;border-collapse: collapse;font-family: 'Trebuchet MS ', Arial, Helvetica, sans-serif;">
                    <tr>
                        <th width="30%" style="padding: 8px;
                                            line-height: 1.42857143;
                                            vertical-align: top;
                                            border: 1px solid #ddd;
                                            text-align: left;
                                            font-size: medium;
                                            font-style: normal;">Submitter
                        </th>
                        <td style="padding: 8px;
                                line-height: 1.42857143;
                                vertical-align: top;
                                border: 1px solid #ddd;
                                font-size: medium;
                                font-style: normal;">
                        ${submitter}
                        </td>
                    </tr>
                    <tr>
                        <th width="30%" style="padding: 8px;
                                            line-height: 1.42857143;
                                            vertical-align: top;
                                            border: 1px solid #ddd;
                                            text-align: left;
                                            font-size: medium;
                                            font-style: normal;">Job Engine
                        </th>
                        <td style="padding: 8px;
                                line-height: 1.42857143;
                                vertical-align: top;
                                border: 1px solid #ddd;
                                font-size: medium;
                                font-style: normal;">
                        ${job_engine}
                        </td>
                    </tr>
                    <tr>
                        <th width="30%" style="padding: 8px;
                                            line-height: 1.42857143;
                                            vertical-align: top;
                                            border: 1px solid #ddd;
                                            text-align: left;
                                            font-size: medium;
                                            font-style: normal;">Project
                        </th>
                        <td style="padding: 8px;
                                line-height: 1.42857143;
                                vertical-align: top;
                                border: 1px solid #ddd;
                                font-size: medium;
                                font-style: normal;">
                        ${project_name}
                        </td>
                    </tr>
                    <tr>
                        <th width="30%" style="padding: 8px;
                                            line-height: 1.42857143;
                                            vertical-align: top;
                                            border: 1px solid #ddd;
                                            text-align: left;
                                            font-size: medium;
                                            font-style: normal;">Cube Name
                        </th>
                        <td style="padding: 8px;
                                line-height: 1.42857143;
                                vertical-align: top;
                                border: 1px solid #ddd;
                                font-size: medium;
                                font-style: normal;">
                        ${cube_name}
                        </td>
                    </tr>
                    <tr>
                        <th width="30%" style="padding: 8px;
                                            line-height: 1.42857143;
                                            vertical-align: top;
                                            border: 1px solid #ddd;
                                            text-align: left;
                                            font-size: medium;
                                            font-style: normal;">
                            Source Records Count
                        </th>
                        <td style="padding: 8px;
                                line-height: 1.42857143;
                                vertical-align: top;
                                border: 1px solid #ddd;
                                font-size: medium;
                                font-style: normal;">
                        ${source_records_count}
                        </td>
                    </tr>
                    <tr>
                        <th width="30%" style="padding: 8px;
                                            line-height: 1.42857143;
                                            vertical-align: top;
                                            border: 1px solid #ddd;
                                            text-align: left;
                                            font-size: medium;
                                            font-style: normal;">Start Time
                        </th>
                        <td style="padding: 8px;
                                line-height: 1.42857143;
                                vertical-align: top;
                                border: 1px solid #ddd;
                                font-size: medium;
                                font-style: normal;">
                        ${start_time}
                        </td>
                    </tr>
                    <tr>
                        <th width="30%" style="padding: 8px;
                                            line-height: 1.42857143;
                                            vertical-align: top;
                                            border: 1px solid #ddd;
                                            text-align: left;
                                            font-size: medium;
                                            font-style: normal;">
                            Duration
                        </th>
                        <td style="padding: 8px;
                                line-height: 1.42857143;
                                vertical-align: top;
                                border: 1px solid #ddd;
                                font-size: medium;
                                font-style: normal;">
                        ${duration}
                        </td>
                    </tr>
                    <tr>
                        <th width="30%" style="padding: 8px;
                                            line-height: 1.42857143;
                                            vertical-align: top;
                                            border: 1px solid #ddd;
                                            text-align: left;
                                            font-size: medium;
                                            font-style: normal;">MR Waiting Time
                        </th>
                        <td style="padding: 8px;
                                line-height: 1.42857143;
                                vertical-align: top;
                                border: 1px solid #ddd;
                                font-size: medium;
                                font-style: normal;">
                        ${mr_waiting}
                        </td>
                    </tr>
                    <tr>
                        <th width="30%" style="padding: 8px;
                                            line-height: 1.42857143;
                                            vertical-align: top;
                                            border: 1px solid #ddd;
                                            text-align: left;
                                            font-size: medium;
                                            font-style: normal;">
                            Last Update Time
                        </th>
                        <td style="padding: 8px;
                                line-height: 1.42857143;
                                vertical-align: top;
                                border: 1px solid #ddd;
                                font-size: medium;
                                font-style: normal;">
                        ${last_update_time}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <hr style="margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;">
    <h4 style="font-weight: 500;
    line-height: 1.1;font-size:18px;">
        <p>Best Wishes!</p>
        <p style="margin: 0 0 10px;"><b>Kylin Team</b></p>
    </h4>
</div>
</body>

</html>Ò