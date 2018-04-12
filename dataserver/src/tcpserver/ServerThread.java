package tcpserver;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.net.Socket;

import dateReciever.mainact;



/**
 * 璇ョ被涓哄绾跨▼绫伙紝鐢ㄤ簬鏈嶅姟绔�
 */
public class ServerThread implements Runnable {

	private Socket client = null;
	private InputStream in;
	private String str=null;
	public ServerThread(Socket client){
		this.client = client;
	}
	public void returnMessage(String kString) {
		try {
            PrintWriter out=new PrintWriter( client.getOutputStream () );
            System.out.println(kString);
            if(kString.startsWith("HI")){
            	out.print("HI");
            	out.flush ();
            }
            else{
            byte[]s=kString.getBytes();
            mainact result=new mainact(new String(s,"utf-8"));
            out.print ( result.resultjson );
            
            out.flush ();
            client.close();
            }
//            out.flush ();
        } catch (IOException e) {
            e.printStackTrace ( );
        }
	}
	@Override
	public void run() {
		try{

            /**寰楀埌杈撳叆娴�*/
            in =client.getInputStream();
            /**
             * 瀹炵幇鏁版嵁寰幆鎺ユ敹
             * */
            while (!client.isClosed())
            {
                byte[] bt=new byte[500];
                in.read ( bt );
                str=new String( bt,"UTF-8" );                  //缂栫爜鏂瑰紡  瑙ｅ喅鏀跺埌鏁版嵁涔辩爜
                if (str!=null&&str!="exit")
                {
                    returnMessage ( str );
                }else if (str==null||str=="exit"){
                    break;                                     //璺冲嚭寰幆缁撴潫socket鏁版嵁鎺ユ敹
                }
                System.out.println(str);
            }
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
