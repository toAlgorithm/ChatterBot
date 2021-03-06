package cn.edu.hust.utils;

import java.io.IOException;

public class StartChatbot {

    public static void main(String[] args) throws IOException, InterruptedException {

        //获取key对应的value值
        String python= PythonPropertyUtil.getProperty("pythonInterpreterPath");
        //System.out.println("python:"+python);
        String pythonScript= PythonPropertyUtil.getProperty("pythonScriptPath");
        //System.out.println("pythonScript:"+pythonScript);

        String funcArg1="你好";

        String[] execArgs = new String[]{ python,pythonScript,funcArg1};

        String result = "";

        Process process = Runtime.getRuntime().exec(execArgs);

        //有时候需要在等待调用的系统程序完成操作后，当前线程才能做下一步操作
        //阻塞当先线程直至调用程序运行结束
        process.waitFor();

    }
}
