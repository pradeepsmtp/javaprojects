package pa.soap.client;

import com.thomas_bayer.blz.BLZService;
import com.thomas_bayer.blz.BLZServicePortType;
import com.thomas_bayer.blz.DetailsType;

public class SoapClient {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		BLZService o = new BLZService();
		BLZServicePortType p = o.getPort(BLZServicePortType.class);
		DetailsType d =  p.getBank("86010424") ; 
		System.out.println( " Using code 86010424 D " +d.getBezeichnung()  );
		System.out.println( " D " +d.getBic()  );
		System.out.println( " D " +d.getOrt()  );
		System.out.println( " D " +d.getPlz()  );
		
		
	}

}
