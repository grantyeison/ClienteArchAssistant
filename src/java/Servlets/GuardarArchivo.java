/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Prometheus
 */
public class GuardarArchivo 
{
    private final String UPLOAD_DIRECTORY = "C:\\archivos";
    
    public List<String> listarArchivos(String dir, String paso)
    {
        List<String> archivos = new LinkedList<>();
        String[] arch;
        String datos = dir;
        if (dir == null)
        {
            return archivos;
        }
        if (paso == "qaw4")
        {
            int posi = dir.indexOf("|~|");
            if (posi >= 0)
            {
                datos = dir.substring(posi+3);
            }
        }
        arch = datos.split(",");
        for (String a : arch)
        {
            archivos.add(a);
        }
        
    /*    File folder = new File(dir);
        if (folder.exists())
        {
            File[] ficheros = folder.listFiles();
            for (File arch : ficheros)
            {
                archivos.add(arch);
            }
        }
    */    return archivos;
    }
    
    public String guardarArchivo (HttpServletRequest request,String Proyecto, String Paso) throws Exception
    {
        String guardado = null;
        String iname = "";
        File folder;
        
        
       if (ServletFileUpload.isMultipartContent(request))
        {
            try
            {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multiparts)
                {
                    if (!item.isFormField())
                    {
                        //probar si se puede poner como un servicio para almacenar los archivos en el servidor
                        iname = new File(item.getName()).getName();
                        String extension = iname.substring(iname.indexOf("."));
                        if (!extension.equals(".exe"))  //incluir todas las extensiones prohibidas para subir archivos
                        {
                            folder = new File(UPLOAD_DIRECTORY+File.separator+Proyecto+File.separator+Paso);
                            if (!folder.exists())
                            {
                                folder.mkdirs();
                            }
                            item.write(new File(folder.getPath()+File.separator+iname));
                            guardado = folder.getAbsolutePath();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                System.out.println("se generó un error al subir el archivo "+ex);
            }
        }
        return guardado;
    }
    
    public void eliminarArchivo(String url)
    {
        File fichero = new File(url);
        fichero.delete();
        System.out.println("Fichero eliminado satisfactoriamente");
    }
    
    public void descargar(String url, String nombre)
    {
         File origen = new File(url);
            
        File destino = new File(System.getProperty("user.home")+File.separator+"Downloads"+File.separator+nombre);
       
        try {
            
            InputStream in = new FileInputStream(origen);
            OutputStream out = new FileOutputStream(destino);
            
            byte[] b = new byte[1024];
            int len;
            
            while ((len = in.read(b)) > 0)
            {
                out.write(b,0,len);
            }
        
            in.close();
            out.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(GuardarArchivo.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(GuardarArchivo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        /*
        File archivo = null;
            
        String destino = System.getProperty("user.home")+File.separator+"Downloads";
        
        archivo = new File(destino);
        
        if (!archivo.exists())
        {
            if (!archivo.mkdir())
            {
                return null;
            }
        }
        
        File guardado = new File(archivo.getPath()+File.separator+nombre);
        
        System.out.println("destino: "+destino);
        
        
        System.out.println("origen: "+destino);
        
        try {
            URLConnection conn = new URL(url).openConnection();
            conn.connect();
            InputStream in = conn.getInputStream();
            OutputStream out = new FileOutputStream(guardado);
            int b = 0;
            while (b != -1)
            {
                b = in.read();
                if (b != -1)
                {
                    out.write(b);
                }
            }
            in.close();
            out.close();
            
        } catch (MalformedURLException ex) {
            Logger.getLogger(GuardarArchivo.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(GuardarArchivo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return archivo;
*/
    }
    
}
