
#include "nss/function_coiltext.nss"


.■待ち
function CoilWait(){

	WaitAction("coilmlist_窓/coilmlist_欄/演出*", null);
	WaitAction("coil*/ベース", null);
	WaitAction("coil*/ベース３", null);
	WaitAction("coilmlist_窓/*/*/*", null);


}


.■消去
function CoilEnd(){
	Delete("coil*");

	$SYSTEM_full_scene_update=false;

	//ドラマダコイル用
	$coildownON=false;
	$coilnewON=false;
	$coilpictON=false;
	$coilmailON=false;
	$coilmlistON=false;
	$coilphoneON=false;
	$coilphone2ON=false;
	$coilrenON=false;

	$CoilPhone=false;
	$CoilPhone2=false;


	$coildownpriON=false;//CoilDownSetPri用

	$coilphoneNOW="無し";

	//以下ユーザー任意
	$coilintoON=false;//演出消さない
	$coilphoneError=false;//電話直後エラーになる
	$coilraceSoon=false;//履歴の追加をすばやく

	$coilphone2Error=false;//電話直後エラーになる
	$coilrace2Soon=false;//履歴の追加をすばやく
}




.■優先度
..▽セット
function CoilBlack(){
//★種類が増えるごとに追加必要★

	$SYSTEM_full_scene_update=true;

	if(!$CoilBlackPass){

		$CoilBlackPass=false;

		$CoilBlack=0;
	
		$coilphoneEX=false;
		if($coilphoneON&&$coilphone2ON){$coilphoneEX=true;}

		if($coildownON){CoilBlackMacro();}
	
		if($coilnewON){
			Fade("@coilnew_黒", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilnew_黒", 200, 0, null, false);
		}
	
		if($coilpictON){
			Fade("@coilpict_黒", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilpict_黒", 200, 0, null, false);
		}

		if($coilphone2ON&&!$coilphoneEX){
			Fade("@coilphone2_黒", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilphone2_黒", 200, 0, null, false);
		}

		if($coilmail2ON){
			Fade("@coilmail2_黒", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilmail2_黒", 200, 0, null, false);
		}

		if($coilmailON){
			Fade("@coilmail_黒", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilmail_黒", 200, 0, null, false);
		}

		if($coilmlistON){
			Fade("@coilmlist_黒", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilmlist_黒", 200, 0, null, false);
		}

		if($coilphoneON&&!$coilphoneEX){
			Fade("@coilphone_黒", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilphone_黒", 200, 0, null, false);
		}

		if($coildownpriON){
			Fade("@coildown_黒", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coildown_黒", 200, 0, null, false);
		}

		if($coilrenON){
			Fade("@coilren_黒", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilren_黒", 200, 0, null, false);
		}





	}

	CoilIntoDelete();
}

function CoilBlackMacro(){
	if($CoilBlack==0){
		$CoilBlack=350;
	}else if($CoilBlack==350){
		$CoilBlack=600;
	}else if($CoilBlack==600){
		$CoilBlack=750;
	}
}


.■コイルの消去
..▽単一消去
function CoilDelete($CoilDelete,$CoilDeleteT,$CoilDeleteX,$CoilDeleteY){
//★種類が増えるごとに追加必要★

	WaitAction("coil*/ベース", null);

	if($CoilDelete=="CoilNew"){
		$CoilName="coilnew";
		$coilnewON=false;
	}else if($CoilDelete=="CoilMList"){
		$CoilName="coilmlist";
		$coilmlistON=false;
	}else if($CoilDelete=="CoilDown"){
		$CoilName="coildown";
		$coildownON=false;
		$coildownpriON=false;
	}else if($CoilDelete=="CoilPict"){
		$CoilName="coilpict";
		$coilpictON=false;
	}else if($CoilDelete=="CoilMail"){
		$CoilName="coilmail";
		$coilmailON=false;
	}else if($CoilDelete=="CoilMail2"){
		$CoilName="coilmail2";
		$coilmail2ON=false;
	}else if($CoilDelete=="CoilPhone"){
		$CoilName="coilphone";
		$coilphoneON=false;
	}else if($CoilDelete=="CoilPhone2"){
		$CoilName="coilphone2";
		$coilphone2ON=false;
	}else if($CoilDelete=="CoilRen"){
		$CoilName="coilren";
		$coilrenON=false;
	}else{
		$CoilName="失敗した";
		Message("デバッグ用","そんな名前のコイルぅはぁーッ？　ナイナイなぁーーいッッ！！",YESNOCANCE,EXCLAMATION);
	}

	$CoilDelete1=$CoilName+"_窓";
	$CoilDelete2=$CoilName+"_窓/マスク２";
	$CoilDelete3=$CoilName+"_窓/マスク２/ベース３";
	$CoilDelete4=$CoilName+"_窓/ベース";
	$CoilDelete5=$CoilName+"_ダウンロードプロセス";

	Request($CoilDelete5, Stop);

	Position($CoilDelete1,$X座,$Y座);

	Fade($CoilDelete3, 0, 0, null, false);
	Zoom($CoilDelete3, 0, 1000, 1000, Dxl2, true);
	Move($CoilDelete2, 0, $X座, $Y座, null, true);


	$CoilDeleteT1=$CoilDeleteT/3;
	$CoilDeleteT2=$CoilDeleteT-$CoilDeleteT1;
	$CoilDeleteT3=$CoilDeleteT/2;

////////////////////////////////////////////////////////////////////////////

	CreateEffect("coildelete_板",10999,0,0,1024,576,"Plain");
	SetAlias("coildelete_板", "coildelete_板");
	Request("coildelete_板", Passive);
	SetShade("coildelete_板", MEDIUM);
	Request("coildelete_板", AddRender);
	Fade("coildelete_板", 0, 0, null, false);


	$X座-=400;$Y座+=230;
	CreateTexture("coildelete_効果", 10999, OnLeft, $Y座, "cg/sys/coil/コイル出現3.png");
	Request("coildelete_効果", AddRender);
	Fade("coildelete_効果", 0, 0, null, true);
	Zoom("coildelete_効果", 0, 1500, 1500, null, false);//3

	$coildeleteH=ImageHorizon("coildelete_効果");
	$coildeleteV=ImageVertical("coildelete_効果");
	$coildeleteH=$CoilDeleteX-($coildeleteH/2)+120;
	$coildeleteV=$CoilDeleteY-($coildeleteV/2)+340;
	Move("coildelete_効果", 0, $coildeleteH, $coildeleteV, null, false);

//	CoilMove2(2,$CoilDelete,$CoilDeleteT,$CoilDeleteX,$CoilDeleteY,$CoilDeleteTempo,false);//3
	//絶対座標対策////////////////////
	$CoilNut=$CoilName+"_窓";
	Position($CoilNut,$X座標,$Y座標);

	$文字目X=Strstr($CoilDeleteX,"@");
	if(!$文字目X){
		$移動X=$CoilDeleteX-$X座標;
	}else{
		Message("デバッグ用","ここは絶対座標で指定",YESNOCANCE,EXCLAMATION);
//		$文字数X=Strlen($移動X);
//		$移動X=Substr($移動X,$文字目X,$文字数X);
	}

	$文字目Y=Strstr($CoilDeleteY,"@");
	if(!$文字目Y){
		$移動Y=$CoilDeleteY-$Y座標;
	}else{
		Message("デバッグ用","ここは絶対座標で指定",YESNOCANCE,EXCLAMATION);
//		$文字数Y=Strlen($移動Y);
//		$移動Y=Substr($移動Y,$文字目Y,$文字数Y);
	}
	//////////////////////////////////

	$CoilName1=$CoilName+"_*";
	$CoilName2=$CoilName+"_*/*";
	$CoilName3=$CoilName+"_*/*/*";
	$CoilName4=$CoilName+"_*/*/*/*";

	$X1 = $移動X;
	$X2 = -$X1/3*2;
	$Y1 = $移動Y;
	$Y2 = -$Y1/3*2;

	//////////////////////////////////
	CreateSE("coilsound_delete","se物体_コイル_システム削除");
	MusicStart("coilsound_delete",0,700,0,1000,null,false);

	BezierMove($CoilName4, $CoilDeleteT, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), Axl1, false);
	BezierMove($CoilName3, $CoilDeleteT, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), Axl1, false);
	BezierMove($CoilName2, $CoilDeleteT, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), Axl1, false);
	BezierMove($CoilName1, $CoilDeleteT, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), Axl1, false);

	Request($CoilName4, Disused);
	Request($CoilName3, Disused);
	Request($CoilName2, Disused);
	Request($CoilName1, Disused);

	Zoom($CoilDelete3, $CoilDeleteT1, 800, 800, Dxl1, false);

	Fade("coildelete_板", $CoilDeleteT3, 500, Axl1, false);//1

	Fade($CoilName4, $CoilDeleteT3, 0, null, false);//2
	Fade($CoilName3, $CoilDeleteT3, 0, null, false);//2
	Fade($CoilName2, $CoilDeleteT3, 0, null, false);//2
	Fade($CoilName1, $CoilDeleteT3, 0, null, false);//2
	Fade($CoilDelete3, $CoilDeleteT1, 1000, null, false);//2
	Wait($CoilDeleteT3);//1
//	WaitKey();

	CoilIntoDelete();


	Zoom("coildelete_板", $CoilDeleteT2, 1050, 1050, Axl1, false);//2
//	DrawTransition("coildelete_板", $CoilDeleteT2, 0, 1000, 100, null, "cg/data/circle_02_00_1.png", false);//2
	Fade("coildelete_板", $CoilDeleteT2, 0, null, false);//2

	Zoom($CoilDelete3, $CoilDeleteT2, 500, 500, Dxl1, false);

	DrawTransition($CoilDelete3, $CoilDeleteT3, 1000, 0, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);//2
	Fade($CoilDelete3, $CoilDeleteT3, 0, null, false);//2

	Rotate("coildelete_効果", 0, @0, @0, 90, null, false);
	Zoom("coildelete_効果", $CoilDeleteT, 300, 300, null, false);//3
	Fade("coildelete_効果", $CoilDeleteT2, 300, null, true);//2

	Fade("coildelete_効果", $CoilDeleteT1, 0, null, true);//1

	Request("coildelete_板", Disused);
	Request("coildelete_効果", Disused);
}


..▽全消去
function CoilAllDelete($CoilDeleteT,$CoilDeleteX,$CoilDeleteY){
//★種類が増えるごとに追加必要★

	WaitAction("coil*/ベース", null);

	CreateEffect("coildelete_板",9999,0,0,1024,576,"Plain");
	SetAlias("coildelete_板", "coildelete_板");
	Request("coildelete_板", Passive);
	SetShade("coildelete_板", MEDIUM);
	Request("coildelete_板", AddRender);
	Fade("coildelete_板", 0, 0, null, false);

//	$座標X=$CoilDeleteX;
//	$座標Y=$CoilDeleteY;
	CreateTexture("coildelete_効果", 10999, 0, 0, "cg/sys/coil/コイル出現3.png");
	Request("coildelete_効果", AddRender);
	Fade("coildelete_効果", 0, 0, null, true);
	Zoom("coildelete_効果", 0, 1500, 1500, null, false);//3
	Rotate("coildelete_効果", 0, @0, @0, 90, null, false);

	CreateSE("coilsound_delete","se物体_コイル_システム削除2");
	MusicStart("coilsound_delete",0,700,0,1000,null,false);

	$coildeleteH=ImageHorizon("coildelete_効果");
	$coildeleteV=ImageVertical("coildelete_効果");
	$coildeleteH=$CoilDeleteX-($coildeleteH/2)+120;
	$coildeleteV=$CoilDeleteY-($coildeleteV/2)+340;
	Move("coildelete_効果", 0, $coildeleteH, $coildeleteV, null, false);

	$CoilDeleteT1=$CoilDeleteT/3;
	$CoilDeleteT2=$CoilDeleteT-$CoilDeleteT1;
	$CoilDeleteT3=$CoilDeleteT/2;

	$CoilAllDeleteCountPlus=1;
	$CoilAllDeleteCount=1;
	while($CoilAllDeleteCount<10){
		if($CoilAllDeleteCount==1){
			$CoilName="coilnew";
			//$coilnewON=false;
		}else if($CoilAllDeleteCount==2){
			$CoilName="coilpict";
			//$coilpictON=false;
		}else if($CoilAllDeleteCount==3){
			$CoilName="coildown";
			if($coildownpriON){
				$coildownpriON=false;
				$coildownON=true;
			}
		}else if($CoilAllDeleteCount==4){
			$CoilName="coilphone2";
			//$coilphone2ON=false;
		}else if($CoilAllDeleteCount==5){
			$CoilName="coilmail";
			//$coilmailON=false;
		}else if($CoilAllDeleteCount==6){
			$CoilName="coilmail2";
			//$coilmail2ON=false;
		}else if($CoilAllDeleteCount==7){
			$CoilName="coilmlist";
			//$coilmlistON=false;
		}else if($CoilAllDeleteCount==8){
			$CoilName="coilphone";
			//$coilphoneON=false;
		}else if($CoilAllDeleteCount==9){
			$CoilName="coilren";
			//$coilrenON=false;
		}else{
			$CoilName="失敗した";
			Message("デバッグ用","そんな名前のコイルぅはぁーッ？　ナイナイなぁーーいッッ！！",YESNOCANCE,EXCLAMATION);
		}

		if(VariableValue($,$CoilName+"ON")){
			VariableValue($,$CoilName+"ON",false);

			$CoilDelete1=$CoilName+"_窓";
			$CoilDelete2=$CoilName+"_窓/マスク２";
			$CoilDelete3=$CoilName+"_窓/マスク２/ベース３";
			$CoilDelete4=$CoilName+"_窓/ベース";
			$CoilDelete5=$CoilName+"_ダウンロードプロセス";
		
			Request($CoilDelete5, Stop);
		
			Position($CoilDelete1,$X座,$Y座);
		
			Fade($CoilDelete3, 0, 0, null, false);
			Zoom($CoilDelete3, 0, 1000, 1000, Dxl2, false);
			Move($CoilDelete2, 0, $X座, $Y座, null, true);
		
		////////////////////////////////////////////////////////////////////////////
		//	CoilMove2(2,$CoilDelete,$CoilDeleteT,$CoilDeleteX,$CoilDeleteY,$CoilDeleteTempo,false);//3
			//絶対座標対策////////////////////
			$CoilNut=$CoilName+"_窓";
			Position($CoilNut,$X座標,$Y座標);
		
			$文字目X=Strstr($CoilDeleteX,"@");
			if(!$文字目X){
				$移動X=$CoilDeleteX-$X座標;
			}else{
				Message("デバッグ用","ここは絶対座標で指定",YESNOCANCE,EXCLAMATION);
		//		$文字数X=Strlen($移動X);
		//		$移動X=Substr($移動X,$文字目X,$文字数X);
			}
		
			$文字目Y=Strstr($CoilDeleteY,"@");
			if(!$文字目Y){
				$移動Y=$CoilDeleteY-$Y座標;
			}else{
				Message("デバッグ用","ここは絶対座標で指定",YESNOCANCE,EXCLAMATION);
		//		$文字数Y=Strlen($移動Y);
		//		$移動Y=Substr($移動Y,$文字目Y,$文字数Y);
			}
			//////////////////////////////////
		
			$CoilName1=$CoilName+"_*";
			$CoilName2=$CoilName+"_*/*";
			$CoilName3=$CoilName+"_*/*/*";
			$CoilName4=$CoilName+"_*/*/*/*";
		
			if($CoilAllDeleteCountPlus==1||$CoilAllDeleteCountPlus==4){
				$X_plus=0;$Y_plus=-100;
			}else if($CoilAllDeleteCountPlus==2){
				$X_plus=0;$Y_plus=100;
			}else if($CoilAllDeleteCountPlus==3){
				$X_plus=0;$Y_plus=0;
			}else{
				$X_plus=0;$Y_plus=100;
			}
			$CoilAllDeleteCountPlus++;

			$X1 = $移動X;
			$Y1 = $移動Y;
			$X2 = -$X1/3*2+$X_plus;
			$Y2 = -$Y1/3*2+$Y_plus;
			$X3 = 0+$X_plus;
			$Y3 = 0+$Y_plus;
		
			//////////////////////////////////
			BezierMove($CoilName4, $CoilDeleteT, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X1,@$Y1), Axl1, false);
			BezierMove($CoilName3, $CoilDeleteT, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X1,@$Y1), Axl1, false);
			BezierMove($CoilName2, $CoilDeleteT, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X1,@$Y1), Axl1, false);
			BezierMove($CoilName1, $CoilDeleteT, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X1,@$Y1), Axl1, false);
		
			Zoom($CoilDelete3, $CoilDeleteT1, 800, 800, Dxl1, false);
			Fade("coildelete_板", $CoilDeleteT3, 500, Axl1, false);//1
		
			Fade($CoilName4, $CoilDeleteT3, 0, null, false);//2
			Fade($CoilName3, $CoilDeleteT3, 0, null, false);//2
			Fade($CoilName2, $CoilDeleteT3, 0, null, false);//2
			Fade($CoilName1, $CoilDeleteT3, 0, null, false);//2
			Fade($CoilDelete3, $CoilDeleteT1, 1000, null, false);//2
			Wait($CoilDeleteT3);//1
		//	WaitKey();

			Request($CoilName4, Disused);
			Request($CoilName3, Disused);
			Request($CoilName2, Disused);
			Request($CoilName1, Disused);

			CoilIntoDelete();

			Zoom($CoilDelete3, $CoilDeleteT2, 500, 500, Dxl1, false);

			DrawTransition($CoilDelete3, $CoilDeleteT3, 1000, 0, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);//2
			Fade($CoilDelete3, $CoilDeleteT3, 0, null, false);//2


			Zoom("coildelete_効果", $CoilDeleteT, 500, 500, null, false);//3
			Fade("coildelete_効果", $CoilDeleteT2, 300, null, false);//2
		}

		$CoilAllDeleteCount++;
	}

	Zoom("coildelete_板", $CoilDeleteT2, 1050, 1050, Axl1, false);//2
//	DrawTransition("coildelete_板", $CoilDeleteT2, 0, 1000, 100, null, "cg/data/circle_02_00_1.png", false);//2
	Fade("coildelete_板", $CoilDeleteT2, 0, null, false);//2

	Rotate("coildelete_効果", 0, @0, @0, 90, null, false);
	Zoom("coildelete_効果", $CoilDeleteT, 500, 500, null, false);//3
	Fade("coildelete_効果", $CoilDeleteT2, 300, null, true);//2


	Fade("coildelete_効果", $CoilDeleteT1, 0, null, true);//1

	Request("coildelete_板", Disused);
	Request("coildelete_効果", Disused);
}



.■イドー
..▽セット
function CoilMove($CoilName,時間,$移動X,$移動Y,テンポ,待ち){
//★種類が増えるごとに追加必要★

	if($CoilName=="CoilNew"){
		$CoilName="coilnew";
		Fade("@coilnew_演出２", 100, 0, null, true);
	}else if($CoilName=="CoilMList"){
		$CoilName="coilmlist";
	}else if($CoilName=="CoilDown"){
		$CoilName="coildown";
	}else if($CoilName=="CoilPict"){
		$CoilName="coilpict";
	}else if($CoilName=="CoilMail"){
		$CoilName="coilmail";
	}else if($CoilName=="CoilMail2"){
		$CoilName="coilmail2";
	}else if($CoilName=="CoilPhone"){
		$CoilName="coilphone";
	}else if($CoilName=="CoilPhone2"){
		$CoilName="coilphone2";
	}else if($CoilName=="CoilRen"){
		$CoilName="coilren";
	}else{
		$CoilName="失敗した";
		Message("デバッグ用","そんな名前のコイルぅはぁーッ？　ナイナイなぁーーいッッ！！",YESNOCANCE,EXCLAMATION);
	}



	$CoilMoveMas=$CoilName+"_窓/ベース";
	WaitAction($CoilMoveMas, null);



	$文字目X=Strstr($移動X,"@");
	$文字目Y=Strstr($移動Y,"@");
	if(!$文字目X&&!$文字目Y){
		if($CoilName=="coilphone"){
			$CoilCallPro2X=$移動X;
			$CoilCallPro2Y_base=$移動Y-300;
			$CoilCallPro2Y=$移動Y+360;
			Move("@coilphone_call_演出色１", 0, -1000, 0, null, false);
			Move("@coilphone_call_演出色２", 0, -1000, 0, null, false);
		}else if($CoilName=="coilphone2"){
			$CoilCall2Pro2X=$移動X;
			$CoilCall2Pro2Y_base=$移動Y-300;
			$CoilCall2Pro2Y=$移動Y+360;
			Move("@coilphone2_call_演出色１", 0, -1000, 0, null, false);
			Move("@coilphone2_call_演出色２", 0, -1000, 0, null, false);
		}
	}

	//絶対座標対策////////////////////
	$CoilNut=$CoilName+"_窓";
	Position($CoilNut,$X座標,$Y座標);

	if(!$文字目X){
		$移動X=$移動X-$X座標;
		$移動X="@"+$移動X;
	}
	if(!$文字目Y){
		$移動Y=$移動Y-$Y座標;
		$移動Y="@"+$移動Y;
	}
	//////////////////////////////////

	$CoilName1=$CoilName+"_*";
	$CoilName2=$CoilName+"_*/*";
	$CoilName3=$CoilName+"_*/*/*";
	$CoilName4=$CoilName+"_*/*/*/*";

	$CoilSound++;
	$CoilSoundNut="coilsound_move"+$CoilSound;
	CreateSE($CoilSoundNut,"se物体_コイル_システム移動");
	MusicStart($CoilSoundNut,0,700,0,1000,null,false);

	Move($CoilName4, 時間, $移動X, $移動Y, テンポ, false);
	Move($CoilName3, 時間, $移動X, $移動Y, テンポ, false);
	Move($CoilName2, 時間, $移動X, $移動Y, テンポ, false);
	Move($CoilName1, 時間, $移動X, $移動Y, テンポ, 待ち);

	if(!$文字目X&&!$文字目Y){
		if($CoilName=="coilphone"){
			Move("@coilphone_call_演出色１", 0, $CoilCallPro2X, $CoilCallPro2Y, null, true);
			Move("@coilphone_call_演出色２", 0, $CoilCallPro2X, $CoilCallPro2Y, null, true);
		}else if($CoilName=="coilphone2"){
			Move("@coilphone2_call_演出色１", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y, null, true);
			Move("@coilphone2_call_演出色２", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y, null, true);
		}
	}

}

..▽セット
function CoilMove2($CoilPat,$CoilName,時間,$移動X,$移動Y,テンポ,待ち){
//★種類が増えるごとに追加必要★

	WaitAction("coil*/ベース", null);

	if($CoilName=="CoilNew"){
		$CoilName="coilnew";
		Fade("@coilnew_演出２", 100, 0, null, true);
	}else if($CoilName=="CoilMList"){
		$CoilName="coilmlist";
	}else if($CoilName=="CoilDown"){
		$CoilName="coildown";
	}else if($CoilName=="CoilPict"){
		$CoilName="coilpict";
	}else if($CoilName=="CoilMail"){
		$CoilName="coilmail";
	}else if($CoilName=="CoilMail2"){
		$CoilName="coilmail2";
	}else if($CoilName=="CoilPhone"){
		$CoilName="coilphone";
	}else if($CoilName=="CoilPhone2"){
		$CoilName="coilphone2";
	}else if($CoilName=="CoilRen"){
		$CoilName="coilren";
	}else{
		$CoilName="失敗した";
		Message("デバッグ用","そんな名前のコイルぅはぁーッ？　ナイナイなぁーーいッッ！！",YESNOCANCE,EXCLAMATION);
	}

	$CoilMoveMas=$CoilName+"_窓/ベース";
	WaitAction($CoilMoveMas, null);


	$文字目X=Strstr($移動X,"@");
	$文字目Y=Strstr($移動Y,"@");
	if(!$文字目X&&!$文字目Y){
		if($CoilName=="coilphone"){
			$CoilCallPro2X=$移動X;
			$CoilCallPro2Y_base=$移動Y-300;
			$CoilCallPro2Y=$移動Y+360;
			Move("@coilphone_call_演出色１", 0, -1000, 0, null, false);
			Move("@coilphone_call_演出色２", 0, -1000, 0, null, false);
		}else if($CoilName=="coilphone2"){
			$CoilCall2Pro2X=$移動X;
			$CoilCall2Pro2Y_base=$移動Y-300;
			$CoilCall2Pro2Y=$移動Y+360;
			Move("@coilphone2_call_演出色１", 0, -1000, 0, null, false);
			Move("@coilphone2_call_演出色２", 0, -1000, 0, null, false);
		}
	}

	//絶対座標対策////////////////////
	$CoilNut=$CoilName+"_窓";
	Position($CoilNut,$X座標,$Y座標);

	if(!$文字目X){
		$移動X=$移動X-$X座標;
	}else{
//		$文字数X=Strlen($移動X);
//		$移動X=Substr($移動X,$文字目X,$文字数X);
	}

	if(!$文字目Y){
		$移動Y=$移動Y-$Y座標;
	}else{
//		$文字数Y=Strlen($移動Y);
//		$移動Y=Substr($移動Y,$文字目Y,$文字数Y);
	}
	//////////////////////////////////

	$CoilName1=$CoilName+"_*";
	$CoilName2=$CoilName+"_*/*";
	$CoilName3=$CoilName+"_*/*/*";
	$CoilName4=$CoilName+"_*/*/*/*";

	$CoilSound++;
	$CoilSoundNut="coilsound_move"+$CoilSound;
	CreateSE($CoilSoundNut,"se物体_コイル_システム移動");
	MusicStart($CoilSoundNut,0,700,0,1000,null,false);

	if($CoilPat==1){
		$X1 = $移動X;
		$X2 = ($X1 / 5) * 6;
		$Y1 = $移動Y;
		$Y2 = ($Y1 / 5) * 6;
	
		BezierMove($CoilName4, 時間, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), テンポ, false);
		BezierMove($CoilName3, 時間, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), テンポ, false);
		BezierMove($CoilName2, 時間, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), テンポ, false);
		BezierMove($CoilName1, 時間, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), テンポ, 待ち);
	}else if($CoilPat==2){
		$X1 = $移動X;
		$X2 = - $X1 / 4;
		$Y1 = $移動Y;
		$Y2 = - $Y1 / 4;
	
		BezierMove($CoilName4, 時間, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), テンポ, false);
		BezierMove($CoilName3, 時間, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), テンポ, false);
		BezierMove($CoilName2, 時間, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), テンポ, false);
		BezierMove($CoilName1, 時間, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), テンポ, 待ち);
	}else{
		Message("デバッグ用","ソンナ移動はッッ、聞いたことがナイッ！",YESNOCANCE,EXCLAMATION);
	}

	if(!$文字目X&&!$文字目Y){
		if($CoilName=="coilphone"){
			Move("@coilphone_call_演出色１", 0, $CoilCallPro2X, $CoilCallPro2Y, null, true);
			Move("@coilphone_call_演出色２", 0, $CoilCallPro2X, $CoilCallPro2Y, null, true);
		}else if($CoilName=="coilphone2"){
			Move("@coilphone2_call_演出色１", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y, null, true);
			Move("@coilphone2_call_演出色２", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y, null, true);
		}
	}
}



.■コイル起動エフェクト
..▽セット
function CoilStartSet(){

	CreateEffect("coilstart_板",9999,0,0,1024,576,"Plain");
	SetAlias("coilstart_板", "coilstart_板");
	Request("coilstart_板", Passive);
	SetShade("coilstart_板", MEDIUM);
	Fade("coilstart_板", 0, 0, null, false);

	CreateTexture("coilstart_色１", 9999, 0, 0, "cg/sys/coil/コイル出現.png");
	SetAlias("coilstart_色１", "coilstart_色１");
	Fade("coilstart_色１", 0, 0, null, false);
	Request("coilstart_色１", AddRender);

	CreateColor("coilstart_色２", 9999, 0, 576, 1024, 50, "41a4ae");//WHITE
	SetAlias("coilstart_色２", "coilstart_色２");
	Fade("coilstart_色２", 0, 0, null, false);
	Request("coilstart_色２", AddRender);

	CreateColor("coilstart_色３", 9999, 0, 776, 1024, 80, "41a4ae");//WHITE
	SetAlias("coilstart_色３", "coilstart_色３");
	Fade("coilstart_色３", 0, 0, null, false);
	Request("coilstart_色３", AddRender);

//	CreateColor("coilstart_色４", 9999, 0, 676, 1024, 10, "WHITE");//WHITE
//	SetAlias("coilstart_色４", "coilstart_色４");
//	Fade("coilstart_色４", 0, 0, null, false);
//	Request("coilstart_色４", AddRender);

	CreateColor("coilstart_色５", 9999, 0, 876, 1024, 10, "WHITE");//WHITE
	SetAlias("coilstart_色５", "coilstart_色５");
	Fade("coilstart_色５", 0, 0, null, false);
	Request("coilstart_色５", AddRender);


	$SYSTEM_effect_rain_speed = 64;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("coilstart_演出", 9999, Center, Middle, 512, 288, "Rain");
	SetAlias("coilstart_演出","coilstart_演出");
	Fade("coilstart_演出", 0, 0, null, false);
	Request("coilstart_演出", AddRender);
	Zoom("coilstart_演出", 0, 2000, 2000, null, false);
	Rotate("coilstart_演出", 0, @0, @0, 180, null, true);

	CreateSE("coilsound_start","se物体_コイル_システム展開");
}

..▽表示
function CoilStartFade(){
	MusicStart("coilsound_start",0,700,0,1000,null,false);

	CoilIntoFade();

	Fade("coilstart_板", 150, 500, null, false);
	Zoom("coilstart_板", 800, 1100, 1100, Dxl1, false);

	Fade("coilstart_色２", 0, 200, null, false);
	Fade("coilstart_色３", 0, 300, null, false);
//	Fade("coilstart_色４", 0, 200, null, false);
	Fade("coilstart_色５", 0, 500, null, false);

	Fade("coilstart_演出", 150, 1000, null, false);

	Fade("coilstart_色１", 0, 300, null, false);
	DrawTransition("coilstart_色１", 150, 0, 500, 500, null, "cg/data/slide_02_01_1.png", false);
	Wait(150);
//	WaitKey();

	Fade("coilstart_板", 500, 0, null, false);
//	Zoom("coilstart_板", 150, 1100, 1100, Dxl1, false);

	Move("coilstart_色５", 500, @0, 0, null, false);
//	Move("coilstart_色４", 400, @0, 0, null, false);
	Move("coilstart_色３", 400, @0, -100, null, false);
	Move("coilstart_色２", 400, @0, -100, null, false);

	Fade("coilstart_演出", 300, 0, null, false);

	Fade("coilstart_色５", 500, 0, null, false);
//	Fade("coilstart_色４", 500, 0, null, false);
	Fade("coilstart_色３", 500, 0, null, false);
	Fade("coilstart_色２", 500, 0, null, false);
	Fade("coilstart_色１", 500, 0, null, false);
	DrawTransition("coilstart_色１", 500, 500, 0, 500, Dxl3, "cg/data/slide_02_01_1.png", false);

	Request("coilstart_板", Disused);
	Request("coilstart_色１", Disused);
	Request("coilstart_色２", Disused);
	Request("coilstart_色３", Disused);
	Request("coilstart_色４", Disused);
	Request("coilstart_色５", Disused);
	Request("coilstart_演出", Disused);
}

function CoilStartFade2(){
//	MusicStart("coilsound_start",0,700,0,1000,null,false);

	CoilIntoFade();

	Fade("coilstart_板", 150, 500, null, false);
	Zoom("coilstart_板", 800, 1100, 1100, Dxl1, false);

	Fade("coilstart_色２", 0, 200, null, false);
	Fade("coilstart_色３", 0, 300, null, false);
//	Fade("coilstart_色４", 0, 200, null, false);
	Fade("coilstart_色５", 0, 500, null, false);

	Fade("coilstart_演出", 150, 1000, null, false);

	Fade("coilstart_色１", 0, 300, null, false);
	DrawTransition("coilstart_色１", 150, 0, 500, 500, null, "cg/data/slide_02_01_1.png", false);
	Wait(150);
//	WaitKey();

	Fade("coilstart_板", 500, 0, null, false);
//	Zoom("coilstart_板", 150, 1100, 1100, Dxl1, false);

	Move("coilstart_色５", 500, @0, 0, null, false);
//	Move("coilstart_色４", 400, @0, 0, null, false);
	Move("coilstart_色３", 400, @0, -100, null, false);
	Move("coilstart_色２", 400, @0, -100, null, false);

	Fade("coilstart_演出", 300, 0, null, false);

	Fade("coilstart_色５", 500, 0, null, false);
//	Fade("coilstart_色４", 500, 0, null, false);
	Fade("coilstart_色３", 500, 0, null, false);
	Fade("coilstart_色２", 500, 0, null, false);
	Fade("coilstart_色１", 500, 0, null, false);
	DrawTransition("coilstart_色１", 500, 500, 0, 500, Dxl3, "cg/data/slide_02_01_1.png", false);

	Request("coilstart_板", Disused);
	Request("coilstart_色１", Disused);
	Request("coilstart_色２", Disused);
	Request("coilstart_色３", Disused);
	Request("coilstart_色４", Disused);
	Request("coilstart_色５", Disused);
	Request("coilstart_演出", Disused);
}

function CoilStartFade_other(){
	Fade("coilstart_色２", 150, 200, null, false);
	Fade("coilstart_色１", 0, 1000, null, false);
	DrawTransition("coilstart_色１", 150, 0, 200, 500, null, "cg/data/slide_02_01_1.png", true);

	Fade("coilstart_色２", 500, 0, null, false);
	Fade("coilstart_色１", 800, 0, null, false);
	DrawTransition("coilstart_色１", 800, 200, 0, 500, Dxl1, "cg/data/slide_02_01_1.png", false);
}




.■コイル継続エフェクト
..▽セット
function CoilIntoSet(){

	CreateTexture("coilinto_色０", 9999, 0, 106, "cg/sys/coil/コイル出現2.png");
	SetAlias("coilinto_色０", "coilinto_色０");
	Fade("coilinto_色０", 0, 0, null, false);
	Request("coilinto_色０", AddRender);
	SetVertex("coilinto_色０", 768, 470);

	CreateTexture("coilinto_色１", 9999, -1000, 106, "cg/sys/coil/コイル出現2.png");
	SetAlias("coilinto_色１", "coilinto_色１");
	Fade("coilinto_色１", 0, 0, null, false);
	Request("coilinto_色１", AddRender);
	SetVertex("coilinto_色１", 768, 470);


	CreateColor("coilinto_色２", 9999, 0, 576, 1024, 20, "41a4ae");//WHITE
	SetAlias("coilinto_色２", "coilinto_色２");
	Fade("coilinto_色２", 0, 0, null, false);
	Request("coilinto_色２", AddRender);

	CreateColor("coilinto_色３", 9999, 0, 776, 1024, 20, "WHITE");//WHITE
	SetAlias("coilinto_色３", "coilinto_色３");
	Fade("coilinto_色３", 0, 0, null, false);
	Request("coilinto_色３", AddRender);

	CreateColor("coilinto_色４", 9999, 0, 576, 1024, 10, "41a4ae");//WHITE
	SetAlias("coilinto_色４", "coilinto_色４");
	Fade("coilinto_色４", 0, 0, null, false);
	Request("coilinto_色４", AddRender);

	CreateColor("coilinto_色５", 9999, 0, 676, 1024, 10, "WHITE");//WHITE
	SetAlias("coilinto_色５", "coilinto_色５");
	Fade("coilinto_色５", 0, 0, null, false);
	Request("coilinto_色５", AddRender);


	CreateColor("coilinto_終１", 19999, 0, -100, 1024, 50, "41a4ae");//WHITE
	SetAlias("coilinto_終１", "coilinto_終１");
	Fade("coilinto_終１", 0, 0, null, false);
	Request("coilinto_終１", AddRender);

	CreateColor("coilinto_終２", 19999, 0, -100, 1024, 80, "41a4ae");//WHITE
	SetAlias("coilinto_終２", "coilinto_終２");
	Fade("coilinto_終２", 0, 0, null, false);
	Request("coilinto_終２", AddRender);


	CreateProcess("coilinto_プロセス１", 150, 0, 0, "CoilIntoPro01");
	SetAlias("coilinto_プロセス１", "coilinto_プロセス１");

	CreateProcess("coilinto_プロセス２", 150, 0, 0, "CoilIntoPro02");
	SetAlias("coilinto_プロセス２", "coilinto_プロセス２");
}

..▽表示
function CoilIntoFade(){
	Request("coilinto_プロセス１", Start);
	Request("coilinto_プロセス２", Start);

	Request("coilinto_プロセス１", Disused);
	Request("coilinto_プロセス２", Disused);
}

..▽マクロ
function CoilIntoPro01(){

	while(1){
		Move("@coilinto_色０", 0, 0, @0, null, false);
		Move("@coilinto_色１", 0, -400, @0, null, true);

		Zoom("@coilinto_色０", 6500, 1000, 1000, null, false);
		Zoom("@coilinto_色１", 6500, 1000, 500, null, false);

		Move("@coilinto_色０", 50000, -500, @0, null, false);
		Move("@coilinto_色１", 50000, -100, @0, null, false);

		Fade("@coilinto_色０", 500, 200, null, false);
		Fade("@coilinto_色１", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 1000, 0, null, false);
		Fade("@coilinto_色１", 1000, 100, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 500, 200, null, false);
		Fade("@coilinto_色１", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 1000, 0, null, false);
		Fade("@coilinto_色１", 1000, 100, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 500, 200, null, false);
		Fade("@coilinto_色１", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 1000, 0, null, false);
		Fade("@coilinto_色１", 1000, 0, null, false);
		Wait(1000);

		////////////////////////////////////////////////////////////
		Move("@coilinto_色０", 0, -500, @0, null, false);
		Move("@coilinto_色１", 0, -100, @0, null, true);

		Zoom("@coilinto_色０", 6500, 1000, 500, null, false);
		Zoom("@coilinto_色１", 6500, 1000, 1000, null, false);

		Move("@coilinto_色０", 50000, 0, @0, null, false);
		Move("@coilinto_色１", 50000, -400, @0, null, false);

		Fade("@coilinto_色０", 500, 200, null, false);
		Fade("@coilinto_色１", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 1000, 0, null, false);
		Fade("@coilinto_色１", 1000, 100, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 500, 200, null, false);
		Fade("@coilinto_色１", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 1000, 0, null, false);
		Fade("@coilinto_色１", 1000, 100, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 500, 200, null, false);
		Fade("@coilinto_色１", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_色０", 1000, 0, null, false);
		Fade("@coilinto_色１", 1000, 0, null, false);
		Wait(1000);
	}
}

function CoilIntoPro02(){

	Wait(1000);

	while(1){
		$CoilRan03=Random(5);
		$CoilRan03=2000+($CoilRan03*500);
		Wait($CoilRan03);


		Rotate("@coilinto_色２", 0, 0, 0, 0, null, false);
		Rotate("@coilinto_色３", 0, 0, 0, 0, null, false);
		Move("@coilinto_色２", 0, @0, 576, null, false);
		Move("@coilinto_色３", 0, @0, 776, null, false);
		Fade("@coilinto_色２", 0, 200, null, false);
		Fade("@coilinto_色３", 0, 400, null, true);

		Rotate("@coilinto_色４", 0, 0, 0, 0, null, false);
		Rotate("@coilinto_色５", 0, 0, 0, 0, null, false);
		Move("@coilinto_色４", 0, @0, 576, null, false);
		Move("@coilinto_色５", 0, @0, 676, null, false);
		Fade("@coilinto_色４", 0, 300, null, false);
		Fade("@coilinto_色５", 0, 600, null, true);
		////////////////////////////////////////////////////////////


		$CoilRan02=Random(3);
		if($CoilRan02==2){
			$CoilIntoSpeed01=300;
			$CoilIntoSpeed02=290;
		}else if($CoilRan02==1){
			$CoilIntoSpeed01=200;
			$CoilIntoSpeed02=190;
		}else{
			$CoilIntoSpeed01=100;
			$CoilIntoSpeed02=90;
		}

		$CoilRan01=Random(2);
		if($CoilRan01==1){
			Rotate("@coilinto_色２", 600, @1080, @0, @0, null, false);
			Rotate("@coilinto_色３", 600, @720, @0, @0, null, false);
			Fade("@coilinto_色２", 600, 0, null, false);
			Fade("@coilinto_色３", 600, 0, null, false);
			Move("@coilinto_色２", 600, @0, 250, null, false);
			Move("@coilinto_色３", 600, @0, 240, null, false);
		}
		Rotate("@coilinto_色４", 600, @1080, @0, @0, null, false);
		Rotate("@coilinto_色５", 600, @720, @0, @0, null, false);
		Fade("@coilinto_色４", 600, 0, null, false);
		Fade("@coilinto_色５", 600, 0, null, false);
		Move("@coilinto_色４", 600, @0, $CoilIntoSpeed01, null, false);
		Move("@coilinto_色５", 600, @0, $CoilIntoSpeed02, null, true);
	}
}

..▽消去
function CoilIntoDelete(){
//★種類が増えるごとに追加必要★
	if(!$coildownON&&!$coilnewON&&!$coilpictON&&!$coilmailON&&!$coilmail2ON&&!$coilmlistON&&!$coilphoneON&&!$coilphone2ON&&!$coilintoON&&!$coildownpriON&&!$coilrenON){

		Request("@coilinto_プロセス１", Stop);
		Request("@coilinto_プロセス２", Stop);
//		WaitAction("@coilinto_プロセス１", null);
//		WaitAction("@coilinto_プロセス２", null);

		Fade("coilinto_終１", 400, 100, null, false);
		Fade("coilinto_終２", 400, 200, null, false);
		Move("coilinto_終１", 300, @0, 776, null, false);
		Move("coilinto_終２", 300, @0, 576, null, false);

		Move("@coilinto_色*", 500, @0, 476, null, false);

		Fade("@coilinto_色*", 300, 0, null, false);
		Fade("@coilinto_色０", 500, 1000, null, false);
		Fade("@coilinto_色１", 500, 1000, null, false);
		Request("@coilinto*", Disused);

		Delete("@coilstart_演出");

		$SYSTEM_full_scene_update=false;
	}

	$coilintoON=false;
}
















.■メール受信
..▽メール受信セット（10800）
function CoilNewSet($coilnewX, $coilnewY){
//382
//103
	CreateWindow("coilnew_窓", 20000, $coilnewX, $coilnewY, 260, 576, false);
	SetAlias("coilnew_窓", "coilnew_窓");

	CreateTexture("coilnew_窓/ベース", 10800, $coilnewX, $coilnewY, "cg/sys/coil/mail/コイルメール_着信.png");//10000
	SetAlias("coilnew_窓/ベース", "coilnew_ベース");
	CreateTexture("coilnew_窓/ベース２", 10809, $coilnewX, $coilnewY, "cg/sys/coil/mail/コイルメール_着信.png");//10500
	SetAlias("coilnew_窓/ベース２", "coilnew_ベース２");
	SetTone("coilnew_窓/ベース２", Monochrome);

	CreateTexture("coilnew_窓/黒", 10809, $coilnewX, $coilnewY, "cg/sys/coil/mail/コイルメール_着信_黒.png");//10500
	SetAlias("coilnew_窓/黒", "coilnew_黒");
	Fade("coilnew_窓/黒", 0, 0, null, true);


	CreateTexture("coilnew_窓/演出１", 10800, $coilnewX, $coilnewY, "cg/sys/coil/mail/コイルメール_着信演出3.png");//10100
	SetAlias("coilnew_窓/演出１", "coilnew_演出１");
	Request("coilnew_窓/演出１", AddRender);
	CreateTexture("coilnew_窓/演出２", 10800, $coilnewX, $coilnewY, "cg/sys/coil/mail/コイルメール_着信演出2.png");//10100
	SetAlias("coilnew_窓/演出２", "coilnew_演出２");
	Request("coilnew_窓/演出２", OverlayRender);

	CreateMask("coilnew_窓/マスク２", 200, $coilnewX, $coilnewY, "cg/sys/coil/mail/コイル演出トランジ.png", false);
	SetAlias("coilnew_窓/マスク２", "coilnew_窓/マスク２");
	CreateTexture("coilnew_窓/マスク２/ベース３", 10800, $coilnewX, $coilnewY, "cg/sys/coil/mail/コイルメール_着信.png");//10100
	SetAlias("coilnew_窓/マスク２/ベース３", "coilnew_ベース３");
	Request("coilnew_窓/マスク２/ベース３", AddRender);

	$coilnewX4=$coilnewX-20;
	$coilnewY4=$coilnewY-8;
	CreateTexture("coilnew_演出", 10805, $coilnewX4, $coilnewY4, "cg/sys/coil/mail/コイル演出.png");//10130
	SetAlias("coilnew_演出", "coilnew_演出");
	Request("coilnew_演出", AddRender);
	Fade("coilnew_演出", 0, 0, null, true);
	Zoom("coilnew_演出", 0, 1000, 0, Dxl1, true);

	CreateTexture("coilnew_消去", 10805, $coilnewX, $coilnewY, "cg/sys/coil/mail/コイルメール_着信演出.png");//10130
	SetAlias("coilnew_消去", "coilnew_消去");
	Request("coilnew_消去", AddRender);
	Fade("coilnew_消去", 0, 0, null, true);
	SetVertex("coilnew_消去", 130, 0);
	Zoom("coilnew_消去", 0, 1200, 1000, null, false);


	CreateProcess("coilnew_ダウンロードプロセス", 150, 0, 0, "CoilNewPro");
	SetAlias("coilnew_ダウンロードプロセス", "coilnew_ダウンロードプロセス");

	Move("coilnew_窓/*", 0, @0, @-207, Dxl1, false);
	Move("coilnew_窓/*/*", 0, @0, @-207, Dxl1, true);

	Fade("@coilnew_ベース３", 0, 0, null, false);
	Fade("coilnew_窓/ベース", 0, 750, null, true);

	SetVertex("@coilnew_ベース", 130, 0);
	Zoom("@coilnew_ベース", 0, 1000, 0, null, true);

	CreateSE("coilsound_new1","se物体_コイル_システムオープン");
	CreateSE("coilsound_new2","se物体_コイル_システムクローズ");
}


..▽メール受信表示
function CoilNewFade(){
	MusicStart("coilsound_new1",0,700,0,1000,null,false);

	Zoom("@coilnew_ベース", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilnew_演出*", 800, 0, null, false);

	Fade("coilnew_演出", 0, 350, null, false);
	Zoom("coilnew_演出", 200, 1500, 200, null, false);

	Fade("coilnew_窓/ベース２", 300, 500, null, false);
	Fade("coilnew_窓/ベース", 300, 1000, null, false);
	Move("coilnew_窓/*/*", 300, @0, @36, Dxl1, false);
	Move("coilnew_窓/*", 300, @0, @36, Dxl1, true);


//	WaitKey();
	$coilnewON=true;
	CoilBlack();

	Fade("coilnew_演出", 0, 1000, null, true);

	Fade("coilnew_窓/ベース", 200, 1000, null, false);
	Fade("coilnew_窓/ベース２", 200, 0, null, false);
	Fade("@coilnew_ベース３", 200, 1000, null, false);

	Fade("coilnew_演出", 400, 0, Axl2, false);
	Zoom("coilnew_演出", 200, 1000, 1000, null, false);

	Move("coilnew_窓/*/*", 500, @0, @171, Dxl1, false);
	Move("coilnew_窓/*", 500, @0, @171, Dxl1, false);

	Move("coilnew_窓/マスク２", 500, @0, @-205, null, false);

	Zoom("@coilnew_ベース３", 500, 1000, 1200, Axl1, false);

	Request("coilnew_ダウンロードプロセス", Start);
}


..▽メール受信プロセス
function CoilNewPro(){
	WaitAction("@coilnew_窓/*", null);

	while(1){
		Position("@coilnew_窓",$CoilNewX座標,$CoilNewY座標);
		$CoilNewX座標2=$CoilNewX座標-30;

		Zoom("@coilnew_演出２", 0, 1000, 1000, null, true);
		Move("@coilnew_演出２", 0, $CoilNewX座標2, $CoilNewY座標, null, true);

		Move("@coilnew_演出２", 500, $CoilNewX座標, $CoilNewY座標, null, false);
		Fade("@coilnew_演出２", 500, 750, Dxl1, false);
		Fade("@coilnew_演出１", 700, 400, Axl1, true);

		Fade("@coilnew_演出２", 300, 0, null, false);
		Fade("@coilnew_演出１", 400, 32, null, true);
	}
}


..▽メール受信フェード消し
function CoilNewDelete(){

	Request("coilnew_ダウンロードプロセス", Stop);
	WaitAction("coilnew_ダウンロードプロセス", null);

	$coilnewON=false;
	CoilBlack();

	MusicStart("coilsound_new2",0,700,0,1000,null,false);

	Move("coilnew_窓/マスク２", 0, @0, @203, null, true);
	Zoom("@coilnew_ベース３", 0, 1000, 1000, null, true);

	Fade("@coilnew_演出*", 0, 0, null, false);
	Fade("@coilnew_ベース３", 0, 1000, null, false);

	Zoom("coilnew_演出", 0, 1500, 300, null, false);
	Fade("coilnew_演出", 0, 250, null, true);

//	WaitKey();

	Zoom("coilnew_消去", 500, 1100, 0, null, false);
	Fade("coilnew_消去", 500, 1000, Dxl3, false);

	Fade("coilnew_演出", 300, 1000, null, false);
	Zoom("coilnew_演出", 400, 750, 0, Axl1, false);

//	Zoom("@coilnew_ベース３", 50, 1000, 1500, null, false);
	Fade("@coilnew_ベース３", 50, 0, null, false);
	Fade("@coilnew_ベース", 500, 500, null, false);

	Move("coilnew_窓/*/*", 500, @0, @-207, Dxl1, false);
	Move("coilnew_窓/*", 500, @0, @-207, Dxl1, false);

	Zoom("@coilnew_ベース２", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilnew_ベース", 500, 1000, 750, AxlAuto, false);

//	Fade("coilnew_演出", 400, 0, Axl3, false);
//	Rotate("coilnew_演出", 400, @-90, @0, @0, Axl3, false);


	Delete("coilnew_ダウンロードプロセス");
	Request("coilnew_窓/*/*", Disused);
	Request("coilnew_窓/*", Disused);
	Request("coilnew_演出", Disused);
}














.■メール一覧
..▽メール一覧１件追加（10100）
function CoilMailAdd($CoilMail番号,$CoilMail人物,$CoilMail件名,$CoilMail添付,$CoilMail開封){

	$TempCoilMail=1;
	while($CoilMailCount>=$TempCoilMail){
		if(VariableValue($,"CoilMail番号"+$TempCoilMail)==$CoilMail番号){
			return;
		}
		$TempCoilMail++;
	}

	$CoilMailAll++;
	$CoilMailCount++;

	VariableValue($,$CoilMail番号+"_num",$CoilMailCount);

	VariableValue($,$CoilMail番号+"_人物",$CoilMail人物);
	VariableValue($,$CoilMail番号+"_件名",$CoilMail件名);
	VariableValue($,$CoilMail番号+"_添付",$CoilMail添付);
	VariableValue($,$CoilMail番号+"_開封",$CoilMail開封);

	VariableValue($,"CoilMail人物"+$CoilMailCount,$CoilMail人物);
	VariableValue($,"CoilMail件名"+$CoilMailCount,$CoilMail件名);
	VariableValue($,"CoilMail添付"+$CoilMailCount,$CoilMail添付);
	VariableValue($,"CoilMail開封"+$CoilMailCount,$CoilMail開封);
	VariableValue($,"CoilMail番号"+$CoilMailCount,$CoilMail番号);
}

..▽メール一覧１件削除（10100）
function CoilMailSub($CoilMail番号){
	$TempCoilMailOK=false;

	$TempCoilMail=1;
	while($CoilMailCount>=$TempCoilMail){
		if(VariableValue($,"CoilMail番号"+$TempCoilMail)==$CoilMail番号){
			$TempCoilMailOK=true;
			break;
		}
		$TempCoilMail++;
	}
	if(!$TempCoilMailOK){
		return;
	}

	//Message("デバッグ用ウィンドウ","デバッグ用です",YESNOCANCE,EXCLAMATION);

	$TempCoilMailCount1=VariableValue($,$CoilMail番号+"_num");
	$TempCoilMailCount2=$TempCoilMailCount1+1;

	$CoilMailCount--;
	while($CoilMailCount>=$TempCoilMailCount1){
		$CoilMail人物=VariableValue($,"CoilMail人物"+$TempCoilMailCount2);
		$CoilMail件名=VariableValue($,"CoilMail件名"+$TempCoilMailCount2);
		$CoilMail添付=VariableValue($,"CoilMail添付"+$TempCoilMailCount2);
		$CoilMail開封=VariableValue($,"CoilMail開封"+$TempCoilMailCount2);
		$CoilMail番号=VariableValue($,"CoilMail番号"+$TempCoilMailCount2);

		VariableValue($,$CoilMail番号+"_num",$TempCoilMailCount1);

		VariableValue($,"CoilMail人物"+$TempCoilMailCount1,$CoilMail人物);
		VariableValue($,"CoilMail件名"+$TempCoilMailCount1,$CoilMail件名);
		VariableValue($,"CoilMail添付"+$TempCoilMailCount1,$CoilMail添付);
		VariableValue($,"CoilMail開封"+$TempCoilMailCount1,$CoilMail開封);
		VariableValue($,"CoilMail番号"+$TempCoilMailCount1,$CoilMail番号);

		$TempCoilMailCount1++;
		$TempCoilMailCount2++;
	}
}


..▽メール一覧セット
function CoilMListSet($coilmlistX, $coilmlistY){
//382
//103

	$CoilMailNow=$CoilMailCount;

	CreateWindow("coilmlist_窓", 20000, $coilmlistX, $coilmlistY, 336, 302, false);
	SetAlias("coilmlist_窓", "coilmlist_窓");

	CreateTexture("coilmlist_窓/ベース", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_一覧枠.png");//10000
	SetAlias("coilmlist_窓/ベース", "coilmlist_ベース");
	CreateTexture("coilmlist_窓/ベース２", 10109, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_一覧枠.png");//10500
	SetAlias("coilmlist_窓/ベース２", "coilmlist_ベース２");
	SetTone("coilmlist_窓/ベース２", Monochrome);

	CreateTexture("coilmlist_窓/黒", 10109, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_一覧枠_黒.png");//10500
	SetAlias("coilmlist_窓/黒", "coilmlist_黒");
	Fade("coilmlist_窓/黒", 0, 0, null, true);

//	CreateTexture("coilmlist_窓/演出１", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_着信演出3.png");
//	SetAlias("coilmlist_窓/演出１", "coilmlist_演出１");
//	Request("coilmlist_窓/演出１", AddRender);
//	CreateTexture("coilmlist_窓/演出２", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_着信演出2.png");
//	SetAlias("coilmlist_窓/演出２", "coilmlist_演出２");
//	Request("coilmlist_窓/演出２", OverlayRender);

	CreateMask("coilmlist_窓/マスク２", 200, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイル演出トランジ2.png", false);
	SetAlias("coilmlist_窓/マスク２", "coilmlist_窓/マスク２");
	CreateTexture("coilmlist_窓/マスク２/ベース３", 10105, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_一覧枠.png");//10100
	SetAlias("coilmlist_窓/マスク２/ベース３", "coilmlist_ベース３");
	Request("coilmlist_窓/マスク２/ベース３", AddRender);

	$coilmlistX6=$coilmlistX+21;
	$coilmlistY6=$coilmlistY+28;
	CreateWindow("coilmlist_窓/coilmlist_欄", 20000, $coilmlistX6, $coilmlistY6, 298, 249, false);
	SetAlias("coilmlist_窓/coilmlist_欄", "coilmlist_欄");

	$coilmlistX7=$coilmlistX;
	$coilmlistY7=$coilmlistY+300;
	CreateTexture("coilmlist_窓/coilmlist_欄/coilmlist_選択", 10100, $coilmlistX7, $coilmlistY7, "cg/sys/coil/mail/コイルメール_一覧セレクト.png");//10010
	SetAlias("coilmlist_窓/coilmlist_欄/coilmlist_選択", "coilmlist_選択");
	Request("coilmlist_窓/coilmlist_欄/coilmlist_選択", AddRender);
	Fade("coilmlist_窓/coilmlist_欄/coilmlist_選択", 0, 0, null, true);

/*
	CreateTexture("coilmlist_窓/coilmlist_欄/coilmlist_決定", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_一覧エンター.png");//10010
	SetAlias("coilmlist_窓/coilmlist_欄/coilmlist_決定", "coilmlist_決定");
//	Request("coilmlist_窓/coilmlist_欄/coilmlist_決定", AddRender);
	Fade("coilmlist_窓/coilmlist_欄/coilmlist_決定", 0, 0, null, true);

	CreateTexture("coilmlist_窓/coilmlist_欄/coilmlist_決定２", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_一覧エンター.png");//10010
	SetAlias("coilmlist_窓/coilmlist_欄/coilmlist_決定２", "coilmlist_決定２");
	Request("coilmlist_窓/coilmlist_欄/coilmlist_決定２", AddRender);
	Fade("coilmlist_窓/coilmlist_欄/coilmlist_決定２", 0, 0, null, true);
*/

	$CoilPreX=$coilmlistX;
	$CoilPreY=$coilmlistY;

	$CoilTemp=$CoilMailCount;
	while(0<$CoilTemp){

		$CoilTempNum=VariableValue($,"CoilMail番号"+$CoilTemp);

		//▽超えちゃいけないライン
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+28;
		$coiltempnut="coilmlist_窓/coilmlist_欄/チェック"+$CoilTempNum;
		CreateTexture($coiltempnut, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/コイルメール_一覧表示.png");//10090
		SetAlias($coiltempnut, $coiltempnut);

		//▽件名
		SetFont("ＭＳ ゴシック", 16, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+61;
		$coiltempY=$CoilPreY+26;
		$coiltempnut2="coilmlist_窓/coilmlist_欄/テキスト窓"+$CoilTempNum;
		CreateWindow($coiltempnut2, 10101, $coiltempX, $coiltempY, 182, 50, false);//10090//170
		SetAlias($coiltempnut2, $coiltempnut2);

		$coiltempnut=$coiltempnut2+"/件名"+$CoilTempNum;
		$coiltempimg=VariableValue($,"CoilMail件名"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilMail件名"+$CoilTemp));
		CreateText($coiltempnut, 10101, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut, $coiltempnut);
//		SetVertex($coiltempnut, 1, 1);
		Request($coiltempnut, NoLog);


		//▽人物
		SetFont("ＭＳ ゴシック", 10, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+61;
		$coiltempY=$CoilPreY+47;
		$coiltempnut="coilmlist_窓/coilmlist_欄/人物"+$CoilTempNum;
		$coiltempimg=VariableValue($,"CoilMail人物"+$CoilTemp);
		CreateText($coiltempnut, 10101, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut, $coiltempnut);
//		SetVertex($coiltempnut, 0, 0);
		Request($coiltempnut, NoLog);

		//▽開封
		$coiltempX=$CoilPreX+260;
		$coiltempY=$CoilPreY+28;
		$coiltempnut="coilmlist_窓/coilmlist_欄/開封"+$CoilTempNum;

		if(VariableValue($,"CoilMail開封"+$CoilTemp)){
			$coiltempimg="cg/sys/coil/mail/コイルメール_一覧未解読アイコン.png";
		}else{
			$coiltempimg="cg/sys/coil/mail/コイルメール_一覧解読アイコン.png";
		}
		CreateTexture($coiltempnut, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
		SetAlias($coiltempnut, $coiltempnut);

		//▽添付
		$coiltempX=$CoilPreX+287;
		$coiltempY=$CoilPreY+33;
		$coiltempnut="coilmlist_窓/coilmlist_欄/添付"+$CoilTempNum;

		if(VariableValue($,"CoilMail添付"+$CoilTemp)){
			$coiltempimg="cg/sys/coil/mail/コイルメール_一覧テンプアイコン.png";
			CreateTexture($coiltempnut, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
			SetAlias($coiltempnut, $coiltempnut);
		}


		$CoilPreY+=42;
		$CoilTemp--;
	}
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilmlist_窓/coilmlist_欄/*", PushText);
	Request("coilmlist_窓/coilmlist_欄/*/*", PushText);


	$coilmlistX4=$coilmlistX-20;
	$coilmlistY4=$coilmlistY-8;
	CreateTexture("coilmlist_演出", 10102, $coilmlistX4, $coilmlistY4, "cg/sys/coil/mail/コイル演出2.png");//10130
	SetAlias("coilmlist_演出", "coilmlist_演出");
	Request("coilmlist_演出", AddRender);
	Fade("coilmlist_演出", 0, 0, null, true);
	Zoom("coilmlist_演出", 0, 1000, 0, Dxl1, true);


	CreateTexture("coilmlist_消去", 10102, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_一覧演出.png");//10130
	SetAlias("coilmlist_消去", "coilmlist_消去");
	Request("coilmlist_消去", AddRender);
	Fade("coilmlist_消去", 0, 0, null, true);
	SetVertex("coilmlist_消去", 130, 0);
	Zoom("coilmlist_消去", 0, 1200, 1000, null, false);



//	CreateProcess("coilmlist_ダウンロードプロセス", 150, 0, 0, "CoilNewPro");
//	SetAlias("coilmlist_ダウンロードプロセス", "coilmlist_ダウンロードプロセス");

	Move("coilmlist_窓/*", 0, @0, @-317, null, false);
	Move("coilmlist_窓/*/*", 0, @0, @-317, null, false);
	Move("coilmlist_窓/*/*/*", 0, @0, @-317, null, true);


	Zoom("coilmlist_窓/coilmlist_欄", 0, 0, 1000, null, false);
	Move("coilmlist_窓/coilmlist_欄", 0, @0, @-100, null, false);

	Move("coilmlist_窓/coilmlist_欄/*/*", 0, @-300, @-100, null, false);
	Move("coilmlist_窓/coilmlist_欄/*", 0, @0, @-100, null, true);

	Fade("@coilmlist_ベース３", 0, 0, null, false);
	Fade("coilmlist_窓/ベース", 0, 750, null, true);

//	SetVertex("@coilmlist_ベース３", 168, 0);
//	Zoom("@coilmlist_ベース３", 0, 1000, 500, null, true);

	SetVertex("@coilmlist_ベース", 168, 0);
	Zoom("@coilmlist_ベース", 0, 1000, 1000, null, true);
	Fade("@coilmlist_ベース", 0, 0, null, true);

	CreateSE("coilsound_mlist1","se物体_コイル_システムオープン");
	CreateSE("coilsound_mlist2","se物体_コイル_システムクローズ");
}


..▽メール一覧表示
function CoilMListFade(){
	MusicStart("coilsound_mlist1",0,700,0,1000,null,false);

	Zoom("@coilmlist_ベース", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilmlist_演出*", 800, 0, null, false);

//	Fade("coilmlist_演出", 0, 350, null, false);
//	Zoom("coilmlist_演出", 200, 1500, 200, null, false);

//	Fade("coilmlist_窓/ベース２", 300, 500, null, false);
//	Fade("coilmlist_窓/ベース", 300, 1000, null, false);
//	Move("coilmlist_窓/*/*", 300, @0, @36, Dxl1, false);
//	Move("coilmlist_窓/*", 300, @0, @36, Dxl1, true);

	Fade("coilmlist_演出", 0, 350, null, false);
	Zoom("coilmlist_演出", 150, 1500, 200, null, false);

	Fade("coilmlist_窓/ベース２", 200, 500, null, false);
//	Fade("coilmlist_窓/ベース", 200, 1000, null, false);
	Move("coilmlist_窓/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmlist_窓/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmlist_窓/*", 200, @0, @36, Dxl1, true);


//	WaitKey();
	$coilmlistON=true;
	CoilBlack();

	Fade("coilmlist_演出", 0, 1000, null, true);

	Fade("coilmlist_窓/ベース", 200, 1000, null, false);
	Fade("coilmlist_窓/ベース２", 200, 0, null, false);
	Fade("@coilmlist_ベース３", 200, 1000, null, false);

	Fade("coilmlist_演出", 500, 0, Axl2, false);
	Zoom("coilmlist_演出", 200, 1000, 1000, null, false);

	Move("coilmlist_窓/*/*/*", 500, @0, @281, Dxl1, false);
	Move("coilmlist_窓/*/*", 500, @0, @281, Dxl1, false);
	Move("coilmlist_窓/*", 500, @0, @281, Dxl1, false);


	Zoom("coilmlist_窓/coilmlist_欄", 400, 1000, 1000, null, false);

	Move("coilmlist_窓/coilmlist_欄", 500, @0, @381, Dxl1, false);
	Move("coilmlist_窓/coilmlist_欄/*", 500, @0, @381, Dxl1, false);
	Move("coilmlist_窓/coilmlist_欄/*/*", 500, @300, @381, Dxl1, false);


//	Move("coilmlist_窓/マスク２", 500, @0, @-313, null, false);
	Move("coilmlist_窓/マスク２", 500, @0, @-315, null, false);

	Zoom("@coilmlist_ベース３", 500, 1000, 1200, Axl1, false);

//	Request("coilmlist_ダウンロードプロセス", Start);
}


..▽メール追加
function CoilMailAdd2($CoilMail番号,$CoilMail人物,$CoilMail件名,$CoilMail添付){

	$TempCoilMail=1;
	while($CoilMailCount>=$TempCoilMail){
		if(VariableValue($,"CoilMail番号"+$TempCoilMail)==$CoilMail番号){
			return;
		}
		$TempCoilMail++;
	}

	WaitAction("@coilmlist_ベース３", null);
//	WaitAction("@coilmlist_ベース", null);

	$CoilMail開封=false;

	$CoilMailCount++;

	VariableValue($,$CoilMail番号+"_num",$CoilMailCount);

//
	VariableValue($,$CoilMail番号+"_人物",$CoilMail人物);
	VariableValue($,$CoilMail番号+"_件名",$CoilMail件名);
	VariableValue($,$CoilMail番号+"_添付",$CoilMail添付);
	VariableValue($,$CoilMail番号+"_開封",$CoilMail開封);
//

	VariableValue($,"CoilMail人物"+$CoilMailCount,$CoilMail人物);
	VariableValue($,"CoilMail件名"+$CoilMailCount,$CoilMail件名);
	VariableValue($,"CoilMail添付"+$CoilMailCount,$CoilMail添付);
	VariableValue($,"CoilMail開封"+$CoilMailCount,$CoilMail開封);
	VariableValue($,"CoilMail番号"+$CoilMailCount,$CoilMail番号);


	$CoilTemp=$CoilMailCount;
	$CoilTempNum=VariableValue($,"CoilMail番号"+$CoilTemp);


	Position("@coilmlist_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数-42;

	//▽超えちゃいけないライン
	$coiltempX=$CoilPreX+21;
	$coiltempY=$CoilPreY+28;
	$coiltempnut1="coilmlist_窓/coilmlist_欄/チェック"+$CoilTempNum;
	CreateTexture($coiltempnut1, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/コイルメール_一覧表示.png");//10090
	SetAlias($coiltempnut1, $coiltempnut1);
	Fade($coiltempnut1, 0, 0, null, false);

	//▽件名
	SetFont("ＭＳ ゴシック", 16, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$CoilPreX+61;
	$coiltempY=$CoilPreY+26;
	$coiltempnutW="coilmlist_窓/coilmlist_欄/テキスト窓"+$CoilTempNum;
	CreateWindow($coiltempnutW, 10101, $coiltempX, $coiltempY, 182, 50, false);//10090//170
	SetAlias($coiltempnutW, $coiltempnutW);

	$coiltempnut2=$coiltempnutW+"/件名"+$CoilTempNum;
	$coiltempimg=VariableValue($,"CoilMail件名"+$CoilTemp);
	$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilMail件名"+$CoilTemp));
	CreateText($coiltempnut2, 10101, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
	SetAlias($coiltempnut2, $coiltempnut2);
	Fade($coiltempnut2, 0, 0, null, false);
	Request($coiltempnut2, NoLog);

	//▽人物
	SetFont("ＭＳ ゴシック", 10, FFFFFF, 000000, MEDIUM, NULL);
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
	$coiltempX=$CoilPreX+61;
	$coiltempY=$CoilPreY+47;
	$coiltempnut3="coilmlist_窓/coilmlist_欄/人物"+$CoilTempNum;
	$coiltempimg=VariableValue($,"CoilMail人物"+$CoilTemp);
	CreateText($coiltempnut3, 10101, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
	SetAlias($coiltempnut3, $coiltempnut3);
	Fade($coiltempnut3, 0, 0, null, false);
	Request($coiltempnut3, NoLog);

	//▽開封
	$coiltempX=$CoilPreX+260;
	$coiltempY=$CoilPreY+28;
	$coiltempnut4="coilmlist_窓/coilmlist_欄/開封"+$CoilTempNum;
	$coiltempimg="cg/sys/coil/mail/コイルメール_一覧解読アイコン.png";
	CreateTexture($coiltempnut4, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
	SetAlias($coiltempnut4, $coiltempnut4);
	Fade($coiltempnut4, 0, 0, null, false);

	$coiltempnut="coilmlist_窓/coilmlist_欄/開封演出"+$CoilTempNum;
	CreateTexture($coiltempnut, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, AddRender);
	Fade($coiltempnut, 0, 0, null, false);

	Request("coilmlist_ダウンロードプロセス", Stop);
	WaitAction("coilmlist_ダウンロードプロセス", null);
	Fade($coilmlistpronut, 100, 0, null, false);

	$coilmlistpronut="@"+$coiltempnut;

	//▽添付
	$coiltempX=$CoilPreX+287;
	$coiltempY=$CoilPreY+33;
	$coiltempnut5="coilmlist_窓/coilmlist_欄/添付"+$CoilTempNum;

	if(VariableValue($,"CoilMail添付"+$CoilTemp)){
		$coiltempimg="cg/sys/coil/mail/コイルメール_一覧テンプアイコン.png";
		CreateTexture($coiltempnut5, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
		SetAlias($coiltempnut5, $coiltempnut5);
		Fade($coiltempnut5, 0, 0, null, false);
	}

	//▽演出
	$coiltempX=$CoilPreX+21-50;
	$coiltempY=$CoilPreY+28;
	$coiltempnut6="coilmlist_窓/coilmlist_欄/演出"+$CoilTempNum;
	CreateTexture($coiltempnut6, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/メール新規演出.png");//10090
	SetAlias($coiltempnut6, $coiltempnut6);
//	Request($coiltempnut6, AddRender);
//	Request($coiltempnut6, MulRender);
	Request($coiltempnut6, OverlayRender);
	Zoom($coiltempnut6, 0, 1500, 1000, null, false);


	Request("coilmlist_窓/coilmlist_欄/*", PushText);
	Request("coilmlist_窓/coilmlist_欄/*/*", PushText);


	CreateProcess("coilmlist_ダウンロードプロセス", 150, 0, 0, "CoilMListPro");
	SetAlias("coilmlist_ダウンロードプロセス", "coilmlist_ダウンロードプロセス");

	CreateSE("coilsound_mlist3","se物体_コイル_システムメール追加");
	MusicStart("coilsound_mlist3",0,700,0,1000,null,false);

	if($CoilMailSoon){

		Fade($coiltempnut1, 0, 1000, null, false);
		Fade($coiltempnut2, 0, 1000, null, false);
		Fade($coiltempnut3, 0, 1000, null, false);
		Fade($coiltempnut4, 0, 1000, null, false);
		Fade($coiltempnut5, 0, 1000, null, true);

		if($CoilMailNow==($CoilMailCount-1)){
			$CoilMailNow=$CoilMailCount;

		}else{
			$CoilMailMove=(-($CoilMailCount-$CoilMailNow-1))*42;
			
			Move($coiltempnutW, 0, @0, @$CoilMailMove, Dxl1, true);
			Move($coiltempnut1, 0, @0, @$CoilMailMove, Dxl1, true);
			Move($coiltempnut2, 0, @0, @$CoilMailMove, Dxl1, true);
			Move($coiltempnut3, 0, @0, @$CoilMailMove, Dxl1, true);
			Move($coiltempnut4, 0, @0, @$CoilMailMove, Dxl1, true);
			Move($coiltempnut5, 0, @0, @$CoilMailMove, Dxl1, true);
			Move($coiltempnut6, 0, @0, @$CoilMailMove, Dxl1, true);
			Move($coilmlistpronut, 0, @0, @$CoilMailMove, Dxl1, true);

			$CoilMailNow=$CoilMailNow+1;
		}

		Move("coilmlist_窓/coilmlist_欄/*", 200, @0, @42, Dxl1, false);
		Move("coilmlist_窓/coilmlist_欄/*/*", 200, @0, @42, Dxl1, true);

		$CoilMailSoon=false;
	}else if($CoilMailNow==($CoilMailCount-1)){
		Move("coilmlist_窓/coilmlist_欄/*", 150, @0, @42, Dxl1, false);
		Move("coilmlist_窓/coilmlist_欄/*/*", 150, @0, @42, Dxl1, true);
	
		Zoom($coiltempnut6, 500, 250, 1000, null, false);
		Fade($coiltempnut6, 500, 500, null, false);
		Move($coiltempnut6, 600, @450, @0, null, false);
	
		Fade($coiltempnut1, 200, 1000, null, 100);
		Fade($coiltempnut2, 200, 1000, null, 100);
		Fade($coiltempnut3, 200, 1000, null, 100);
		Fade($coiltempnut4, 200, 1000, null, 100);
		Fade($coiltempnut5, 200, 1000, null, true);

		$CoilMailNow=$CoilMailCount;
	}else{
		$CoilMailMove=(-($CoilMailCount-$CoilMailNow-1))*42;

		Fade($coiltempnut1, 0, 1000, null, false);
		Fade($coiltempnut2, 0, 1000, null, false);
		Fade($coiltempnut3, 0, 1000, null, false);
		Fade($coiltempnut4, 0, 1000, null, false);
		Fade($coiltempnut5, 0, 1000, null, false);

		Move($coiltempnutW, 0, @0, @$CoilMailMove, Dxl1, true);
		Move($coiltempnut1, 0, @0, @$CoilMailMove, Dxl1, true);
		Move($coiltempnut2, 0, @0, @$CoilMailMove, Dxl1, true);
		Move($coiltempnut3, 0, @0, @$CoilMailMove, Dxl1, true);
		Move($coiltempnut4, 0, @0, @$CoilMailMove, Dxl1, true);
		Move($coiltempnut5, 0, @0, @$CoilMailMove, Dxl1, true);
		Move($coiltempnut6, 0, @0, @$CoilMailMove, Dxl1, true);
		Move($coilmlistpronut, 0, @0, @$CoilMailMove, Dxl1, true);
	}

	Request("coilmlist_ダウンロードプロセス", Start);
}


function CoilMListPro(){
	while(1){
		Fade($coilmlistpronut, 300, 700, null, true);
		Fade($coilmlistpronut, 500, 0, null, true);
//		Wait(100);
		Fade($coilmlistpronut, 300, 700, null, true);
		Fade($coilmlistpronut, 500, 0, null, true);
//		Wait(100);
	}
}



..▽メール削除
function CoilMailSub2($メール消去対象,$メール移動秒数){

		CoilMListMove($メール消去対象,$メール移動秒数);
		WaitAction("@coilmlist_選択", null);

		CoilMailSub3($メール消去対象);
}

function CoilMailSub3($CoilMail番号){

	$TempCoilMailOK=false;

	$TempCoilMail=1;
	while($CoilMailCount>=$TempCoilMail){
		if(VariableValue($,"CoilMail番号"+$TempCoilMail)==$CoilMail番号){
			$TempCoilMailOK=true;
			break;
		}
		$TempCoilMail++;
	}
	if(!$TempCoilMailOK){
		return;
	}

	WaitAction("@coilmlist_ベース３", null);
//	WaitAction("@coilmlist_ベース", null);

	//Message("デバッグ用ウィンドウ","デバッグ用です",YESNOCANCE,EXCLAMATION);

	$TempCoilMailCount1=VariableValue($,$CoilMail番号+"_num");
	$TempCoilMailCount2=$TempCoilMailCount1+1;

	$CoilTemp=$TempCoilMailCount1;
	$CoilTempNum=VariableValue($,"CoilMail番号"+$CoilTemp);

	$CoilMailCount--;
	while($CoilMailCount>=$TempCoilMailCount1){
		$CoilMail人物=VariableValue($,"CoilMail人物"+$TempCoilMailCount2);
		$CoilMail件名=VariableValue($,"CoilMail件名"+$TempCoilMailCount2);
		$CoilMail添付=VariableValue($,"CoilMail添付"+$TempCoilMailCount2);
		$CoilMail開封=VariableValue($,"CoilMail開封"+$TempCoilMailCount2);
		$CoilMail番号=VariableValue($,"CoilMail番号"+$TempCoilMailCount2);

		VariableValue($,$CoilMail番号+"_num",$TempCoilMailCount1);

		VariableValue($,"CoilMail人物"+$TempCoilMailCount1,$CoilMail人物);
		VariableValue($,"CoilMail件名"+$TempCoilMailCount1,$CoilMail件名);
		VariableValue($,"CoilMail添付"+$TempCoilMailCount1,$CoilMail添付);
		VariableValue($,"CoilMail開封"+$TempCoilMailCount1,$CoilMail開封);
		VariableValue($,"CoilMail番号"+$TempCoilMailCount1,$CoilMail番号);

		$TempCoilMailCount1++;
		$TempCoilMailCount2++;
	}


//消す
//★セレクトを強制移動して灰色にする。そして分解。

	//▽超えちゃいけないライン
	$coiltempnut1="coilmlist_窓/coilmlist_欄/チェック"+$CoilTempNum;
	//▽件名
	$coiltempnutW="coilmlist_窓/coilmlist_欄/テキスト窓"+$CoilTempNum;
	$coiltempnut2=$coiltempnutW+"/件名"+$CoilTempNum;
	//▽人物
	$coiltempnut3="coilmlist_窓/coilmlist_欄/人物"+$CoilTempNum;
	//▽開封
	$coiltempnut4="coilmlist_窓/coilmlist_欄/開封"+$CoilTempNum;
	$coiltempnut="coilmlist_窓/coilmlist_欄/開封演出"+$CoilTempNum;
	$coilmlistpronut2="@"+$coiltempnut;
	//▽添付
	$coiltempnut5="coilmlist_窓/coilmlist_欄/添付"+$CoilTempNum;
	//▽演出
	$coiltempnut6="coilmlist_窓/coilmlist_欄/演出"+$CoilTempNum;

	if($CoilTemp==($CoilMailCount+1)){
		Request("@coilmlist_ダウンロードプロセス", Stop);
		Delete("@coilmlist_ダウンロードプロセス");
	}

	Position($coiltempnut1,$X座標値,$Y座標値);

	CreateColor("coilmlist_窓/coilmlist_欄/coilmlist_抹消色３", 10110, $X座標値, $Y座標値, 298, 42, "41a4ae");
	SetAlias("coilmlist_窓/coilmlist_欄/coilmlist_抹消色３", "coilmlist_抹消色３");
	Request("coilmlist_窓/coilmlist_欄/coilmlist_抹消色３", AddRender);
	Fade("coilmlist_窓/coilmlist_欄/coilmlist_抹消色３", 0, 0, null, true);

	CreateColor("coilmlist_抹消色１", 10110, $X座標値, $Y座標値, 298, 42, "41a4ae");
	SetAlias("coilmlist_抹消色１", "coilmlist_抹消色１");
	Request("coilmlist_抹消色１", AddRender);
	Fade("coilmlist_抹消色１", 0, 0, null, true);

	CreateColor("coilmlist_抹消色２", 10110, $X座標値, $Y座標値, 298, 42, "FFFFFF");
	SetAlias("coilmlist_抹消色２", "coilmlist_抹消色２");
	Request("coilmlist_抹消色２", AddRender);
	Fade("coilmlist_抹消色２", 0, 0, null, true);


	CreateWindow("coilmlist_窓/coilmlist_欄/coilmlist_抹消欄", 10110, $X座標値, $Y座標値, 298, 42, false);
	SetAlias("coilmlist_窓/coilmlist_欄/coilmlist_抹消欄", "coilmlist_窓/coilmlist_欄/coilmlist_抹消欄");

	Position("coilmlist_窓",$X座標値2,$Y座標値2);
	CreateTexture("coilmlist_窓/coilmlist_欄/coilmlist_抹消欄/coilmlist_消去画像", 10110, $X座標値2, $Y座標値2, "cg/sys/coil/mail/コイルメール_一覧枠.png");
	SetAlias("coilmlist_窓/coilmlist_欄/coilmlist_抹消欄/coilmlist_消去画像", "coilmlist_消去画像");
	SetTone("coilmlist_窓/coilmlist_欄/coilmlist_抹消欄/coilmlist_消去画像", Monochrome);
	Request("coilmlist_窓/coilmlist_欄/coilmlist_抹消欄/coilmlist_消去画像", AddRender);
	Fade("@coilmlist_消去画像", 0, 0, null, true);



	Move("@coilmlist_選択", 0, $X座標値, $Y座標値, null, false);
	Fade("@coilmlist_選択", 0, 0, null, true);
//――――――――――――――――――――――――――
	CreateSE("coilsound_mlist3","se物体_コイル_システムメール削除");
	MusicStart("coilsound_mlist3",0,700,0,1000,null,false);

//	Fade("@coilmlist_選択", 300, 500, null, false);

	Fade("@coilmlist_抹消色３", 0, 300, null, false);
	Fade("@coilmlist_抹消色２", 0, 200, null, true);

	Fade("@coilmlist_消去画像", 100, 500, null, true);

	Fade("@coilmlist_消去画像", 450, 0, null, false);

	Fade("@coilmlist_抹消色３", 300, 0, null, false);
	Zoom("@coilmlist_抹消色３", 300, 1000, 3000, null, false);

	Fade("@coilmlist_抹消色２", 300, 100, null, false);
	Zoom("@coilmlist_抹消色２", 300, 1000, 0, Axl2, false);

/*
	DrawTransition($coilmlistpronut2, 300, 1000, 0, 100, Dxl1, "cg/data/blind_05_00_1.png", false);
	DrawTransition($coiltempnut1, 300, 1000, 0, 100, Dxl1, "cg/data/blind_05_00_1.png", false);
	DrawTransition($coiltempnut2, 300, 1000, 0, 100, Dxl1, "cg/data/blind_05_00_1.png", false);
	DrawTransition($coiltempnut3, 300, 1000, 0, 100, Dxl1, "cg/data/blind_05_00_1.png", false);
	DrawTransition($coiltempnut4, 300, 1000, 0, 100, Dxl1, "cg/data/blind_05_00_1.png", false);
	DrawTransition($coiltempnut5, 300, 1000, 0, 100, Dxl1, "cg/data/blind_05_00_1.png", false);
	DrawTransition($coiltempnut6, 300, 1000, 0, 100, Dxl1, "cg/data/blind_05_00_1.png", false);

	DrawTransition($coilmlistpronut2, 300, 1000, 0, 100, Dxl1, "cg/data/noize_01_00_0.png", false);
	DrawTransition($coiltempnut1, 300, 1000, 0, 100, Dxl1, "cg/data/noize_01_00_0.png", false);
	DrawTransition($coiltempnut2, 300, 1000, 0, 100, Dxl1, "cg/data/noize_01_00_0.png", false);
	DrawTransition($coiltempnut3, 300, 1000, 0, 100, Dxl1, "cg/data/noize_01_00_0.png", false);
	DrawTransition($coiltempnut4, 300, 1000, 0, 100, Dxl1, "cg/data/noize_01_00_0.png", false);
	DrawTransition($coiltempnut5, 300, 1000, 0, 100, Dxl1, "cg/data/noize_01_00_0.png", false);
	DrawTransition($coiltempnut6, 300, 1000, 0, 100, Dxl1, "cg/data/noize_01_00_0.png", false);

*/

	Move($coilmlistpronut2, 300, @20, @0, Axl1, false);
	Move($coiltempnut4, 300, @20, @0, Axl1, false);
	Move($coiltempnut5, 300, @40, @0, Axl1, false);

	Zoom($coilmlistpronut2, 300, 2000, 1000, Axl1, false);
	Zoom($coiltempnut1, 300, 2000, 1000, Axl1, false);
	Zoom($coiltempnut2, 300, 2000, 1000, Axl1, false);
	Zoom($coiltempnut3, 300, 2000, 1000, Axl1, false);
	Zoom($coiltempnut4, 300, 2000, 1000, Axl1, false);
	Zoom($coiltempnut5, 300, 2000, 1000, Axl1, false);
	Zoom($coiltempnut6, 300, 2000, 1000, Axl1, false);

	Fade($coilmlistpronut2, 300, 0, null, false);
	Fade($coiltempnut6, 300, 0, null, false);
	Fade($coiltempnut1, 300, 0, null, false);
	Fade($coiltempnut2, 300, 0, null, false);
	Fade($coiltempnut3, 300, 0, null, false);
	Fade($coiltempnut4, 300, 0, null, false);
	Fade($coiltempnut5, 300, 0, null, 150);

	Fade("@coilmlist_抹消色１", 300, 500, null, false);
	DrawTransition("@coilmlist_抹消色１", 300, 1000, 0, 100, null, "cg/data/mosaic_01_00_0.png", true);

	Delete("@coilmlist_抹消色*");
	Delete("coilmlist_窓/coilmlist_欄/coilmlist_抹消欄");

	//上昇
	$CoilTemp2=1;
	while($CoilTemp>$CoilTemp2){
		$CoilTempNum=VariableValue($,"CoilMail番号"+$CoilTemp2);

		//▽超えちゃいけないライン
		$coiltempnut1="coilmlist_窓/coilmlist_欄/チェック"+$CoilTempNum;
		//▽件名
		$coiltempnutW="coilmlist_窓/coilmlist_欄/テキスト窓"+$CoilTempNum;
		$coiltempnut2=$coiltempnutW+"/件名"+$CoilTempNum;
		//▽人物
		$coiltempnut3="coilmlist_窓/coilmlist_欄/人物"+$CoilTempNum;
		//▽開封
		$coiltempnut4="coilmlist_窓/coilmlist_欄/開封"+$CoilTempNum;
		$coiltempnut="coilmlist_窓/coilmlist_欄/開封演出"+$CoilTempNum;
		$coilmlistpronut2="@"+$coiltempnut;
		//▽添付
		$coiltempnut5="coilmlist_窓/coilmlist_欄/添付"+$CoilTempNum;
		//▽演出
		$coiltempnut6="coilmlist_窓/coilmlist_欄/演出"+$CoilTempNum;
		
		Move($coiltempnutW, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut1, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut2, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut3, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut4, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut5, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut6, 200, @0, @-42, Dxl1, false);
		Move($coilmlistpronut2, 200, @0, @-42, Dxl1, false);
		
		//CreateText("テキスト１", 2000000, 50, 50, 700, 500, $coiltempnut1);
		//Message("デバッグ用ウィンドウ","デバッグ用です",YESNOCANCE,EXCLAMATION);
		
		$CoilTemp2++;
	}

	$CoilMailNow=$CoilMailNow-1;

	WaitAction($coiltempnut1, null);

	Fade("@coilmlist_選択", 300, 500, null, false);
}



..▽メール一覧移動
function CoilMListMove($CoilMail番号,$CoilMListTime){

	WaitAction("@coilmlist_ベース３", null);
//	WaitAction("@coilmlist_ベース", null);

	Position("@coilmlist_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilmlist_ベース３", 0, 0, null, false);
	Zoom("@coilmlist_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilmlist_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);

	$CoilMailNew=VariableValue($,$CoilMail番号+"_num");
	$CoilMailNew2=$CoilMailNew;
	$CoilMailNew+=2;

	if($CoilMailCount<7){
		$CoilMailNow=$CoilMailNew;
	}else if($CoilMailNew<7){
		$CoilMailNew=6;
	}else if($CoilMailNew>$CoilMailCount){
		$CoilMailNew=$CoilMailCount;
	}

	CoilMListMoveMacro();
}


function CoilMListMove2($CoilMListNum,$CoilMListTime){

	Position("@coilmlist_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilmlist_ベース３", 0, 0, null, false);
	Zoom("@coilmlist_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilmlist_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);


	$CoilMailNew=$CoilMailCount-($CoilMListNum-1);//どの番号？
	$CoilMailNew2=$CoilMailNew;


	CoilMListMoveMacro();
}

function CoilMListMoveMacro(){
	$CoilMailTemp=$CoilMailNow-$CoilMailNew;
	$CoilMailMove=(-$CoilMailTemp)*42;
	$CoilMListTime2=$CoilMListTime/2;
	$CoilMListTime3=$CoilMListTime/5*2;
	$CoilMListTime4=$CoilMListTime/5*3;

	$CoilTempNum=VariableValue($,"CoilMail番号"+$CoilMailNew2);

	$coiltempnut="coilmlist_窓/coilmlist_欄/チェック"+$CoilTempNum;
	Position($coiltempnut,$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX2=$X座標値格納変数;
	$CoilPreY2=$Y座標値格納変数;
	$CoilPreY2+=$CoilMailMove;


	CreateSE("coilsound_mlist3","se物体_コイル_システムメール移動");
	MusicStart("coilsound_mlist3",0,700,0,1000,null,false);


	if($CoilMailMove==0){
		Move("coilmlist_窓/coilmlist_欄/*", $CoilMListTime, @0, @$CoilMailMove, Dxl1, false);
		Move("coilmlist_窓/coilmlist_欄/*/*", $CoilMListTime, @0, @$CoilMailMove, Dxl1, false);
		Move("@coilmlist_選択", $CoilMListTime, $CoilPreX2, $CoilPreY2, Dxl1, false);

		Zoom("@coilmlist_選択", $CoilMListTime4, 1200, 1200, Dxl1, false);
		Fade("@coilmlist_選択", $CoilMListTime4, 100, null, true);

		Zoom("@coilmlist_選択", $CoilMListTime3, 1000, 1000, Dxl1, false);
		Fade("@coilmlist_選択", $CoilMListTime3, 500, Axl1, true);

	}else{
		if($CoilMailTemp>5){
			$CoilMailMove2=$CoilPreY+300;
		}else if($CoilMailTemp<-5){
			$CoilMailMove2=$CoilPreY-50;
		}else{
			$CoilMailMove5=$CoilMailTemp*8;

			if($CoilMailMove5>30){
				$CoilMailMove5=30;
			}else if($CoilMailMove5<-30){
				$CoilMailMove5=-30;
			}
			$CoilMailMove2=$CoilPreY2+$CoilMailMove5;
		}

		$CoilMailMove4=$CoilMailTemp*4;
		if($CoilMailMove4>20){
			$CoilMailMove4=20;
		}else if($CoilMailMove4<-20){
			$CoilMailMove4=-20;
		}
		$CoilMailMove3=$CoilMailMove-$CoilMailMove4;


		//ズーム
		$CoilMailZoom=2000*$CoilMailTemp;
		if($CoilMailZoom<0){$CoilMailZoom=-$CoilMailZoom;}
		if($CoilMailZoom>8000){
			$CoilMailZoom=8000;
		}

		Fade("@coilmlist_選択", $CoilMListTime3, 100, null, false);

		Move("coilmlist_窓/coilmlist_欄/*", $CoilMListTime4, @0, @$CoilMailMove3, Axl1, false);
		Move("coilmlist_窓/coilmlist_欄/*/*", $CoilMListTime4, @0, @$CoilMailMove3, Axl1, false);

		Zoom("@coilmlist_選択", $CoilMListTime3, 1200, $CoilMailZoom, Dxl1, false);
//		Move("@coilmlist_選択", $CoilMListTime3, $CoilPreX2, $CoilMailMove2, Dxl3, false);
		Move("@coilmlist_選択", $CoilMListTime4, $CoilPreX2, $CoilPreY2, Dxl1, false);

		WaitAction("coilmlist_窓/coilmlist_欄/*/*", null);


		Move("coilmlist_窓/coilmlist_欄/*", $CoilMListTime3, @0, @$CoilMailMove4, Dxl2, false);
		Move("coilmlist_窓/coilmlist_欄/*/*", $CoilMListTime3, @0, @$CoilMailMove4, Dxl2, false);
	
		Zoom("@coilmlist_選択", $CoilMListTime3, 1000, 1000, Dxl1, false);
//		Move("@coilmlist_選択", $CoilMListTime3, $CoilPreX2, $CoilPreY2, Axl1, false);
		Move("@coilmlist_選択", 0, $CoilPreX2, $CoilPreY2, Dxl1, false);
		Fade("@coilmlist_選択", $CoilMListTime3, 500, Axl1, true);
	}

	$CoilMailNow=$CoilMailNew;
}





..▽メール一覧既読化
function CoilMListOnRead($CoilMail番号){

	$CoilMailTemp=VariableValue($,$CoilMail番号+"_num");
	VariableValue($,"CoilMail開封"+$CoilMailTemp,true);
	VariableValue($,$CoilMail番号+"_開封",true);
}



..▽メール一覧フェード消し
function CoilMListDelete(){

	Zoom("@coilmlist_窓", 0, 1000, 1000, null, true);
	Zoom("coilmlist_窓/マスク２", 0, 1000, 1000, null, true);


	Position("@coilmlist_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilmlist_ベース３", 0, 0, null, false);
	Zoom("@coilmlist_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilmlist_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);


	Request("coilmlist_ダウンロードプロセス", Stop);
	WaitAction("coilmlist_ダウンロードプロセス", null);

	Fade("@coilmlist_演出*", 0, 0, null, false);
	Fade("@coilmlist_ベース３", 0, 1000, null, false);

	Zoom("coilmlist_演出", 0, 1500, 300, null, false);
	Fade("coilmlist_演出", 0, 250, null, true);

//	WaitKey();
	$coilmlistON=false;
	CoilBlack();

	MusicStart("coilsound_mlist1",0,700,0,1000,null,false);

	Zoom("coilmlist_消去", 500, 1100, 0, null, false);
	Fade("coilmlist_消去", 500, 1000, Dxl3, false);

	Fade("coilmlist_演出", 300, 1000, null, false);
	Zoom("coilmlist_演出", 400, 750, 0, Axl1, false);

//	Zoom("@coilmlist_ベース３", 50, 1000, 1500, null, false);
	Fade("@coilmlist_ベース３", 50, 0, null, false);
	Fade("@coilmlist_ベース", 500, 500, null, false);

	Move("coilmlist_窓/*/*", 500, @0, @-317, Dxl1, false);
	Move("coilmlist_窓/*", 500, @0, @-317, Dxl1, false);

	Zoom("@coilmlist_ベース２", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilmlist_ベース", 500, 1000, 750, AxlAuto, false);

//	Fade("coilmlist_演出", 400, 0, Axl3, false);
//	Rotate("coilmlist_演出", 400, @-90, @0, @0, Axl3, false);


	Delete("coilmlist_ダウンロードプロセス");
	Request("coilmlist_窓/*/*", Disused);
	Request("coilmlist_窓/*", Disused);
	Request("coilmlist_演出", Disused);
	Request("coilmlist_消去", Disused);
}


..▽メール呼び出し
function CoilMailFade_MList($CoilMail番号,秒数){

	WaitAction("@coilmlist_ベース３", null);
//	WaitAction("@coilmlist_ベース", null);


	$CoilMail番号２=$CoilMail番号;
	$CoilMailカテ=VariableValue($,$CoilMail番号+"_カテ");

//////////////////////////////////////////////////////////////////////////////
	//メールセット
	if($CoilMailカテ==2){
		//CoilMailSet2($CoilMail番号２,$coilmoveX, $coilmoveY);
		$coilmailtemp="coilmail2";
	}else{
		//CoilMailSet($CoilMail番号２,$coilmoveX, $coilmoveY);
		$coilmailtemp="coilmail";
	}
	$coilmailtempnut=$coilmailtemp+"_窓";
	Position($coilmailtempnut,$coilmoveX,$coilmoveY);

	//▽親
	$coilmailtempnut0=$coilmailtemp+"*";
	$coilmailtempnut1=$coilmailtemp+"_窓/*";
	$coilmailtempnut2=$coilmailtemp+"_窓/*/*";
	$coilmailtempnut3=$coilmailtemp+"_窓/*/*/*";

	//▽ベース
	$coilmailbase1=$coilmailtemp+"_窓/ベース";
	$coilmailbase2=$coilmailtemp+"_窓/ベース２";
	$coilmailmask=$coilmailtemp+"_窓/マスク２";
	$coilmailbase3=$coilmailtemp+"_窓/マスク２/ベース３";

	//▽演出
	$coiltemp演出=$coilmailtemp+"_演出";
	$coiltemp演出色=$coilmailtemp+"_窓/coilmail_演出色";

	$coiltemp件名=$coilmailtemp+"_窓/件名窓/件名";
	$coiltemp人物=$coilmailtemp+"_窓/人物";
	$coiltemp添付=$coilmailtemp+"_窓/添付";
	$coiltemp添付２=$coilmailtemp+"_窓/添付点滅";
	$coiltemp表情=$coilmailtemp+"_窓/表情";
	$coiltemp手紙=$coilmailtemp+"_窓/mail";
	$coiltempプロ=$coilmailtemp+"_ダウンロードプロセス";

	if($CoilMailカテ==2){
		$coiltemp本文=$coilmail2_text;
	}else{
		$coiltemp本文=$coilmail_text;
	}

	Zoom($coilmailbase1, 0, 1000, 1000, DxlAuto, false);
	Zoom($coiltemp演出, 0, 1000, 1000, null, false);

	Move($coilmailtempnut3, 0, @0, @295, Dxl1, false);
	Move($coilmailtempnut2, 0, @0, @295, Dxl1, false);
	Move($coilmailtempnut1, 0, @0, @295, Dxl1, false);
	Move($coilmailmask, 0, @0, @-257, null, false);

	Fade($coilmailtempnut0, 0, 0, null, true);
	Fade($coilmailtempnut1, 0, 0, null, true);
	Fade($coilmailtempnut2, 0, 0, null, true);
	Fade($coilmailtempnut3, 0, 0, null, true);

//////////////////////////////////////////////////////////////////////////////
	//移動
	CoilMListMove($CoilMail番号２,秒数);
//////////////////////////////////////////////////////////////////////////////

//	VariableValue($,$CoilMail番号+"_num",$CoilMailCount);

//	VariableValue($,$CoilMail番号+"_人物",$CoilMail人物);
//	VariableValue($,$CoilMail番号+"_件名",$CoilMail件名);
//	VariableValue($,$CoilMail番号+"_添付",$CoilMail添付);
//	VariableValue($,$CoilMail番号+"_開封",$CoilMail開封);

//	VariableValue($,"CoilMail人物"+$CoilMailCount,$CoilMail人物);
//	VariableValue($,"CoilMail件名"+$CoilMailCount,$CoilMail件名);
//	VariableValue($,"CoilMail添付"+$CoilMailCount,$CoilMail添付);
//	VariableValue($,"CoilMail開封"+$CoilMailCount,$CoilMail開封);
//	VariableValue($,"CoilMail番号"+$CoilMailCount,$CoilMail番号);

	$CoilTemp=VariableValue($,$CoilMail番号+"_num");
	$CoilTempNum=$CoilMail番号;

	//▽超えちゃいけないライン
	$coiltempnut1="coilmlist_窓/coilmlist_欄/チェック"+$CoilTempNum;
	Position($coiltempnut1,$coiltempX,$coiltempY);

	$coiltempnut="coilmlist_移動"+$CoilTempNum;
	CreateWindow($coiltempnut, 150, $coiltempX, $coiltempY, 298, 42, false);
	SetAlias($coiltempnut, $coiltempnut);
	$coiltempnut0=$coiltempnut+"/coilmlist_板"+$CoilTempNum;
	$coiltempX2=$coiltempX-6;
	$coiltempY2=$coiltempY-6;
	CreateTexture($coiltempnut0, 10101, $coiltempX2, $coiltempY2, "cg/sys/coil/mail/コイル移動演出.png");//10090
	SetAlias($coiltempnut0, $coiltempnut0);
	Request($coiltempnut0, AddRender);
//	Request($coiltempnut0, OverlayRender);
//	Request($coiltempnut0, SubRender);

/*
	$coiltempnut7="coilmlist_窓/coilmlist_欄/coilmlist_板"+$CoilTempNum;
	CreateTexture($coiltempnut7, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/コイル移動演出.png");//10090
	SetAlias($coiltempnut7, $coiltempnut7);
//	Request($coiltempnut7, AddRender);
//	Request($coiltempnut7, OverlayRender);
	Request($coiltempnut7, SubRender);
*/
//コイルメール_一覧エンター
//コイルメール_一覧セレクト

	$coiltempnut1=$coiltempnut+"/チェック"+$CoilTempNum;
	CreateTexture($coiltempnut1, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/コイルメール_一覧表示.png");//10090
	SetAlias($coiltempnut1, $coiltempnut1);

	//▽件名
	$coiltempnut2="coilmlist_窓/coilmlist_欄/テキスト窓"+$CoilTempNum;
	Position($coiltempnut2,$coiltempX,$coiltempY);

	SetFont("ＭＳ ゴシック", 16, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempnut2=$coiltempnut+"/テキスト窓"+$CoilTempNum;
	CreateWindow($coiltempnut2, 10101, $coiltempX, $coiltempY, 182, 50, false);//10090//170
	SetAlias($coiltempnut2, $coiltempnut2);

	$coiltempnut3=$coiltempnut2+"/件名"+$CoilTempNum;
	$coiltempimg=VariableValue($,"CoilMail件名"+$CoilTemp);
	$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilMail件名"+$CoilTemp));
	CreateText($coiltempnut3, 10101, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
	SetAlias($coiltempnut3, $coiltempnut3);
	Request($coiltempnut3, NoLog);

	//▽人物
	$coiltempnut4="coilmlist_窓/coilmlist_欄/人物"+$CoilTempNum;
	Position($coiltempnut4,$coiltempX,$coiltempY);

	SetFont("ＭＳ ゴシック", 10, FFFFFF, 000000, MEDIUM, NULL);
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
	$coiltempnut4=$coiltempnut+"/人物"+$CoilTempNum;
	$coiltempimg=VariableValue($,"CoilMail人物"+$CoilTemp);
	CreateText($coiltempnut4, 10101, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
	SetAlias($coiltempnut4, $coiltempnut4);
	Request($coiltempnut4, NoLog);
//		SetVertex($coiltempnut, 0, 0);

	//▽開封
	$coiltempnut5="coilmlist_窓/coilmlist_欄/開封"+$CoilTempNum;
	Position($coiltempnut5,$coiltempX,$coiltempY);

	$coiltempnut5=$coiltempnut+"/開封"+$CoilTempNum;

	if(VariableValue($,"CoilMail開封"+$CoilTemp)){
		$coiltempimg="cg/sys/coil/mail/コイルメール_一覧未解読アイコン.png";
	}else{
		//$coiltempimg="cg/sys/coil/mail/コイルメール_一覧未解読アイコン.png";
		$coiltempimg="cg/sys/coil/mail/コイルメール_一覧解読アイコン.png";
	}
	CreateTexture($coiltempnut5, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
	SetAlias($coiltempnut5, $coiltempnut5);

	//▽添付
	$coiltempnut6="coilmlist_窓/coilmlist_欄/添付"+$CoilTempNum;
	Position($coiltempnut6,$coiltempX,$coiltempY);

	$coiltempnut6=$coiltempnut+"/添付"+$CoilTempNum;

	if(VariableValue($,"CoilMail添付"+$CoilTemp)){
		$coiltempimg="cg/sys/coil/mail/コイルメール_一覧テンプアイコン.png";
		CreateTexture($coiltempnut6, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
		SetAlias($coiltempnut6, $coiltempnut6);
	}

	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	$coiltempnut8="coilmlist_窓/coilmlist_欄/coilmlist_決定"+$CoilTempNum;
	CreateTexture($coiltempnut8, 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_一覧エンター.png");//10010
	SetAlias($coiltempnut8, $coiltempnut8);
//	Request($coiltempnut8, AddRender);
	Fade($coiltempnut8, 0, 0, null, true);
	$coilmailnow=$coiltempnut8;

	$coiltempnut9="coilmlist_窓/coilmlist_欄/coilmlist_決定２"+$CoilTempNum;
	CreateTexture($coiltempnut9, 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/コイルメール_一覧エンター.png");//10010
	SetAlias($coiltempnut9, $coiltempnut9);
	Request($coiltempnut9, AddRender);
	Fade($coiltempnut9, 0, 0, null, true);


	$coiltemp1=$coiltempnut+"/*";
	$coiltemp2=$coiltempnut+"/*/*";
	Fade($coiltempnut7, 0, 0, null, false);
	Fade($coiltemp2, 0, 0, null, false);
	Fade($coiltemp1, 0, 0, null, true);
	Request($coiltemp1, PushText);
	Request($coiltemp2, PushText);

	Position("coilmlist_窓/coilmlist_欄/coilmlist_選択",$X座標,$Y座標);
	Move($coiltempnut8, 0, $X座標, $Y座標, null, false);
	Move($coiltempnut9, 0, $X座標, $Y座標, null, false);

	$coilmoveX2=$coilmoveX-$X座標+52;
	$coilmoveY2=$coilmoveY-$Y座標+40;

////////////
	$coilmoveXA=$coilmoveX2/3;
	$coilmoveXB=$coilmoveX2/3*2;
	$coilmoveYA=$coilmoveY2-100;

//	SetBlur($coiltempnut0, true, 3, 500, 300, false);
//	SetBlur($coiltempnut1, true, 3, 500, 50, true);

//	WaitKey();

	CreateSE("coilsound_mlist4","se物体_コイル_操作音02");
	CreateSE("coilsound_mlist5","se物体_コイル_システムメール展開");

	MusicStart("coilsound_mlist4",0,700,0,1000,null,false);

	Fade($coiltempnut0, 0, 1000, null, false);
	Fade($coiltemp1, 0, 1000, null, false);
	Fade($coiltemp2, 0, 1000, null, true);

	Fade("coilmlist_窓/coilmlist_欄/coilmlist_選択", 0, 0, null, false);
	Fade($coiltempnut9, 0, 1000, null, false);
	Fade($coiltempnut8, 0, 1000, null, true);

	Fade($coiltempnut9, 300, 0, null, false);

//	Move($coiltempnut, 300, @$coilmoveX2, @$coilmoveY2, Dxl1, false);
//	Move($coiltemp1, 300, @$coilmoveX2, @$coilmoveY2, Dxl1, false);
//	Move($coiltemp2, 300, @$coilmoveX2, @$coilmoveY2, Dxl1, false);
	BezierMove($coiltempnut, 500, (@0,@0){@$coilmoveXA,@$coilmoveYA}{@$coilmoveXB,@$coilmoveYA}(@$coilmoveX2,@$coilmoveY2), Dxl1, false);
	BezierMove($coiltemp1, 500, (@0,@0){@$coilmoveXA,@$coilmoveYA}{@$coilmoveXB,@$coilmoveYA}(@$coilmoveX2,@$coilmoveY2), Dxl1, false);
	BezierMove($coiltemp2, 500, (@0,@0){@$coilmoveXA,@$coilmoveYA}{@$coilmoveXB,@$coilmoveYA}(@$coilmoveX2,@$coilmoveY2), Dxl1, false);

//	WaitKey();
	Wait(500);


//////////////////////////////////////////////////////////////////////////////
//	CoilMailFade();
	$coilmailON=true;
	CoilBlack();

	MusicStart("coilsound_mlist5",0,700,0,1000,null,false);

//	WaitKey();
	Fade($coilmailbase2, 0, 1000, null, false);
	Fade($coiltemp演出色, 0, 1000, null, true);

	Move($coiltempnut0, 400, @-10, @20, Axl1, false);//移動
	Move($coiltempnut1, 400, @-20, @-10, Axl1, false);//チェック
	Move($coiltempnut3, 400, @0, @30, Axl1, false);//件名
	Move($coiltempnut4, 400, @0, @-30, Axl1, false);//人物
	Move($coiltempnut5, 400, @-20, @20, Axl1, false);//開封
	Move($coiltempnut6, 400, @30, @-20, Axl1, false);//添付

	Fade($coiltempnut0, 400, 0, null, false);
	Fade($coiltempnut1, 400, 0, null, false);
	Fade($coiltempnut3, 400, 0, null, false);
	Fade($coiltempnut4, 400, 0, null, false);
	Fade($coiltempnut5, 400, 0, null, false);
	Fade($coiltempnut6, 400, 0, null, false);

	Fade($coiltemp件名, 400, 1000, null, false);
	Fade($coiltemp人物, 400, 1000, null, false);
	Fade($coiltemp添付, 400, 1000, null, false);
	Fade($coiltemp表情, 400, 1000, null, false);
	Fade($coiltemp手紙, 400, 1000, null, false);

	Zoom($coilmailbase3, 500, 1000, 1200, Axl1, false);

	DrawTransition($coiltemp件名, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition($coiltemp人物, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition($coiltemp表情, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	Fade($coiltemp演出色, 500, 0, null, false);
	DrawTransition($coiltemp演出色, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition($coiltemp本文, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade($coiltemp本文, 400, 1000, null, false);

	Fade($coilmailbase1, 200, 1000, null, false);
	Fade($coilmailbase2, 200, 0, null, false);
	Fade($coilmailbase3, 200, 1000, null, true);

	Fade($coilmailbase3, 200, 0, null, false);

	Request($coiltempプロ, Start);

	WaitAction($coilmailbase3, null);



	Request("coilmlist_ダウンロードプロセス", Stop);
	WaitAction("coilmlist_ダウンロードプロセス", null);
	$coiltemp開封="coilmlist_窓/coilmlist_欄/開封演出"+$CoilTempNum;
	Delete($coiltemp開封);

	//▽開封
	$coiltemp開封="coilmlist_窓/coilmlist_欄/開封"+$CoilTempNum;
	Position($coiltemp開封,$X座標,$Y座標);

	$coiltempimg="cg/sys/coil/mail/コイルメール_一覧未解読アイコン.png";
	CreateTexture($coiltemp開封, 10101, $X座標, $Y座標, $coiltempimg);//10090
	SetAlias($coiltemp開封, $coiltemp開封);
//	WaitKey();


	//緊急退避・戻し
	if($LOCAL_read_text_color_change){
		#SYSTEM_read_text_color_change=$LOCAL_read_text_color_change;
	}
//////////////////////////////////////////////////////////////////////////////
	SetBacklog("　",null,null);

}

..▽NEWからのリスト遷移
function CoilMListFade_New(){

	Request("coilnew_ダウンロードプロセス", Stop);
	WaitAction("coilnew_ダウンロードプロセス", null);
	Delete("coilnew_ダウンロードプロセス");

	Position("coilnew_窓",$X座標1,$Y座標1);
	Position("coilmlist_窓",$X座標2,$Y座標2);
	$X座標=$X座標1-$X座標2-38;
	$Y座標=$Y座標1-$Y座標2-25;

	Move("coilmlist*", 0, @$X座標, @$Y座標, null, false);
	Move("coilmlist_窓/*", 0, @$X座標, @$Y座標, null, false);
	Move("coilmlist_窓/*/*", 0, @$X座標, @$Y座標, null, false);
	Move("coilmlist_窓/*/*/*", 0, @$X座標, @$Y座標, null, true);



	Zoom("coilmlist_窓", 0, 1500, 1500, DxlAuto, false);
	Zoom("coilmlist_窓/マスク２", 0, 1500, 1500, DxlAuto, false);//▼▼▼

	Zoom("@coilmlist_ベース", 0, 850, 850, DxlAuto, false);
	Zoom("@coilmlist_ベース２", 0, 750, 750, DxlAuto, false);
	Zoom("@coilmlist_ベース３", 0, 1050, 1050, DxlAuto, false);
	Move("@coilmlist_ベース３", 0, @-1, @0, Axl1, false);//★★★
	Fade("coilmlist_窓/ベース２", 0, 0, null, false);

	Fade("coilmlist_演出", 0, 0, null, false);
	Zoom("coilmlist_演出", 0, 1000, 1000, null, false);

	Fade("coilmlist_窓/coilmlist_欄/*", 0, 0, null, false);
	Fade("coilmlist_窓/coilmlist_欄/*/*", 0, 0, null, false);
	Zoom("coilmlist_窓/coilmlist_欄", 0, 1000, 1000, null, true);

//	Move("coilmlist_窓/マスク２", 0, @0, @36, null, true);//▼▼▼

	Move("coilmlist_窓/*/*/*", 0, @0, @317, Dxl1, false);
	Move("coilmlist_窓/*/*", 0, @0, @317, Dxl1, false);
	Move("coilmlist_窓/*", 0, @0, @317, Dxl1, true);

	Move("coilmlist_窓/coilmlist_欄", 0, @0, @100, Dxl1, false);
	Move("coilmlist_窓/coilmlist_欄/*", 0, @0, @100, Dxl1, false);
	Move("coilmlist_窓/coilmlist_欄/*/*", 0, @0, @100, Dxl1, true);


//////////////////////////////////////////////////////////////////////
	CreateSE("coilsound_mlist4","se物体_コイル_システムリスト展開");
	MusicStart("coilsound_mlist4",0,700,0,1000,null,false);


	Zoom("coilnew_窓", 0, 1500, 1500, Axl1, false);
	Zoom("coilnew_窓/マスク２", 0, 1500, 1500, Axl1, false);//▼▼▼

	Move("coilnew_窓/マスク２", 0, @0, @203, null, true);//▼▼▼
	Zoom("@coilnew_ベース３", 0, 1000, 1000, null, true);

	Fade("@coilnew_演出*", 0, 0, null, false);
	Fade("@coilnew_ベース２", 0, 1000, null, false);
	Fade("@coilnew_ベース３", 0, 1000, null, true);

//	WaitKey();

//	Zoom("coilnew_消去", 500, 1100, 0, null, false);
//	Fade("coilnew_消去", 500, 1000, Dxl3, false);

//	Fade("coilnew_演出", 300, 1000, null, false);
//	Zoom("coilnew_演出", 400, 750, 0, Axl1, false);

	Move("coilnew_窓/マスク２", 500, @0, @100, null, false);//延命策//▼▼▼

	Zoom("@coilnew_ベース３", 200, 1100, 1200, null, false);
	Fade("@coilnew_ベース３", 500, 0, null, false);
	Fade("@coilnew_ベース２", 500, 0, null, false);
	Fade("@coilnew_ベース", 500, 0, null, false);


//	Zoom("coilnew_窓", 500, 1200, 1200, Axl1, false);
	Zoom("@coilnew_ベース２", 500, 1200, 1200, Axl1, false);
	Zoom("@coilnew_ベース", 500, 1200, 1200, Axl1, false);

	DrawTransition("@coilnew_ベース２", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

//	Fade("coilnew_演出", 400, 0, Axl3, false);
//	Rotate("coilnew_演出", 400, @-90, @0, @0, Axl3, false);

////////////////////////////////
	Wait(100);
////////////////////////////////

//	WaitKey();
	$coilnewON=false;
	$coilmlistON=true;
	CoilBlack();

//	DrawTransition("coilmlist_窓/ベース", 600, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition("coilmlist_窓/ベース２", 600, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	Zoom("@coilmlist_ベース", 500, 1000, 1000, DxlAuto, false);
	Zoom("@coilmlist_ベース２", 500, 1000, 1000, DxlAuto, false);
	Fade("coilmlist_窓/ベース２", 200, 500, null, false);
	Wait(100);

	Move("coilmlist_窓/マスク２", 0, @0, @-315, null, false);//▼▼▼
	Fade("coilmlist_窓/ベース", 300, 1000, null, false);

	Zoom("@coilmlist_ベース３", 600, 1010, 1010, Axl1, false);
	Fade("@coilmlist_ベース３", 200, 1000, null, true);
//	WaitKey();

	Move("coilmlist_窓/マスク２", 400, @0, @-100, null, false);//延命策//▼▼▼

	Fade("coilmlist_窓/ベース２", 300, 0, null, false);

	Fade("coilmlist_窓/coilmlist_欄/*", 400, 1000, null, false);
	Fade("coilmlist_窓/coilmlist_欄/*/*", 400, 1000, null, false);
	Move("coilmlist_窓/coilmlist_欄/*/*", 400, @300, @0, Dxl1, false);

//	WaitKey();
	Fade("@coilmlist_ベース３", 400, 0, Axl2, false);

//	Move("@coilmlist_ベース３", 0, @1, @0, Axl1, false);//★★★

	Request("coilnew_窓/*/*", Disused);
	Request("coilnew_窓/*", Disused);
	Request("coilnew_演出", Disused);
	Request("coilnew_消去", Disused);

}
















.■メール
..▽メールセット（10200～10299）
function CoilMailSet($CoilMail番号,$coilmailX, $coilmailY){

	WaitAction("@coilmlist_ベース３", null);
//	WaitAction("@coilmlist_ベース", null);


	VariableValue($,$CoilMail番号+"_カテ",1);

	CreateWindow("coilmail_窓", 20000, $coilmailX, $coilmailY, 396, 576, false);
	SetAlias("coilmail_窓", "coilmail_窓");

	CreateTexture("coilmail_窓/ベース", 10200, $coilmailX, $coilmailY, "cg/sys/coil/mail/コイルメール_メール枠.png");
	SetAlias("coilmail_窓/ベース", "coilmail_ベース");
	CreateTexture("coilmail_窓/ベース２", 10206, $coilmailX, $coilmailY, "cg/sys/coil/mail/コイルメール_メール枠.png");
	SetAlias("coilmail_窓/ベース２", "coilmail_ベース２");
	SetTone("coilmail_窓/ベース２", Monochrome);

	CreateTexture("coilmail_窓/黒", 10206, $coilmailX, $coilmailY, "cg/sys/coil/mail/コイルメール_メール枠_黒.png");
	SetAlias("coilmail_窓/黒", "coilmail_黒");
	Fade("coilmail_窓/黒", 0, 0, null, true);

//	CreateTexture("coilmail_窓/演出１", 10100, $coilmailX, $coilmailY, "cg/sys/coil/mail/コイルメール_着信演出3.png");
//	SetAlias("coilmail_窓/演出１", "coilmail_演出１");
//	Request("coilmail_窓/演出１", AddRender);
//	CreateTexture("coilmail_窓/演出２", 10100, $coilmailX, $coilmailY, "cg/sys/coil/mail/コイルメール_着信演出2.png");
//	SetAlias("coilmail_窓/演出２", "coilmail_演出２");
//	Request("coilmail_窓/演出２", OverlayRender);

	CreateMask("coilmail_窓/マスク２", 200, $coilmailX, $coilmailY, "cg/sys/coil/mail/コイル演出トランジ3.png", false);
	SetAlias("coilmail_窓/マスク２", "coilmail_窓/マスク２");
	CreateTexture("coilmail_窓/マスク２/ベース３", 10200, $coilmailX, $coilmailY, "cg/sys/coil/mail/コイルメール_メール枠.png");
	SetAlias("coilmail_窓/マスク２/ベース３", "coilmail_ベース３");
	Request("coilmail_窓/マスク２/ベース３", AddRender);


//	VariableValue($,$CoilMail番号+"_人物");
//	VariableValue($,$CoilMail番号+"_件名");
//	VariableValue($,$CoilMail番号+"_添付");
//	VariableValue($,$CoilMail番号+"_開封");


	$CoilPreX=$coilmailX;
	$CoilPreY=$coilmailY;

	//▽件名
	SetFont("ＭＳ ゴシック", 13, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$coilmailX+93;
	$coiltempY=$coilmailY+64;
	$coiltempnut2="coilmail_窓/件名窓";
	CreateWindow($coiltempnut2, 150, $coiltempX, $coiltempY, 170, 50, false);
	SetAlias($coiltempnut2, $coiltempnut2);

	$coiltempnut=$coiltempnut2+"/件名";
	$coiltempimg=VariableValue($,$CoilMail番号+"_件名");
	$temp=String("<SPAN size=0>%s</SPAN>",VariableValue($,$CoilMail番号+"_件名"));
	CreateText($coiltempnut, 10200, $coiltempX, $coiltempY, Auto, Auto, $temp);
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, NoLog);
	$coiltempimg="件名【"+$coiltempimg+"】";
	SetBacklog("　",null,null);
	SetBacklog($coiltempimg,null,null);

	//▽人物
	SetFont("ＭＳ ゴシック", 13, FFFFFF, 000000, MEDIUM, NULL);
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
	$coiltempX=$CoilPreX+93;
	$coiltempY=$CoilPreY+37;
	$coiltempnut="coilmail_窓/人物";
	$coiltempimg=VariableValue($,$CoilMail番号+"_人物");
	CreateText($coiltempnut, 10200, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, NoLog);
	$coiltempimg="差出人【"+$coiltempimg+"】";
	SetBacklog($coiltempimg,null,null);

	//▽添付
	$coiltempX=$CoilPreX+343;
	$coiltempY=$CoilPreY+26;
	$coiltempnut="coilmail_窓/添付";
	$coiltempnut2="coilmail_窓/添付点滅";
	$coiltempimg="cg/sys/coil/mail/コイルメール_メールテンプ.png";

	if(VariableValue($,$CoilMail番号+"_添付")){
		CreateTexture($coiltempnut, 10200, $coiltempX, $coiltempY, $coiltempimg);
		SetAlias($coiltempnut, $coiltempnut);
		CreateTexture($coiltempnut2, 10200, $coiltempX, $coiltempY, $coiltempimg);
		SetAlias($coiltempnut2, $coiltempnut2);
		Request($coiltempnut2, AddRender);

		CreateProcess("coilmail_ダウンロードプロセス", 150, 0, 0, "CoilMailPro");
		SetAlias("coilmail_ダウンロードプロセス", "coilmail_ダウンロードプロセス");
	}

	//▽表情
	$coiltempX=$CoilPreX+29;
	$coiltempY=$CoilPreY+35;
	$coiltempnut="coilmail_窓/表情";
	$coiltempimg=VariableValue($,$CoilMail番号+"_人物");

	if($coiltempimg=="紅雀"||$coiltempimg=="クリア"||$coiltempimg=="羽賀"){
	}else{
		$coiltempimg="デフォ";
	}
	$coiltempimg="cg/sys/coil/mail/コイルメール_メール"+$coiltempimg+"アイコン.png";
	CreateTexture($coiltempnut, 10200, $coiltempX, $coiltempY, $coiltempimg);
	SetAlias($coiltempnut, $coiltempnut);

	//▽テキスト
	SetFont("ＭＳ ゴシック", 15, FFFFFF, 000000, MEDIUM, NULL);
	$coiltempX=$CoilPreX+32;
	$coiltempY=$CoilPreY+101;

	$coiltempnut2="coilmail_窓/mail";
	CreateWindow($coiltempnut2, 10200, $coiltempX, $coiltempY, 350, 140, false);
	SetAlias($coiltempnut2, "mail");

	MailText();

	//緊急退避
	$LOCAL_read_text_color_change=#SYSTEM_read_text_color_change;
	#SYSTEM_read_text_color_change=false;

	$coilmail_text="@"+$CoilMail番号;
//	LoadText($SYSTEM_present_process,$SYSTEM_present_preprocess,$SYSTEM_present_text,300,200,0,20);
	LoadText("MailText","@mail",$coilmail_text,350,300,-1,18);
	Fade($coilmail_text, 0, 0, null, false);
	Request($coilmail_text, Enter);
	Move($coilmail_text, 0, $coiltempX, $coiltempY, null, true);

//	Request($SYSTEM_present_text, Erase);
//	Request($SYSTEM_present_text, Lock);
//	Request($SYSTEM_present_text, Hideable);

	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilmail_窓/*", PushText);
	Request("coilmail_窓/*/*", PushText);
	Request($coilmail_text, PushText);

	//▽演出
	$coilmail_V=ImageVertical($coilmail_text);
	CreateColor("coilmail_窓/coilmail_演出色", 10200, $coiltempX, $coiltempY, 350, $coilmail_V, "41a4ae");//WHITE
	SetAlias("coilmail_窓/coilmail_演出色", "coilmail_演出色");
	Request("coilmail_窓/coilmail_演出色", AddRender);





	$coilmailX4=$coilmailX-20;
	$coilmailY4=$coilmailY-8;
	CreateTexture("coilmail_演出", 10205, $coilmailX4, $coilmailY4, "cg/sys/coil/mail/コイル演出3.png");
	SetAlias("coilmail_演出", "coilmail_演出");
	Request("coilmail_演出", AddRender);
	Fade("coilmail_演出", 0, 0, null, true);
	Zoom("coilmail_演出", 0, 1000, 0, Dxl1, true);


	CreateTexture("coilmail_消去", 10205, $coilmailX, $coilmailY, "cg/sys/coil/mail/コイルメール_本文演出.png");
	SetAlias("coilmail_消去", "coilmail_消去");
	Request("coilmail_消去", AddRender);
	Fade("coilmail_消去", 0, 0, null, true);
	SetVertex("coilmail_消去", 130, 0);
	Zoom("coilmail_消去", 0, 1200, 1000, null, false);


//	CreateProcess("coilmail_ダウンロードプロセス", 150, 0, 0, "CoilNewPro");
//	SetAlias("coilmail_ダウンロードプロセス", "coilmail_ダウンロードプロセス");

	Move("coilmail_窓/*", 0, @0, @-295, Dxl1, false);
	Move("coilmail_窓/*/*", 0, @0, @-295, Dxl1, false);
	Move("coilmail_窓/*/*/*", 0, @0, @-295, Dxl1, true);

	Fade("@coilmail_ベース３", 0, 0, null, false);
	Fade("coilmail_窓/ベース", 0, 750, null, true);

//	SetVertex("@coilmail_ベース３", 168, 0);
//	Zoom("@coilmail_ベース３", 0, 1000, 500, null, true);

	SetVertex("@coilmail_ベース", 198, 0);
	Zoom("@coilmail_ベース", 0, 1000, 1000, null, true);
	Fade("@coilmail_ベース", 0, 0, null, true);

	//開封
	$CoilMailTemp=VariableValue($,$CoilMail番号+"_num");
	VariableValue($,"CoilMail開封"+$CoilMailTemp,true);

	CreateSE("coilsound_mail1","se物体_コイル_システムオープン");
	CreateSE("coilsound_mail2","se物体_コイル_システムクローズ");
}


..▽メール表示
function CoilMailFade(){
	MusicStart("coilsound_mail1",0,700,0,1000,null,false);

	Zoom("@coilmail_ベース", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilmail_演出*", 800, 0, null, false);

//	Fade("coilmail_演出", 0, 350, null, false);
//	Zoom("coilmail_演出", 200, 1500, 200, null, false);

//	Fade("coilmail_窓/ベース２", 300, 500, null, false);
//	Fade("coilmail_窓/ベース", 300, 1000, null, false);
//	Move("coilmail_窓/*/*", 300, @0, @36, Dxl1, false);
//	Move("coilmail_窓/*", 300, @0, @36, Dxl1, true);

	Fade("coilmail_演出", 0, 350, null, false);
	Zoom("coilmail_演出", 150, 1500, 200, null, false);

	Fade("coilmail_窓/ベース２", 200, 500, null, false);
//	Fade("coilmail_窓/ベース", 200, 1000, null, false);
	Move("coilmail_窓/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmail_窓/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmail_窓/*", 200, @0, @36, Dxl1, true);


//	WaitKey();
	$coilmailON=true;
	CoilBlack();

	Fade("coilmail_演出", 0, 1000, null, true);

	DrawTransition("coilmail_窓/coilmail_演出色", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition($coilmail_text, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade($coilmail_text, 400, 1000, null, false);

	Fade("coilmail_窓/ベース", 200, 1000, null, false);
	Fade("coilmail_窓/ベース２", 200, 0, null, false);
	Fade("@coilmail_ベース３", 200, 1000, null, false);

	Fade("coilmail_演出", 500, 0, Axl2, false);
	Zoom("coilmail_演出", 200, 1000, 1000, null, false);

	Move("coilmail_窓/*/*/*", 500, @0, @259, Dxl1, false);
	Move("coilmail_窓/*/*", 500, @0, @259, Dxl1, false);
	Move("coilmail_窓/*", 500, @0, @259, Dxl1, false);

//	Move("coilmail_窓/マスク２", 500, @0, @-313, null, false);
	Move("coilmail_窓/マスク２", 500, @0, @-293, null, false);

	Zoom("@coilmail_ベース３", 500, 1000, 1200, Axl1, false);

	Request("coilmail_ダウンロードプロセス", Start);

	//緊急退避・戻し
	if($LOCAL_read_text_color_change){
		#SYSTEM_read_text_color_change=$LOCAL_read_text_color_change;
	}

	SetBacklog("　",null,null);
}




..▽メール表示プロセス（添付あり）
function CoilMailPro(){
	WaitAction("@coilmail_窓/*", null);

	while(1){
		Fade("@coilmail_窓/添付点滅", 700, 1000, Axl1, true);
		Fade("@coilmail_窓/添付点滅", 400, 32, null, true);
	}
}




..▽メール表示フェード消し
function CoilMailDelete(){

	Position("@coilmail_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilmail_ベース３", 0, 0, null, false);
	Zoom("@coilmail_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilmail_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);


	Request("coilmail_ダウンロードプロセス", Stop);
	WaitAction("coilmail_ダウンロードプロセス", null);

	Fade("@coilmail_演出*", 0, 0, null, false);
	Fade("@coilmail_ベース３", 0, 1000, null, false);

	Zoom("coilmail_演出", 0, 1500, 300, null, false);
	Fade("coilmail_演出", 0, 250, null, true);

//	WaitKey();
	$coilmailON=false;
	CoilBlack();

	MusicStart("coilsound_mail2",0,700,0,1000,null,false);

	Zoom("coilmail_消去", 500, 1100, 0, null, false);
	Fade("coilmail_消去", 500, 1000, Dxl3, false);

	Fade("coilmail_演出", 300, 1000, null, false);
	Zoom("coilmail_演出", 400, 750, 0, Axl1, false);

//	Zoom("@coilmail_ベース３", 50, 1000, 1500, null, false);
	Fade("@coilmail_ベース３", 50, 0, null, false);
	Fade("@coilmail_ベース", 500, 500, null, false);

	Move("coilmail_窓/*/*", 500, @0, @-295, Dxl1, false);
	Move("coilmail_窓/*", 500, @0, @-295, Dxl1, false);

	Zoom("@coilmail_ベース２", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilmail_ベース", 500, 1000, 750, AxlAuto, false);

//	Fade("coilmail_演出", 400, 0, Axl3, false);
//	Rotate("coilmail_演出", 400, @-90, @0, @0, Axl3, false);

	Fade($coilmailnow, 500, 0, null, false);

	Delete("coilmail_ダウンロードプロセス");
	Request("coilmail_窓/*/*", Disused);
	Request("coilmail_窓/*", Disused);
	Request("coilmail_演出", Disused);
	Request("coilmail_消去", Disused);
	Request($coilmailnow, Disused);
}




.■メール2
..▽メールセット
function CoilMailSet2($CoilMail番号,$coilmail2X, $coilmail2Y){

	VariableValue($,$CoilMail番号+"_カテ",2);

	CreateWindow("coilmail2_窓", 20000, $coilmail2X, $coilmail2Y, 396, 576, false);
	SetAlias("coilmail2_窓", "coilmail2_窓");

	CreateTexture("coilmail2_窓/ベース", 10210, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/コイルメール_メール枠.png");
	SetAlias("coilmail2_窓/ベース", "coilmail2_ベース");
	CreateTexture("coilmail2_窓/ベース２", 10216, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/コイルメール_メール枠.png");
	SetAlias("coilmail2_窓/ベース２", "coilmail2_ベース２");
	SetTone("coilmail2_窓/ベース２", Monochrome);

	CreateTexture("coilmail2_窓/黒", 10216, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/コイルメール_メール枠_黒.png");
	SetAlias("coilmail2_窓/黒", "coilmail2_黒");
	Fade("coilmail2_窓/黒", 0, 0, null, true);

//	CreateTexture("coilmail2_窓/演出１", 10100, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/コイルメール_着信演出3.png");
//	SetAlias("coilmail2_窓/演出１", "coilmail2_演出１");
//	Request("coilmail2_窓/演出１", AddRender);
//	CreateTexture("coilmail2_窓/演出２", 10100, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/コイルメール_着信演出2.png");
//	SetAlias("coilmail2_窓/演出２", "coilmail2_演出２");
//	Request("coilmail2_窓/演出２", OverlayRender);

	CreateMask("coilmail2_窓/マスク２", 200, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/コイル演出トランジ3.png", false);
	SetAlias("coilmail2_窓/マスク２", "coilmail2_窓/マスク２");
	CreateTexture("coilmail2_窓/マスク２/ベース３", 10210, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/コイルメール_メール枠.png");
	SetAlias("coilmail2_窓/マスク２/ベース３", "coilmail2_ベース３");
	Request("coilmail2_窓/マスク２/ベース３", AddRender);


//	VariableValue($,$CoilMail番号+"_人物");
//	VariableValue($,$CoilMail番号+"_件名");
//	VariableValue($,$CoilMail番号+"_添付");
//	VariableValue($,$CoilMail番号+"_開封");


	$CoilPreX=$coilmail2X;
	$CoilPreY=$coilmail2Y;

	//▽件名
	SetFont("ＭＳ ゴシック", 13, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$coilmail2X+93;
	$coiltempY=$coilmail2Y+64;
	$coiltempnut2="coilmail2_窓/件名窓";
	CreateWindow($coiltempnut2, 150, $coiltempX, $coiltempY, 170, 50, false);
	SetAlias($coiltempnut2, $coiltempnut2);

	$coiltempnut=$coiltempnut2+"/件名";
	$coiltempimg=VariableValue($,$CoilMail番号+"_件名");
	$temp=String("<SPAN size=0>%s</SPAN>",VariableValue($,$CoilMail番号+"_件名"));
	CreateText($coiltempnut, 10210, $coiltempX, $coiltempY, Auto, Auto, $temp);
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, NoLog);
	$coiltempimg="件名【"+$coiltempimg+"】";
	SetBacklog("　",null,null);
	SetBacklog($coiltempimg,null,null);

	//▽人物
	SetFont("ＭＳ ゴシック", 13, FFFFFF, 000000, MEDIUM, NULL);
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
	$coiltempX=$CoilPreX+93;
	$coiltempY=$CoilPreY+37;
	$coiltempnut="coilmail2_窓/人物";
	$coiltempimg=VariableValue($,$CoilMail番号+"_人物");
	CreateText($coiltempnut, 10210, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, NoLog);
	$coiltempimg="差出人【"+$coiltempimg+"】";
	SetBacklog("　",null,null);
	SetBacklog($coiltempimg,null,null);

	//▽添付
	$coiltempX=$CoilPreX+343;
	$coiltempY=$CoilPreY+26;
	$coiltempnut="coilmail2_窓/添付";
	$coiltempnut2="coilmail2_窓/添付点滅";
	$coiltempimg="cg/sys/coil/mail/コイルメール_メールテンプ.png";

	if(VariableValue($,$CoilMail番号+"_添付")){
		CreateTexture($coiltempnut, 10210, $coiltempX, $coiltempY, $coiltempimg);
		SetAlias($coiltempnut, $coiltempnut);
		CreateTexture($coiltempnut2, 10210, $coiltempX, $coiltempY, $coiltempimg);
		SetAlias($coiltempnut2, $coiltempnut2);
		Request($coiltempnut2, AddRender);

		CreateProcess("coilmail2_ダウンロードプロセス", 150, 0, 0, "CoilMailPro2");
		SetAlias("coilmail2_ダウンロードプロセス", "coilmail2_ダウンロードプロセス");
	}

	//▽表情
	$coiltempX=$CoilPreX+29;
	$coiltempY=$CoilPreY+35;
	$coiltempnut="coilmail2_窓/表情";
	$coiltempimg=VariableValue($,$CoilMail番号+"_人物");

	if($coiltempimg=="紅雀"||$coiltempimg=="クリア"||$coiltempimg=="羽賀"){
	}else{
		$coiltempimg="デフォ";
	}
	$coiltempimg="cg/sys/coil/mail/コイルメール_メール"+$coiltempimg+"アイコン.png";
	CreateTexture($coiltempnut, 10210, $coiltempX, $coiltempY, $coiltempimg);
	SetAlias($coiltempnut, $coiltempnut);

	//▽テキスト
	SetFont("ＭＳ ゴシック", 15, FFFFFF, 000000, MEDIUM, NULL);
	$coiltempX=$CoilPreX+32;
	$coiltempY=$CoilPreY+101;

	$coiltempnut2="coilmail2_窓/mail";
	CreateWindow($coiltempnut2, 10210, $coiltempX, $coiltempY, 350, 140, false);
	SetAlias($coiltempnut2, "mail");

	MailText();

	//緊急退避
	$LOCAL_read_text_color_change=#SYSTEM_read_text_color_change;
	#SYSTEM_read_text_color_change=false;

	$coilmail2_text="@"+$CoilMail番号;
//	LoadText($SYSTEM_present_process,$SYSTEM_present_preprocess,$SYSTEM_present_text,300,200,0,20);
	LoadText("MailText","@mail",$coilmail2_text,350,300,-3,18);
	Fade($coilmail2_text, 0, 0, null, false);
	Request($coilmail2_text, Enter);
	Move($coilmail2_text, 0, $coiltempX, $coiltempY, null, true);

//	Request($SYSTEM_present_text, Erase);
//	Request($SYSTEM_present_text, Lock);
//	Request($SYSTEM_present_text, Hideable);

	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilmail2_窓/*", PushText);
	Request("coilmail2_窓/*/*", PushText);
	Request($coilmail2_text, PushText);

	//▽演出
	$coilmail2_V=ImageVertical($coilmail_text);
	CreateColor("coilmail2_窓/coilmail2_演出色", 10210, $coiltempX, $coiltempY, 350, $coilmail2_V, "41a4ae");//WHITE
	SetAlias("coilmail2_窓/coilmail2_演出色", "coilmail2_演出色");
	Request("coilmail2_窓/coilmail2_演出色", AddRender);



	$coilmail2X4=$coilmail2X-20;
	$coilmail2Y4=$coilmail2Y-8;
	CreateTexture("coilmail2_演出", 10215, $coilmail2X4, $coilmail2Y4, "cg/sys/coil/mail/コイル演出3.png");
	SetAlias("coilmail2_演出", "coilmail2_演出");
	Request("coilmail2_演出", AddRender);
	Fade("coilmail2_演出", 0, 0, null, true);
	Zoom("coilmail2_演出", 0, 1000, 0, Dxl1, true);


	CreateTexture("coilmail2_消去", 10215, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/コイルメール_本文演出.png");
	SetAlias("coilmail2_消去", "coilmail2_消去");
	Request("coilmail2_消去", AddRender);
	Fade("coilmail2_消去", 0, 0, null, true);
	SetVertex("coilmail2_消去", 130, 0);
	Zoom("coilmail2_消去", 0, 1200, 1000, null, false);


//	CreateProcess("coilmail2_ダウンロードプロセス", 150, 0, 0, "CoilNewPro");
//	SetAlias("coilmail2_ダウンロードプロセス", "coilmail2_ダウンロードプロセス");

	Move("coilmail2_窓/*", 0, @0, @-295, Dxl1, false);
	Move("coilmail2_窓/*/*", 0, @0, @-295, Dxl1, false);
	Move("coilmail2_窓/*/*/*", 0, @0, @-295, Dxl1, true);

	Fade("@coilmail2_ベース３", 0, 0, null, false);
	Fade("coilmail2_窓/ベース", 0, 750, null, true);

//	SetVertex("@coilmail2_ベース３", 168, 0);
//	Zoom("@coilmail2_ベース３", 0, 1000, 500, null, true);

	SetVertex("@coilmail2_ベース", 198, 0);
	Zoom("@coilmail2_ベース", 0, 1000, 1000, null, true);
	Fade("@coilmail2_ベース", 0, 0, null, true);

	//開封
	$CoilMailTemp=VariableValue($,$CoilMail番号+"_num");
	VariableValue($,"CoilMail開封"+$CoilMailTemp,true);

	CreateSE("coilsound2_mail1","se物体_コイル_システムオープン");
	CreateSE("coilsound2_mail2","se物体_コイル_システムクローズ");
}


..▽メール表示
function CoilMailFade2(){
	MusicStart("coilsound2_mail1",0,700,0,1000,null,false);

	Zoom("@coilmail2_ベース", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilmail2_演出*", 800, 0, null, false);

//	Fade("coilmail2_演出", 0, 350, null, false);
//	Zoom("coilmail2_演出", 200, 1500, 200, null, false);

//	Fade("coilmail2_窓/ベース２", 300, 500, null, false);
//	Fade("coilmail2_窓/ベース", 300, 1000, null, false);
//	Move("coilmail2_窓/*/*", 300, @0, @36, Dxl1, false);
//	Move("coilmail2_窓/*", 300, @0, @36, Dxl1, true);

	Fade("coilmail2_演出", 0, 350, null, false);
	Zoom("coilmail2_演出", 150, 1500, 200, null, false);

	Fade("coilmail2_窓/ベース２", 200, 500, null, false);
//	Fade("coilmail2_窓/ベース", 200, 1000, null, false);
	Move("coilmail2_窓/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmail2_窓/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmail2_窓/*", 200, @0, @36, Dxl1, true);


//	WaitKey();
	$coilmail2ON=true;
	CoilBlack();

	Fade("coilmail2_演出", 0, 1000, null, true);

	DrawTransition("coilmail2_窓/coilmail2_演出色", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition($coilmail2_text, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade($coilmail2_text, 400, 1000, null, false);

	Fade("coilmail2_窓/ベース", 200, 1000, null, false);
	Fade("coilmail2_窓/ベース２", 200, 0, null, false);
	Fade("@coilmail2_ベース３", 200, 1000, null, false);

	Fade("coilmail2_演出", 500, 0, Axl2, false);
	Zoom("coilmail2_演出", 200, 1000, 1000, null, false);

	Move("coilmail2_窓/*/*/*", 500, @0, @259, Dxl1, false);
	Move("coilmail2_窓/*/*", 500, @0, @259, Dxl1, false);
	Move("coilmail2_窓/*", 500, @0, @259, Dxl1, false);

//	Move("coilmail2_窓/マスク２", 500, @0, @-313, null, false);
	Move("coilmail2_窓/マスク２", 500, @0, @-293, null, false);

	Zoom("@coilmail2_ベース３", 500, 1000, 1200, Axl1, false);

	Request("coilmail2_ダウンロードプロセス", Start);

	//緊急退避・戻し
	if($LOCAL_read_text_color_change){
		#SYSTEM_read_text_color_change=$LOCAL_read_text_color_change;
	}

	SetBacklog("　",null,null);
}




..▽メール表示プロセス（添付あり）
function CoilMailPro2(){
	WaitAction("@coilmail2_窓/*", null);

	while(1){
		Fade("@coilmail2_窓/添付点滅", 700, 1000, Axl1, true);
		Fade("@coilmail2_窓/添付点滅", 400, 32, null, true);
	}
}




..▽メール表示フェード消し
function CoilMailDelete2(){

	Position("@coilmail2_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilmail2_ベース３", 0, 0, null, false);
	Zoom("@coilmail2_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilmail2_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);


	Request("coilmail2_ダウンロードプロセス", Stop);
	WaitAction("coilmail2_ダウンロードプロセス", null);

	Fade("@coilmail2_演出*", 0, 0, null, false);
	Fade("@coilmail2_ベース３", 0, 1000, null, false);

	Zoom("coilmail2_演出", 0, 1500, 300, null, false);
	Fade("coilmail2_演出", 0, 250, null, true);

//	WaitKey();
	$coilmail2ON=false;
	CoilBlack();

	MusicStart("coilsound2_mail2",0,700,0,1000,null,false);

	Zoom("coilmail2_消去", 500, 1100, 0, null, false);
	Fade("coilmail2_消去", 500, 1000, Dxl3, false);

	Fade("coilmail2_演出", 300, 1000, null, false);
	Zoom("coilmail2_演出", 400, 750, 0, Axl1, false);

//	Zoom("@coilmail2_ベース３", 50, 1000, 1500, null, false);
	Fade("@coilmail2_ベース３", 50, 0, null, false);
	Fade("@coilmail2_ベース", 500, 500, null, false);

	Move("coilmail2_窓/*/*", 500, @0, @-295, Dxl1, false);
	Move("coilmail2_窓/*", 500, @0, @-295, Dxl1, false);

	Zoom("@coilmail2_ベース２", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilmail2_ベース", 500, 1000, 750, AxlAuto, false);

//	Fade("coilmail2_演出", 400, 0, Axl3, false);
//	Rotate("coilmail2_演出", 400, @-90, @0, @0, Axl3, false);

	Fade($coilmail2now, 500, 0, null, false);

	Delete("coilmail2_ダウンロードプロセス");
	Request("coilmail2_窓/*/*", Disused);
	Request("coilmail2_窓/*", Disused);
	Request("coilmail2_演出", Disused);
	Request("coilmail2_消去", Disused);
	Request($coilmail2now, Disused);
}









.■ゲームダウンロード中！
..▽優先度１（10900～10909）
function CoilDownSet($coildownX,$coildownY){

	$CoilDownNum=1;

	$CoilDownSetPri=10900;
	CoilDownSetBase();
}

..▽優先度２（10900～10909）
function CoilDownSetPri($coildownX,$coildownY,$CoilDownSetPri){
	$CoilDownNum=2;

	CoilDownSetBase();
}



..▽定義（10900～10909）
function CoilDownSetBase(){
//382
//159

	CreateWindow("coildown_窓", 20000, $coildownX, $coildownY, 260, 576, false);
	SetAlias("coildown_窓", "coildown_窓");

	$CoilDownSetPriTemp=$CoilDownSetPri+9;
	CreateTexture("coildown_窓/ベース", $CoilDownSetPri, $coildownX, $coildownY, "cg/sys/coil/window/コイルメール_インスト枠.png");//10400
	SetAlias("coildown_窓/ベース", "coildown_ベース");
	CreateTexture("coildown_窓/ベース２", $CoilDownSetPriTemp, $coildownX, $coildownY, "cg/sys/coil/window/コイルメール_インスト枠.png");//10900
	SetAlias("coildown_窓/ベース２", "coildown_ベース２");
	SetTone("coildown_窓/ベース２", Monochrome);

	$CoilDownSetPriTemp=$CoilDownSetPri+9;
	CreateTexture("coildown_窓/黒", $CoilDownSetPriTemp, $coildownX, $coildownY, "cg/sys/coil/window/コイルメール_インスト枠_黒.png");//10900
	SetAlias("coildown_窓/黒", "coildown_黒");
	Fade("coildown_窓/黒", 0, 0, null, true);

//	CreateTexture("coildown_窓/ベース３", 10100, $coildownX, $coildownY, "cg/sys/coil/window/コイルメール_インスト枠.png");
//	SetAlias("coildown_窓/ベース３", "coildown_ベース３");
//	Request("coildown_窓/ベース３", AddRender);

	$CoilDownSetPriTemp=$CoilDownSetPri+5;
	CreateMask("coildown_窓/マスク２", 200, $coildownX, $coildownY, "cg/sys/coil/window/コイル演出トランジ.png", false);
	SetAlias("coildown_窓/マスク２", "coildown_窓/マスク２");
	CreateTexture("coildown_窓/マスク２/ベース３", $CoilDownSetPriTemp, $coildownX, $coildownY, "cg/sys/coil/window/コイルメール_インスト枠.png");//10500
	SetAlias("coildown_窓/マスク２/ベース３", "coildown_ベース３");
	Request("coildown_窓/マスク２/ベース３", AddRender);


	$CoilDownSetPriTemp=$CoilDownSetPri+1;
	$coildownX2=$coildownX+28;
	$coildownY2=$coildownY+63;
	CreateTexture("coildown_窓/枠", $CoilDownSetPriTemp, $coildownX2, $coildownY2, "cg/sys/coil/window/コイルメール_ゲージ枠.png");//10410
	SetAlias("coildown_窓/枠", "coildown_枠");
	CreateTexture("coildown_窓/ロード", $CoilDownSetPriTemp, $coildownX2, $coildownY2, "cg/sys/coil/window/コイルメール_ゲージロード2.png");//10420
	SetAlias("coildown_窓/ロード", "coildown_ロード");

	CreateWindow("coildown_窓/マスク", 20000, $coildownX, $coildownY, 260, 144, false);
	SetAlias("coildown_窓/マスク", "coildown_窓/マスク");
	CreateTexture("coildown_窓/マスク/バー", $CoilDownSetPriTemp, $coildownX2, $coildownY2, "cg/sys/coil/window/コイルメール_ゲージバー2.png");//10420
	SetAlias("coildown_窓/マスク/バー", "coildown_バー");

	$coildownX3=$coildownX+54;
	$coildownY3=$coildownY+44;
	CreateTexture("coildown_窓/ダウンロード", $CoilDownSetPri, $coildownX3, $coildownY3, "cg/sys/coil/window/コイルメール_インスト表示DOWNLOADING.png");//10400
	SetAlias("coildown_窓/ダウンロード", "coildown_ダウンロード");
	CreateTexture("coildown_窓/コンプリート", $CoilDownSetPri, $coildownX3, $coildownY3, "cg/sys/coil/window/コイルメール_インスト表示COMPLETED.png");//10400
	SetAlias("coildown_窓/コンプリート", "coildown_コンプリート");
	CreateTexture("coildown_窓/コンプリート２", $CoilDownSetPri, $coildownX3, $coildownY3, "cg/sys/coil/window/コイルメール_インスト表示COMPLETED.png");//10400
	SetAlias("coildown_窓/コンプリート２", "coildown_コンプリート２");
	Request("coildown_窓/コンプリート２", AddRender);

	$CoilDownSetPriTemp=$CoilDownSetPri+4;
	$coildownX4=$coildownX-20;
	$coildownY4=$coildownY-8;
	CreateTexture("coildown_演出", $CoilDownSetPriTemp, $coildownX4, $coildownY4, "cg/sys/coil/window/コイル演出.png");//10430
	SetAlias("coildown_演出", "coildown_演出");
	Request("coildown_演出", AddRender);
	Fade("coildown_演出", 0, 0, null, true);
	Zoom("coildown_演出", 0, 1000, 0, Dxl1, true);

	$CoilDownSetPriTemp=$CoilDownSetPri+6;
	CreateTexture("coildown_消去", $CoilDownSetPriTemp, $coildownX, $coildownY, "cg/sys/coil/window/コイルメール_着信演出.png");//10530
	SetAlias("coildown_消去", "coildown_消去");
	Request("coildown_消去", AddRender);
	Fade("coildown_消去", 0, 0, null, true);
	SetVertex("coildown_消去", 130, 0);
	Zoom("coildown_消去", 0, 1200, 1000, null, false);


	Move("coildown_窓/マスク", 0, @-260, @0, Dxl1, true);
	Move("coildown_窓/*", 0, @0, @-159, Dxl1, false);
	Move("coildown_窓/*/*", 0, @0, @-159, Dxl1, true);

	SetVertex("coildown_窓/ダウンロード", 75, 20);
	Zoom("coildown_窓/ダウンロード", 0, 1000, 5000, null, false);
//	Rotate("coildown_窓/ダウンロード", 0, @0, @30, @0, null, true);

	Fade("coildown_窓/枠", 0, 0, null, false);
	Fade("coildown_窓/ロード", 0, 0, null, false);
	Fade("coildown_窓/ダウンロード", 0, 0, null, false);
	Fade("coildown_窓/コンプリート", 0, 0, null, false);
	Fade("coildown_窓/コンプリート２", 0, 0, null, false);

	Fade("@coildown_ベース３", 0, 0, null, false);
	Fade("coildown_窓/ベース", 0, 750, null, true);

	CreateSE("coilsound_down1","se物体_コイル_システムオープン");
	CreateSE("coilsound_down2","se物体_コイル_システムクローズ");
	CreateSE("coilsound_down3","se物体_コイル_ゲージ溜まる01L");
	CreateSE("coilsound_down4","se物体_コイル_システムアラート");
}



..▽ダウンロード表示
function CoilDownFade(){
	MusicStart("coilsound_down1",0,700,0,1000,null,false);

	Fade("coildown_演出", 0, 350, null, false);
	Zoom("coildown_演出", 200, 1500, 200, null, false);

	Fade("coildown_窓/ベース２", 300, 500, null, false);
	Fade("coildown_窓/ベース", 300, 200, null, false);
	Move("coildown_窓/*/*", 300, @0, @35, Dxl1, false);
	Move("coildown_窓/*", 300, @0, @35, Dxl1, true);

//	WaitKey();
	if($CoilDownNum==2){
		$coildownpriON=true;
	}else{
		$coildownON=true;
	}

	CoilBlack();

	Fade("coildown_演出", 0, 1000, null, true);

	Fade("coildown_窓/ダウンロード", 0, 500, null, false);
	Zoom("coildown_窓/ダウンロード", 400, 1000, 1000, Axl2, false);
	Rotate("coildown_窓/ダウンロード", 500, 0, 0, 0, Axl2, false);

	Fade("coildown_窓/ベース", 200, 1000, null, false);
	Fade("coildown_窓/ベース２", 200, 0, null, false);
	Fade("@coildown_ベース３", 200, 1000, null, false);

	Fade("coildown_演出", 400, 0, Axl2, false);
	Zoom("coildown_演出", 200, 1000, 1000, null, false);

	Move("coildown_窓/*/*", 500, @0, @124, Dxl1, false);
	Move("coildown_窓/*", 500, @0, @124, Dxl1, false);

//	Move("coildown_窓/マスク２", 500, @0, @-130, AxlAuto, false);
//	Move("coildown_窓/マスク２", 500, @0, @-155, null, false);
	Move("coildown_窓/マスク２", 500, @0, @-155, null, false);

	Zoom("@coildown_ベース３", 500, 1000, 1200, Axl1, false);
//	WaitAction("@coildown_ベース３", null);

//	Fade("@coildown_ベース３", 100, 0, null, false);

}








..▽ダウンロード開始
function CoilDownStart(秒数){

	WaitAction("@coildown_ベース３", null);

	CreateProcess("coildown_ダウンロードプロセス", 150, 0, 0, "CoilDownPro");
	SetAlias("coildown_ダウンロードプロセス", "coildown_ダウンロードプロセス");

	SetVertex("coildown_窓/枠", 99, 33);
	SetVertex("coildown_窓/ロード", 99, 33);

	Zoom("coildown_窓/枠", 0, 1000, 0, null, true);
	Zoom("coildown_窓/ロード", 0, 1000, 0, null, true);

	MusicStart("coilsound_down3",0,700,0,1000,null,true);

	Zoom("coildown_窓/枠", 200, 1000, 1000, Dxl1, false);
	Zoom("coildown_窓/ロード", 200, 1000, 1000, Dxl1, false);

	Fade("coildown_窓/枠", 0, 1000, null, false);
	Fade("coildown_窓/ロード", 0, 1000, null, false);
	WaitAction("coildown_窓/ロード", null);

	Fade("coildown_窓/マスク/バー", 0, 500, null, true);

	Move("coildown_窓/マスク", 秒数, @260, @0, Dxl1, false);

//点滅と光
	Request("coildown_ダウンロードプロセス", Start);
}

..▽ダウンロード終了
function CoilDownComp(){
	WaitAction("coildown_窓/マスク", null);

	Request("coildown_ダウンロードプロセス", Stop);
	WaitAction("coildown_ダウンロードプロセス", null);

	SetVolumeEX("coilsound_down3", 100, 0, null);
	MusicStart("coilsound_down4",0,700,0,1000,null,false);

	Fade("coildown_窓/マスク/バー", 0, 1000, null, false);

	Fade("coildown_窓/コンプリート２", 0, 700, null, false);
	Fade("coildown_窓/ダウンロード", 0, 0, null, false);
	Fade("coildown_窓/コンプリート", 0, 1000, null, true);

	Fade("coildown_窓/コンプリート２", 300, 0, null, false);
}


..▽ダウンロードプロセス
function CoilDownPro(){
	while(1){
		Fade("@coildown_ダウンロード", 0, 1000, null, true);
		Fade("@coildown_ダウンロード", 100, 300, null, true);
//		Wait(100);
		Fade("@coildown_ダウンロード", 0, 1000, null, true);
		Fade("@coildown_ダウンロード", 100, 300, null, true);
//		Wait(100);
	}
}



..▽ダウンロード消し
function CoilDownDelete(){

	Move("coildown_窓/マスク２", 0, @0, @203, null, true);
	Zoom("@coildown_ベース３", 0, 1000, 1000, null, true);

	Fade("@coildown_演出*", 0, 0, null, false);
	Fade("@coildown_ベース３", 0, 1000, null, false);

	Zoom("coildown_演出", 0, 1500, 300, null, false);
	Fade("coildown_演出", 0, 250, null, true);

//	WaitKey();
	if($CoilDownNum==2){
		$coildownpriON=false;
	}else{
		$coildownON=false;
	}
	CoilBlack();

	MusicStart("coilsound_down2",0,700,0,1000,null,false);

	Zoom("coildown_消去", 500, 1100, 0, null, false);
	Fade("coildown_消去", 500, 1000, Dxl3, false);

	Fade("coildown_演出", 300, 1000, null, false);
	Zoom("coildown_演出", 400, 750, 0, Axl1, false);

//	Zoom("@coildown_ベース３", 50, 1000, 1500, null, false);
	Fade("@coildown_ベース３", 50, 0, null, false);
	Fade("@coildown_ベース", 500, 500, null, false);

	Move("coildown_窓/*/*", 500, @0, @-207, Dxl1, false);
	Move("coildown_窓/*", 500, @0, @-207, Dxl1, false);

	Zoom("@coildown_ベース２", 500, 1000, 750, AxlAuto, false);
	Zoom("@coildown_ベース", 500, 1000, 750, AxlAuto, false);

//	Fade("coildown_演出", 400, 0, Axl3, false);
//	Rotate("coildown_演出", 400, @-90, @0, @0, Axl3, false);


	Delete("coildown_ダウンロードプロセス");
	Request("coildown_窓/*/*", Disused);
	Request("coildown_窓/*", Disused);
	Request("coildown_演出", Disused);

}



..▽メールからのDOWN呼び出し
function CoilDownFade_Mail(){

//▼メール本文（添付あり）⇒画像表示の遷移
	Request("coilmail_ダウンロードプロセス", Stop);
	WaitAction("coilmail_ダウンロードプロセス", null);

//	$coiltempnut="coilmail_窓/添付";
//	$coiltempnut2="coilmail_窓/添付点滅";

	Position("coilmail_窓/添付",$X添付座標,$Y添付座標);
	CreateTexture("coildown_添付点滅", 10709, $X添付座標, $Y添付座標, "cg/sys/coil/mail/コイルメール_メールテンプ.png");
	SetAlias("coildown_添付点滅", "coildown_添付点滅");
	Request("coildown_添付点滅", AddRender);
	SetBlur("coildown_添付点滅", true, 2, 200, 50, true);

	CreateColor("coildown_添付演出１", 10709, $X添付座標, $Y添付座標, 43, 41, "41a4ae");
	SetAlias("coildown_添付演出１", "coildown_添付演出");
	Request("coildown_添付演出１", AddRender);
	Fade("coildown_添付演出１", 0, 0, null, true);

	CreateColor("coildown_添付演出２", 10709, $X添付座標, $Y添付座標, 43, 41, "WHITE");
	SetAlias("coildown_添付演出２", "coildown_添付演出");
	Request("coildown_添付演出２", AddRender);
	Fade("coildown_添付演出２", 0, 0, null, true);


	//588,280 500,201
	Position("coildown_窓",$X座標値,$Y座標値);
	$X座標値+=108;
	$Y座標値-=21;

	if($X添付座標>$X座標値){
		$X座標値２=$X添付座標-(($X添付座標-$X座標値)/3);
		$X座標値３=$X添付座標-(($X添付座標-$X座標値)/3*2);
	}else{
		$X座標値２=$X添付座標+(($X座標値-$X添付座標)/3);
		$X座標値３=$X添付座標+(($X座標値-$X添付座標)/3*2);
	}
	$Y座標値２=$Y座標値+100;


//////////////////////////////////////////////////////////

	CreateSE("coilsound_down5","se物体_コイル_ゲージ溜まる02L");
	CreateSE("coilsound_down6","se物体_コイル_システムオープン");

	MusicStart("coilsound_down5",0,700,0,1000,null,false);

//////////////////////////////////////////////////////////



	Fade("coilmail_窓/添付点滅", 200, 0, null, false);

//	Zoom("coildown_添付*", 700, 2000, 2000, Dxl2, false);
	BezierMove("coildown_添付*", 500, (@0,@0){$X座標値２,$Y座標値２}{$X座標値３,$Y座標値２}($X座標値,$Y座標値), Dxl1, false);
//	Move("coildown_添付*", 500, $X座標値, $Y座標値, Dxl1, false);

	DrawTransition("coildown_添付演出１", 400, 0, 1000, 100, Dxl1, "cg/data/mosaic_01_00_0.png", false);

	Rotate("coildown_添付演出２", 200, 0, 3600, 0, null, false);

	Fade("coildown_添付点滅", 200, 0, Axl2, false);
	Fade("coildown_添付演出１", 200, 1000, null, false);
	Fade("coildown_添付演出２", 200, 500, null, true);

	Fade("coildown_添付演出２", 200, 0, null, false);

	Zoom("coildown_添付*", 400, 10000, 50, Axl2, false);
	Rotate("coildown_添付*", 200, 0, @160, 0, Dxl1, true);
	Rotate("coildown_添付*", 200, 0, 0, 0, Dxl1, false);

//	Wait(100);
//	WaitKey();
////////////////////////////////////////

	Fade("coildown_添付*", 300, 0, null, false);


	Fade("coildown_演出", 0, 350, null, false);
	Zoom("coildown_演出", 200, 1500, 200, null, false);

	Fade("coildown_窓/ベース２", 300, 500, null, false);
	Fade("coildown_窓/ベース", 300, 200, null, false);
	Move("coildown_窓/*/*", 300, @0, @35, Dxl1, false);
	Move("coildown_窓/*", 300, @0, @35, Dxl1, true);

//	WaitKey();
	if($CoilDownNum==2){
		$coildownpriON=true;
	}else{
		$coildownON=true;
	}
	CoilBlack();

	MusicStart("coilsound_down6",0,700,0,1000,null,false);

	Fade("coildown_演出", 0, 1000, null, true);

	Fade("coildown_窓/ダウンロード", 0, 500, null, false);
	Zoom("coildown_窓/ダウンロード", 400, 1000, 1000, Axl2, false);
	Rotate("coildown_窓/ダウンロード", 500, 0, 0, 0, Axl2, false);

	Fade("coildown_窓/ベース", 200, 1000, null, false);
	Fade("coildown_窓/ベース２", 200, 0, null, false);
	Fade("@coildown_ベース３", 200, 1000, null, false);

	Fade("coildown_演出", 400, 0, Axl2, false);
	Zoom("coildown_演出", 200, 1000, 1000, null, false);

	Move("coildown_窓/*/*", 500, @0, @124, Dxl1, false);
	Move("coildown_窓/*", 500, @0, @124, Dxl1, false);

//	Move("coildown_窓/マスク２", 500, @0, @-130, AxlAuto, false);
//	Move("coildown_窓/マスク２", 500, @0, @-155, null, false);
	Move("coildown_窓/マスク２", 500, @0, @-155, null, false);

	Zoom("@coildown_ベース３", 500, 1000, 1200, Axl1, false);
//	WaitAction("@coildown_ベース３", null);

//	Fade("@coildown_ベース３", 100, 0, null, false);
}







.■れんきゅんめんてなんす
..▽優先度１（10900～10909）
function CoilRenSet($coilrenX,$coilrenY){

	$CoilRenNum=1;

	$CoilRenSetPri=10900;
	CoilRenSetBase();
}

..▽優先度２（10900～10909）こっちつかっちゃだめ
function CoilRenSetPri($coilrenX,$coilrenY,$CoilRenSetPri){
	$CoilRenNum=2;

	CoilRenSetBase();
}



..▽定義（10900～10909）
function CoilRenSetBase(){
//382
//159

	CreateWindow("coilren_窓", 20000, $coilrenX, $coilrenY, 260, 576, false);
	SetAlias("coilren_窓", "coilren_窓");

	$CoilRenSetPriTemp=$CoilRenSetPri+9;
	CreateTexture("coilren_窓/ベース", $CoilRenSetPri, $coilrenX, $coilrenY, "cg/sys/coil/window/コイルメール_インスト枠.png");//10400
	SetAlias("coilren_窓/ベース", "coilren_ベース");
	CreateTexture("coilren_窓/ベース２", $CoilRenSetPriTemp, $coilrenX, $coilrenY, "cg/sys/coil/window/コイルメール_インスト枠.png");//10900
	SetAlias("coilren_窓/ベース２", "coilren_ベース２");
	SetTone("coilren_窓/ベース２", Monochrome);

	$CoilRenSetPriTemp=$CoilRenSetPri+9;
	CreateTexture("coilren_窓/黒", $CoilRenSetPriTemp, $coilrenX, $coilrenY, "cg/sys/coil/window/コイルメール_インスト枠_黒.png");//10900
	SetAlias("coilren_窓/黒", "coilren_黒");
	Fade("coilren_窓/黒", 0, 0, null, true);

//	CreateTexture("coilren_窓/ベース３", 10100, $coilrenX, $coilrenY, "cg/sys/coil/window/コイルメール_インスト枠.png");
//	SetAlias("coilren_窓/ベース３", "coilren_ベース３");
//	Request("coilren_窓/ベース３", AddRender);

	$CoilRenSetPriTemp=$CoilRenSetPri+5;
	CreateMask("coilren_窓/マスク２", 200, $coilrenX, $coilrenY, "cg/sys/coil/window/コイル演出トランジ.png", false);
	SetAlias("coilren_窓/マスク２", "coilren_窓/マスク２");
	CreateTexture("coilren_窓/マスク２/ベース３", $CoilRenSetPriTemp, $coilrenX, $coilrenY, "cg/sys/coil/window/コイルメール_インスト枠.png");//10500
	SetAlias("coilren_窓/マスク２/ベース３", "coilren_ベース３");
	Request("coilren_窓/マスク２/ベース３", AddRender);

/*
	$CoilRenSetPriTemp=$CoilRenSetPri+1;
	$coilrenX2=$coilrenX+28;
	$coilrenY2=$coilrenY+63;
	CreateTexture("coilren_窓/枠", $CoilRenSetPriTemp, $coilrenX2, $coilrenY2, "cg/sys/coil/window/コイルメール_ゲージ枠.png");//10410
	SetAlias("coilren_窓/枠", "coilren_枠");
	CreateTexture("coilren_窓/ロード", $CoilRenSetPriTemp, $coilrenX2, $coilrenY2, "cg/sys/coil/window/コイルメール_ゲージロード2.png");//10420
	SetAlias("coilren_窓/ロード", "coilren_ロード");

	CreateWindow("coilren_窓/マスク", 20000, $coilrenX, $coilrenY, 260, 144, false);
	SetAlias("coilren_窓/マスク", "coilren_窓/マスク");
	CreateTexture("coilren_窓/マスク/バー", $CoilRenSetPriTemp, $coilrenX2, $coilrenY2, "cg/sys/coil/window/コイルメール_ゲージバー2.png");//10420
	SetAlias("coilren_窓/マスク/バー", "coilren_バー");
*/

	$coilrenX3=$coilrenX+54-15;
	$coilrenY3=$coilrenY+44;
	CreateTexture("coilren_窓/ダウンロード", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/コイルメール_アールメイト00.png");//10400
	SetAlias("coilren_窓/ダウンロード", "coilren_ダウンロード");

	CreateTexture("coilren_窓/ダウン中１", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/コイルメール_アールメイト01.png");//10400
	SetAlias("coilren_窓/ダウン中１", "coilren_ダウン中１");
	CreateTexture("coilren_窓/ダウン中２", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/コイルメール_アールメイト02.png");//10400
	SetAlias("coilren_窓/ダウン中２", "coilren_ダウン中２");
	CreateTexture("coilren_窓/ダウン中３", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/コイルメール_アールメイト03.png");//10400
	SetAlias("coilren_窓/ダウン中３", "coilren_ダウン中３");
	Request("coilren_窓/ダウン中*", Erase);

	CreateTexture("coilren_窓/コンプリート", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/コイルメール_アールメイト00.png");//10400
	SetAlias("coilren_窓/コンプリート", "coilren_コンプリート");
	Request("coilren_窓/コンプリート", AddRender);




	$CoilRenSetPriTemp=$CoilRenSetPri+4;
	$coilrenX4=$coilrenX-20;
	$coilrenY4=$coilrenY-8;
	CreateTexture("coilren_演出", $CoilRenSetPriTemp, $coilrenX4, $coilrenY4, "cg/sys/coil/window/コイル演出.png");//10430
	SetAlias("coilren_演出", "coilren_演出");
	Request("coilren_演出", AddRender);
	Fade("coilren_演出", 0, 0, null, true);
	Zoom("coilren_演出", 0, 1000, 0, Dxl1, true);

	$CoilRenSetPriTemp=$CoilRenSetPri+6;
	CreateTexture("coilren_消去", $CoilRenSetPriTemp, $coilrenX, $coilrenY, "cg/sys/coil/window/コイルメール_着信演出.png");//10530
	SetAlias("coilren_消去", "coilren_消去");
	Request("coilren_消去", AddRender);
	Fade("coilren_消去", 0, 0, null, true);
	SetVertex("coilren_消去", 130, 0);
	Zoom("coilren_消去", 0, 1200, 1000, null, false);


	Move("coilren_窓/マスク", 0, @-260, @0, Dxl1, true);
	Move("coilren_窓/*", 0, @0, @-159, Dxl1, false);
	Move("coilren_窓/*/*", 0, @0, @-159, Dxl1, true);

	SetVertex("coilren_窓/ダウンロード", 75, 20);
	Zoom("coilren_窓/ダウンロード", 0, 1000, 2000, null, false);///////////////////////
//	Rotate("coilren_窓/ダウンロード", 0, @0, @30, @0, null, true);

	Fade("coilren_窓/枠", 0, 0, null, false);
	Fade("coilren_窓/ロード", 0, 0, null, false);
	Fade("coilren_窓/ダウンロード", 0, 0, null, false);
	Fade("coilren_窓/コンプリート", 0, 0, null, false);
	Fade("coilren_窓/コンプリート２", 0, 0, null, false);

	Fade("@coilren_ベース３", 0, 0, null, false);
	Fade("coilren_窓/ベース", 0, 750, null, true);

	CreateSE("coilsound_down1","se物体_コイル_システムオープン");
	CreateSE("coilsound_down2","se物体_コイル_システムクローズ");
	CreateSE("coilsound_down3","se物体_コイル_ゲージ溜まる03L");//se物体_コイル_ゲージ溜まる01L.ogg
	CreateSE("coilsound_down4","se物体_コイル_システムアラート");
}



..▽ダウンロード表示
function CoilRenFade(){
	MusicStart("coilsound_down1",0,700,0,1000,null,false);

	Fade("coilren_演出", 0, 350, null, false);
	Zoom("coilren_演出", 200, 1500, 200, null, false);

	Fade("coilren_窓/ベース２", 300, 500, null, false);
	Fade("coilren_窓/ベース", 300, 200, null, false);
	Move("coilren_窓/*/*", 300, @0, @35, Dxl1, false);
	Move("coilren_窓/*", 300, @0, @35, Dxl1, true);

//	WaitKey();
	if($CoilRenNum==2){
		$coilrenpriON=true;
	}else{
		$coilrenON=true;
	}

	CoilBlack();

	Fade("coilren_演出", 0, 1000, null, true);

	Fade("coilren_窓/ダウンロード", 0, 300, null, false);//////////////////////////
	Zoom("coilren_窓/ダウンロード", 400, 1000, 1000, Axl2, false);
	Rotate("coilren_窓/ダウンロード", 500, 0, 0, 0, Axl2, false);

	Fade("coilren_窓/ベース", 200, 1000, null, false);
	Fade("coilren_窓/ベース２", 200, 0, null, false);
	Fade("@coilren_ベース３", 200, 1000, null, false);

	Fade("coilren_演出", 400, 0, Axl2, false);
	Zoom("coilren_演出", 200, 1000, 1000, null, false);

	Move("coilren_窓/*/*", 500, @0, @124, Dxl1, false);
	Move("coilren_窓/*", 500, @0, @124, Dxl1, false);

//	Move("coilren_窓/マスク２", 500, @0, @-130, AxlAuto, false);
//	Move("coilren_窓/マスク２", 500, @0, @-155, null, false);
	Move("coilren_窓/マスク２", 500, @0, @-155, null, false);

	Zoom("@coilren_ベース３", 500, 1000, 1200, Axl1, false);
//	WaitAction("@coilren_ベース３", null);

//	Fade("@coilren_ベース３", 100, 0, null, false);

}







..▽ダウンロード開始
function CoilRenStart(){

	WaitAction("@coilren_ベース３", null);

	Fade("coilren_窓/ダウン中*", 0, 600, null, true);

	CreateProcess("coilren_ダウンロードプロセス", 150, 0, 0, "CoilRenPro");
	SetAlias("coilren_ダウンロードプロセス", "coilren_ダウンロードプロセス");

//点滅と光
	MusicStart("coilsound_down3",0,400,0,1500,null,true);

	Request("coilren_ダウンロードプロセス", Start);
}

..▽ダウンロード終了
function CoilRenComp(){
	Request("coilren_ダウンロードプロセス", Stop);
	//★ロック設置
	LockVideo(false);
	WaitAction("coilren_ダウンロードプロセス", null);
	//★ロック設置
	LockVideo(false);

	SetVolumeEX("coilsound_down3", 100, 0, null);
	MusicStart("coilsound_down4",0,700,0,1000,null,false);

	Fade("@coilren_窓/ダウン中*", 0, 0, null, false);
	Fade("coilren_窓/コンプリート", 0, 700, null, false);
	Fade("coilren_窓/ダウンロード", 0, 1000, null, true);

	Fade("coilren_窓/コンプリート", 300, 0, null, false);
}


..▽ダウンロードプロセス
function CoilRenPro(){
	while(1){
		//★ロック設置
		LockVideo(true);
		Request("@coilren_窓/ダウン中３", Erase);
		Request("@coilren_窓/ダウン中１", Enter);
		//★ロック設置
		LockVideo(false);
		Wait(300);

		//★ロック設置
		LockVideo(true);
		Request("@coilren_窓/ダウン中１", Erase);
		Request("@coilren_窓/ダウン中２", Enter);
		//★ロック設置
		LockVideo(false);
		Wait(300);

		//★ロック設置
		LockVideo(true);
		Request("@coilren_窓/ダウン中２", Erase);
		Request("@coilren_窓/ダウン中３", Enter);
		//★ロック設置
		LockVideo(false);
		Wait(300);


//		Fade("@coilren_窓/ダウン中３", 32, 0, null, false);
//		Fade("@coilren_窓/ダウン中１", 0, 1000, null, true);
//		Fade("@coilren_窓/ダウン中１", 300, 500, null, true);

//		Fade("@coilren_窓/ダウン中１", 32, 0, null, false);
//		Fade("@coilren_窓/ダウン中２", 0, 1000, null, true);
//		Fade("@coilren_窓/ダウン中２", 300, 500, null, true);

//		Fade("@coilren_窓/ダウン中２", 32, 0, null, false);
//		Fade("@coilren_窓/ダウン中３", 0, 1000, null, true);
//		Fade("@coilren_窓/ダウン中３", 300, 500, null, true);
	}
}



..▽ダウンロード消し
function CoilRenDelete(){

	Move("coilren_窓/マスク２", 0, @0, @203, null, true);
	Zoom("@coilren_ベース３", 0, 1000, 1000, null, true);

	Fade("@coilren_演出*", 0, 0, null, false);
	Fade("@coilren_ベース３", 0, 1000, null, false);

	Zoom("coilren_演出", 0, 1500, 300, null, false);
	Fade("coilren_演出", 0, 250, null, true);

//	WaitKey();
	if($CoilRenNum==2){
		$coilrenpriON=false;
	}else{
		$coilrenON=false;
	}
	CoilBlack();

	MusicStart("coilsound_down2",0,700,0,1000,null,false);

	Zoom("coilren_消去", 500, 1100, 0, null, false);
	Fade("coilren_消去", 500, 1000, Dxl3, false);

	Fade("coilren_演出", 300, 1000, null, false);
	Zoom("coilren_演出", 400, 750, 0, Axl1, false);

//	Zoom("@coilren_ベース３", 50, 1000, 1500, null, false);
	Fade("@coilren_ベース３", 50, 0, null, false);
	Fade("@coilren_ベース", 500, 500, null, false);

	Move("coilren_窓/*/*", 500, @0, @-207, Dxl1, false);
	Move("coilren_窓/*", 500, @0, @-207, Dxl1, false);

	Zoom("@coilren_ベース２", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilren_ベース", 500, 1000, 750, AxlAuto, false);

//	Fade("coilren_演出", 400, 0, Axl3, false);
//	Rotate("coilren_演出", 400, @-90, @0, @0, Axl3, false);


	Delete("coilren_ダウンロードプロセス");
	Request("coilren_窓/*/*", Disused);
	Request("coilren_窓/*", Disused);
	Request("coilren_演出", Disused);

}
















.■画像表示
..▽定義（10700～10799）
function CoilPictSet($coilpictX,$coilpictY,$coilpictNut){
//382
//159
	$coilpictNumPre0="無し";
	$coilpictNumPre1="無し";
	$coilpictNumPre2="無し";
	$coilpictNumPre3="無し";

	CreateWindow("coilpict_窓", 20000, $coilpictX, $coilpictY, 418, 403, false);
	SetAlias("coilpict_窓", "coilpict_窓");

	CreateTexture("coilpict_窓/ベース", 10700, $coilpictX, $coilpictY, "cg/sys/coil/mail/コイルメール_画像.png");//10400
	SetAlias("coilpict_窓/ベース", "coilpict_ベース");
	CreateTexture("coilpict_窓/ベース２", 10709, $coilpictX, $coilpictY, "cg/sys/coil/mail/コイルメール_画像.png");//10900
	SetAlias("coilpict_窓/ベース２", "coilpict_ベース２");
	SetTone("coilpict_窓/ベース２", Monochrome);

	CreateTexture("coilpict_窓/黒", 10709, $coilpictX, $coilpictY, "cg/sys/coil/mail/コイルメール_画像_黒.png");//10900
	SetAlias("coilpict_窓/黒", "coilpict_黒");
	Fade("coilpict_窓/黒", 0, 0, null, true);

//	CreateTexture("coilpict_窓/ベース３", 10100, $coilpictX, $coilpictY, "cg/sys/coil/mail/コイルメール_画像.png");
//	SetAlias("coilpict_窓/ベース３", "coilpict_ベース３");
//	Request("coilpict_窓/ベース３", AddRender);

	CreateMask("coilpict_窓/マスク２", 200, $coilpictX, $coilpictY, "cg/sys/coil/mail/コイル演出トランジ4.png", false);
	SetAlias("coilpict_窓/マスク２", "coilpict_窓/マスク２");
	CreateTexture("coilpict_窓/マスク２/ベース３", 10705, $coilpictX, $coilpictY, "cg/sys/coil/mail/コイルメール_画像.png");//10500
	SetAlias("coilpict_窓/マスク２/ベース３", "coilpict_ベース３");
	Request("coilpict_窓/マスク２/ベース３", AddRender);


	//中身
	$coilpictX6=$coilpictX+13;
	$coilpictY6=$coilpictY+29;
	CreateWindow("coilpict_窓/coilpict_欄", 20000, $coilpictX6, $coilpictY6, 393, 348, false);
	SetAlias("coilpict_窓/coilpict_欄", "coilpict_欄");

	if(Strstr($coilpictNut,"ngs") || Strstr($coilpictCon,"mpg")){
		if(#SYSTEM_sound_se){$coilpictVol=#SYSTEM_sound_volume_se*0.50;
		}else{$coilpictVol=0;}
		if(Strstr($coilpictNut,"loop")){
			CreateMovie("coilpict_窓/coilpict_欄/coilpict_絵", 10700, $coilpictX6, $coilpictY6, true, false, $coilpictNut,$coilpictVol);//10400
		}else{
			CreateMovie("coilpict_窓/coilpict_欄/coilpict_絵", 10700, $coilpictX6, $coilpictY6, false, false, $coilpictNut,$coilpictVol);//10400
		}
	}else{
		CreateTexture("coilpict_窓/coilpict_欄/coilpict_絵", 10700, $coilpictX6, $coilpictY6, $coilpictNut);//10400
	}
	SetAlias("coilpict_窓/coilpict_欄/coilpict_絵", "coilpict_絵");
	Fade("coilpict_窓/coilpict_欄/coilpict_絵", 0, 0, null, true);
	Request("coilpict_窓/coilpict_欄/coilpict_絵", Stop);

	$coilpict_imgH=ImageHorizon("coilpict_窓/coilpict_欄/coilpict_絵");
	$coilpict_imgV=ImageVertical("coilpict_窓/coilpict_欄/coilpict_絵");
	$coilpict_imgH_half=(393-$coilpict_imgH)/2;
	$coilpict_imgV_half=(348-$coilpict_imgV)/2;
	Move("coilpict_窓/coilpict_欄/coilpict_絵", 0, @$coilpict_imgH_half, @$coilpict_imgV_half, null, true);

	$coilpictX7=$coilpictX6+$coilpict_imgH_half;
	$coilpictY7=$coilpictY6+$coilpict_imgV_half;

	if(Strstr($coilpictNut, "ngs") || Strstr($coilpictCon, "mpg")){
		CreateWindow("coilpict_窓/coilpict_欄/coilpict_影", 10700, $coilpictX6, $coilpictY6, 393, 348, false);//10400
	}else{
		CreateStencil("coilpict_窓/coilpict_欄/coilpict_影", 10700, $coilpictX7, $coilpictY7, 128, $coilpictNut, false);//10400
	}
	SetAlias("coilpict_窓/coilpict_欄/coilpict_影", "coilpict_影");
	CreateColor("coilpict_窓/coilpict_欄/coilpict_影/coilpict_演出色", 10700, $coilpictX7, $coilpictY7, $coilpict_imgH, $coilpict_imgV, "41a4ae");//10400
	SetAlias("coilpict_窓/coilpict_欄/coilpict_影/coilpict_演出色", "coilpict_演出色");
	Request("coilpict_窓/coilpict_欄/coilpict_影/coilpict_演出色", AddRender);

//	CreateColor("coilpict_窓/coilpict_演出色", 10700, $coilpictX6, $coilpictY6, $coilpict_imgH, $coilpict_imgV, "41a4ae");//WHITE
//	SetAlias("coilpict_窓/coilpict_演出色", "coilpict_演出色");
//	Request("coilpict_窓/coilpict_演出色", AddRender);
//	Move("coilpict_窓/coilpict_演出色", 0, @$coilpict_imgH_half, @$coilpict_imgV_half, null, true);

	$coilpictX4=$coilpictX-20;
	$coilpictY4=$coilpictY-8;
	CreateTexture("coilpict_演出", 10701, $coilpictX4, $coilpictY4, "cg/sys/coil/mail/コイル演出4.png");//10430
	SetAlias("coilpict_演出", "coilpict_演出");
	Request("coilpict_演出", AddRender);
	Fade("coilpict_演出", 0, 0, null, true);
	Zoom("coilpict_演出", 0, 1000, 0, Dxl1, true);

	CreateTexture("coilpict_消去", 10706, $coilpictX, $coilpictY, "cg/sys/coil/mail/コイルメール_画像演出.png");//10530
	SetAlias("coilpict_消去", "coilpict_消去");
	Request("coilpict_消去", AddRender);
	Fade("coilpict_消去", 0, 0, null, true);
	SetVertex("coilpict_消去", 209, 0);
	Zoom("coilpict_消去", 0, 1200, 1000, null, false);

	//グリッド
	$地図=Strstr($coilpictNut, "efマップ鶏泉_ノイズ_地図");
	if(!$地図){$地図=Strstr($coilpictNut, "碧島全景");}

	if($地図){
		CreateTexture("coilpict_窓/coilpict_欄/マーカー", 10700, $coilpictX6, $coilpictY6, "cg/ef/efマップ鶏泉_ノイズ_マーカー.png");
		SetAlias("coilpict_窓/coilpict_欄/マーカー", "coilpict_マーカー");
		$coilpict_imgH2=ImageHorizon("coilpict_窓/coilpict_欄/マーカー");
		$coilpict_imgV2=ImageVertical("coilpict_窓/coilpict_欄/マーカー");
		$coilpict_imgH2_half=(393-$coilpict_imgH2)/2;
		$coilpict_imgV2_half=(348-$coilpict_imgV2)/2;
		Move("coilpict_窓/coilpict_欄/マーカー", 0, @$coilpict_imgH2_half, @$coilpict_imgV2_half, null, true);
		Fade("coilpict_窓/coilpict_欄/マーカー", 0, 0, null, false);
		Request("coilpict_窓/coilpict_欄/マーカー", AddRender);

		CreateTexture("coilpict_窓/coilpict_欄/グリッド", 10700, $coilpictX6, $coilpictY6, "cg/ef/efマップ鶏泉_ノイズ_グリッド.png");
		SetAlias("coilpict_窓/coilpict_欄/グリッド", "coilpict_グリッド");
		$coilpict_imgH2=ImageHorizon("coilpict_窓/coilpict_欄/グリッド");
		$coilpict_imgV2=ImageVertical("coilpict_窓/coilpict_欄/グリッド");
		$coilpict_imgH2_half=(393-$coilpict_imgH2)/2;
		$coilpict_imgV2_half=(348-$coilpict_imgV2)/2;
		Move("coilpict_窓/coilpict_欄/グリッド", 0, @$coilpict_imgH2_half, @$coilpict_imgV2_half, null, true);

		CreateColor("coilpict_窓/coilpict_欄/地図色", 10700, $coilpictX6, $coilpictY6, 88, 88, "41a4ae");
		SetAlias("coilpict_窓/coilpict_欄/地図色", "coilpict_地図色");
		Fade("coilpict_窓/coilpict_欄/地図色", 0, 0, null, false);
		Request("coilpict_窓/coilpict_欄/地図色", AddRender);

		Zoom("coilpict_窓/coilpict_欄/グリッド",0,300,300,null,true);

		Request("coilpict_窓/coilpict_欄/coilpict_絵", Smoothing);
		Request("coilpict_窓/coilpict_欄/グリッド", Smoothing);
	}


	Move("coilpict_窓/*/*/*/*", 0, @0, @-418, Dxl1, false);
	Move("coilpict_窓/*/*/*", 0, @0, @-418, Dxl1, false);
	Move("coilpict_窓/*/*", 0, @0, @-418, Dxl1, false);
	Move("coilpict_窓/*", 0, @0, @-418, Dxl1, false);

	Fade("@coilpict_ベース３", 0, 0, null, false);
	Fade("coilpict_窓/ベース", 0, 750, null, true);

//	SetVertex("@coilpict_ベース", 209, 0);
//	Zoom("@coilpict_ベース", 0, 1000, 1000, null, true);
//	Fade("@coilpict_ベース", 0, 0, null, true);

	CreateSE("coilsound_pict1","se物体_コイル_システムオープン");
	CreateSE("coilsound_pict2","se物体_コイル_システムクローズ");
}






..▽グリッド点滅
function CoilPictIconFade(X座標値,Y座標値){

	CreateProcess("coilpict_ダウンロードプロセス", 150, 0, 0, "CoilPictPro");
	SetAlias("coilpict_ダウンロードプロセス", "coilpict_ダウンロードプロセス");

	Move("@coilpict_マーカー", 0, X座標値, Y座標値, null, true);

	Position("@coilpict_マーカー",$coilpictGX,$coilpictGY);
	$coilpictGX-=50;
	$coilpictGY-=50;
	Move("@coilpict_地図色", 0, $coilpictGX, $coilpictGY, null, true);

	Request("coilpict_ダウンロードプロセス", Start);
}

function CoilPictPro(){
	while(1){
		Fade("@coilpict_マーカー", 300, 500, null, true);
		Fade("@coilpict_マーカー", 500, 0, null, true);
	}
}

function CoilPictIconGo(秒数,X座標値,Y座標値,X移動値,Y移動値,拡大率H,拡大率V){

	Fade("@coilpict_地図色", 0, 500, null, true);
	Request("@coilpict_マーカー", Erase);

	Move("@coilpict_マーカー", 0, X座標値, Y座標値, null, true);

	Position("@coilpict_マーカー",$coilpictGX,$coilpictGY);
	$coilpictGX-=50;
	$coilpictGY-=50;
	Move("@coilpict_地図色", 秒数, $coilpictGX, $coilpictGY, AxlDxl, false);
	Zoom("@coilpict_地図色", 200, 2000, 2000, AxlDxl, false);
	Fade("@coilpict_地図色", 200, 0, null, false);

	//○⑥ズーム（中の画像に対して）『CoilPictZO("ナット名",秒数,値X,値Y,テンポ,待ち)』//初期ナットの指定は「初期」
	CoilPictZO("初期",秒数,拡大率H,拡大率V,AxlDxl,false);
	//○⑥ムーブ（中の画像に対して）『CoilPictMO("ナット名",秒数,値X,値Y,テンポ,待ち)』
	CoilPictMO("初期",秒数,X移動値,Y移動値,AxlDxl,true);

	Request("@coilpict_マーカー", Enter);
}

function CoilPictIconGo2("ナット名",秒数,X座標値,Y座標値,X移動値,Y移動値,拡大率H,拡大率V){

	Fade("@coilpict_地図色", 0, 500, null, true);
	Request("@coilpict_マーカー", Erase);

	Move("@coilpict_マーカー", 0, X座標値, Y座標値, null, true);

	Position("@coilpict_マーカー",$coilpictGX,$coilpictGY);
	$coilpictGX-=50;
	$coilpictGY-=50;
	Move("@coilpict_地図色", 秒数, $coilpictGX, $coilpictGY, AxlDxl, false);
	Zoom("@coilpict_地図色", 200, 2000, 2000, AxlDxl, false);
	Fade("@coilpict_地図色", 200, 0, null, false);

	//○⑥ズーム（中の画像に対して）『CoilPictZO("ナット名",秒数,値X,値Y,テンポ,待ち)』//初期ナットの指定は「初期」
	CoilPictZO("ナット名",秒数,拡大率H,拡大率V,AxlDxl,false);
	//○⑥ムーブ（中の画像に対して）『CoilPictMO("ナット名",秒数,値X,値Y,テンポ,待ち)』
	CoilPictMO("ナット名",秒数,X移動値,Y移動値,AxlDxl,true);

	Request("@coilpict_マーカー", Enter);
}









..▽画像２つ以降
function CoilPictCon($coilpictNum,$coilpictCon){
	Position("coilpict_窓",$X座標値格納変数,$Y座標値格納変数);
	$coilpictX6=$X座標値格納変数+13;
	$coilpictY6=$Y座標値格納変数+29;

	$coilpictNum="追加"+$coilpictNum;

	$coilpictNum0="coilpict_窓/"+$coilpictNum;
	$coilpictNum1="coilpict_窓/"+$coilpictNum+"/coilpict_影";
	$coilpictNum2="coilpict_窓/"+$coilpictNum+"/coilpict_影/coilpict_演出色";
	$coilpictNum3="coilpict_窓/"+$coilpictNum+"/coilpict_絵";

	CreateWindow($coilpictNum0, 20000, $coilpictX6, $coilpictY6, 393, 348, false);
	SetAlias($coilpictNum0, $coilpictNum);

	if(Strstr($coilpictCon,"ngs") || Strstr($coilpictCon,"mpg")){
		if(#SYSTEM_sound_se){$coilpictVol=#SYSTEM_sound_volume_se*0.50;
		}else{$coilpictVol=0;}
		if(Strstr($coilpictCon,"loop")){
			CreateMovie($coilpictNum3, 10700, $coilpictX6, $coilpictY6, true, false, $coilpictCon,$coilpictVol);//10400
		}else{
			CreateMovie($coilpictNum3, 10700, $coilpictX6, $coilpictY6, false, false, $coilpictCon,$coilpictVol);//10400
		}
	}else{
		CreateTexture($coilpictNum3, 10700, $coilpictX6, $coilpictY6, $coilpictCon);//10400
	}
	SetAlias($coilpictNum3, $coilpictNum);
	Fade($coilpictNum3, 0, 0, null, true);
	Request($coilpictNum3, Stop);


	$coilpict_imgH=ImageHorizon($coilpictNum3);
	$coilpict_imgV=ImageVertical($coilpictNum3);
	$coilpict_imgH_half=(393-$coilpict_imgH)/2;
	$coilpict_imgV_half=(348-$coilpict_imgV)/2;
	Move($coilpictNum3, 0, @$coilpict_imgH_half, @$coilpict_imgV_half, null, true);

	$coilpictX7=$coilpictX6+$coilpict_imgH_half;
	$coilpictY7=$coilpictY6+$coilpict_imgV_half;

	if(Strstr($coilpictCon, "ngs") || Strstr($coilpictCon, "mpg")){
		CreateWindow($coilpictNum1, 10700, $coilpictX6, $coilpictY6, 393, 348, false);//10400
	}else{
		CreateStencil($coilpictNum1, 10700, $coilpictX7, $coilpictY7, 128, $coilpictCon, false);//10400
	}
	SetAlias($coilpictNum1, $coilpictNum1);
	CreateColor($coilpictNum2, 10700, $coilpictX7, $coilpictY7, $coilpict_imgH, $coilpict_imgV, "41a4ae");//10400
	SetAlias($coilpictNum2, $coilpictNum2);
	Request($coilpictNum2, AddRender);



	//グリッド
	$地図=Strstr($coilpictCon, "efマップ鶏泉_ノイズ_地図");
	if(!$地図){$地図=Strstr($coilpictCon, "碧島全景");}

	if($地図){
		$coilpictNum4="coilpict_窓/"+$coilpictNum+"/coilpict_マーカー";
		$coilpictNum5="coilpict_窓/"+$coilpictNum+"/coilpict_グリッド";
		$coilpictNum6="coilpict_窓/"+$coilpictNum+"/coilpict_色";

		CreateTexture($coilpictNum4, 10700, $coilpictX6, $coilpictY6, "cg/ef/efマップ鶏泉_ノイズ_マーカー.png");
		SetAlias($coilpictNum4, "coilpict_マーカー");
		$coilpict_imgH2=ImageHorizon($coilpictNum4);
		$coilpict_imgV2=ImageVertical($coilpictNum4);
		$coilpict_imgH2_half=(393-$coilpict_imgH2)/2;
		$coilpict_imgV2_half=(348-$coilpict_imgV2)/2;
		Move($coilpictNum4, 0, @$coilpict_imgH2_half, @$coilpict_imgV2_half, null, true);
		Fade($coilpictNum4, 0, 0, null, false);
		Request($coilpictNum4, AddRender);

		CreateTexture($coilpictNum5, 10700, $coilpictX6, $coilpictY6, "cg/ef/efマップ鶏泉_ノイズ_グリッド.png");
		SetAlias($coilpictNum5, "coilpict_グリッド");
		$coilpict_imgH2=ImageHorizon($coilpictNum5);
		$coilpict_imgV2=ImageVertical($coilpictNum5);
		$coilpict_imgH2_half=(393-$coilpict_imgH2)/2;
		$coilpict_imgV2_half=(348-$coilpict_imgV2)/2;
		Move($coilpictNum5, 0, @$coilpict_imgH2_half, @$coilpict_imgV2_half, null, true);

		CreateColor($coilpictNum6, 10700, $coilpictX6, $coilpictY6, 88, 88, "41a4ae");
		SetAlias($coilpictNum6, "coilpict_地図色");
		Fade($coilpictNum6, 0, 0, null, false);
		Request($coilpictNum6, AddRender);

		Zoom($coilpictNum6,0,300,300,null,true);

		Request($coilpictNum3, Smoothing);
		Request($coilpictNum5, Smoothing);
	}




	Fade($coilpictNum1, 0, 0, null, false);
	Fade($coilpictNum2, 0, 0, null, false);
	Fade($coilpictNum3, 0, 0, null, false);

	SetVertex($coilpictNum0, 196, 0);
	Zoom($coilpictNum0, 0, 1000, 0, Dxl1, true);
}




..▽ムービー終了待機
function CoilPictWait(){

	WaitAction("@coilpict_絵", null);
	WaitAction($coilpictNum3, null);
}

function CoilPictWaitTime($coilpictNum,$coilpictWait){

	$CoilPictWaitSkipOn=false;

	$文字目=Strstr($coilpictNum, "初期");
	if($文字目){
		$coilpictNumFlag=$coilpictNum;
		$coilpictNum3="coilpict_窓/coilpict_欄/coilpict_絵";
	}else{
		$coilpictNumFlag=$coilpictNum;
		$coilpictNum3="coilpict_窓/追加"+$coilpictNum+"/coilpict_絵";
	}

	Wait(16);

	$SYSTEM_l_button_down=false;$SYSTEM_keydown_enter=false;
	if(VariableValue(#,"MF_"+$coilpictNumFlag)||#SYSTEM_skip_absolute){
		while(1){
			$waittime=RemainTime($coilpictNum3);
			if($waittime==0){break;}
			else if($waittime<$coilpictWait){break;}

			if($SYSTEM_l_button_down||$SYSTEM_keydown_enter||$SYSTEM_skip){$CoilPictWaitSkipOn=true;break;}
			Wait(64);
		}
	}else{
		while(1){
			$waittime=RemainTime($coilpictNum3);
			if($waittime==0){break;}
			else if($waittime<$coilpictWait){break;}

			if($SYSTEM_skip){$SYSTEM_skip=false;}
			Wait(64);
		}
	}

//	VariableValue(#,"MF_"+$coilpictNumFlag,true);
}

function CoilPictWaitSkip($coilpictNum){

	$文字目=Strstr($coilpictNum, "初期");
	if($文字目){
		$coilpictNumFlag=$coilpictNum;
		$coilpictNum3="coilpict_窓/coilpict_欄/coilpict_絵";
	}else{
		$coilpictNumFlag=$coilpictNum;
		$coilpictNum3="coilpict_窓/追加"+$coilpictNum+"/coilpict_絵";
	}

	Wait(16);


	$SYSTEM_l_button_down=false;$SYSTEM_keydown_enter=false;
	if(VariableValue(#,"MF_"+$coilpictNumFlag)||#SYSTEM_skip_absolute){
		while(1){
			$waittime=RemainTime($coilpictNum3);
			if($waittime==0){break;}

			if($SYSTEM_l_button_down||$SYSTEM_keydown_enter||$SYSTEM_skip){break;}
			Wait(64);
		}
	}else{
		while(1){
			$waittime=RemainTime($coilpictNum3);
			if($waittime==0){break;}

			if($SYSTEM_skip){$SYSTEM_skip=false;}
			Wait(64);
		}
	}

	VariableValue(#,"MF_"+$coilpictNumFlag,true);
}
















..▽画像移動
function CoilPictMO($coilpictNum,秒数,値X,値Y,テンポ,待ち){
	if($coilpictNum=="初期"){
		$coilpictNum1="coilpict_窓/coilpict_欄/coilpict_影";
		$coilpictNum2="coilpict_窓/coilpict_欄/coilpict_影/coilpict_演出色";
		$coilpictNum3="coilpict_窓/coilpict_欄/coilpict_絵";
	}else{
		$coilpictNum="追加"+$coilpictNum;

		$coilpictNum1="coilpict_窓/"+$coilpictNum+"/coilpict_影";
		$coilpictNum2="coilpict_窓/"+$coilpictNum+"/coilpict_影/coilpict_演出色";
		$coilpictNum3="coilpict_窓/"+$coilpictNum+"/coilpict_絵";
	}

	if(Strstr($coilpictNut, "ngs") || Strstr($coilpictCon, "mpg")){

	}else{
		Move($coilpictNum1, 秒数, 値X, 値Y, テンポ, false);
	}
	Move($coilpictNum2, 秒数, 値X, 値Y, テンポ, false);
	Move($coilpictNum3, 秒数, 値X, 値Y, テンポ, 待ち);
}

..▽画像カクシュク
function CoilPictZO($coilpictNum,秒数,$ZO値X,$ZO値Y,テンポ,待ち){
	if($coilpictNum=="初期"){
		$coilpictNum1="coilpict_窓/coilpict_欄/coilpict_影";
		$coilpictNum2="coilpict_窓/coilpict_欄/coilpict_影/coilpict_演出色";
		$coilpictNum3="coilpict_窓/coilpict_欄/coilpict_絵";

		if($地図){
			$ZO値X2=1000+(300-$ZO値X);
			$ZO値Y2=1000+(300-$ZO値Y);
			Zoom("coilpict_窓/coilpict_欄/グリッド",秒数,$ZO値X2,$ZO値Y2,テンポ,false);
		}
	}else{
		$coilpictNum="追加"+$coilpictNum;

		$coilpictNum1="coilpict_窓/"+$coilpictNum+"/coilpict_影";
		$coilpictNum2="coilpict_窓/"+$coilpictNum+"/coilpict_影/coilpict_演出色";
		$coilpictNum3="coilpict_窓/"+$coilpictNum+"/coilpict_絵";

		$coilpictNum5="coilpict_窓/"+$coilpictNum+"/coilpict_グリッド";

		if($地図){
			$ZO値X2=1000+(300-$ZO値X);
			$ZO値Y2=1000+(300-$ZO値Y);
			Zoom($coilpictNum5,秒数,$ZO値X2,$ZO値Y2,テンポ,false);
		}
	}

	if(Strstr($coilpictNut, "ngs")){

	}else{
		Zoom($coilpictNum1, 秒数, $ZO値X, $ZO値Y, テンポ, false);
	}
	Zoom($coilpictNum2, 秒数, $ZO値X, $ZO値Y, テンポ, false);
	Zoom($coilpictNum3, 秒数, $ZO値X, $ZO値Y, テンポ, 待ち);
}




..▽画像表示の２個目以降
function CoilPictFadeCon($coilpictNum){
	CreateSE("coilsound_pict4","se物体_コイル_システム画像切り替え");

	$coilpictNum="追加"+$coilpictNum;

	//用意
	$coilpictNumPre0="coilpict_窓/"+$coilpictNumPre;
	$coilpictNumPre1="coilpict_窓/"+$coilpictNumPre+"/coilpict_影";
	$coilpictNumPre2="coilpict_窓/"+$coilpictNumPre+"/coilpict_影/coilpict_演出色";
	$coilpictNumPre3="coilpict_窓/"+$coilpictNumPre+"/coilpict_絵";
	$coilpictNum0="coilpict_窓/"+$coilpictNum;
	$coilpictNum1="coilpict_窓/"+$coilpictNum+"/coilpict_影";
	$coilpictNum2="coilpict_窓/"+$coilpictNum+"/coilpict_影/coilpict_演出色";
	$coilpictNum3="coilpict_窓/"+$coilpictNum+"/coilpict_絵";

	SetVertex($coilpictNumPre0, 196, 348);

	Position("@coilpict_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数-418;

	Fade("@coilpict_ベース３", 0, 0, null, false);
	Zoom("@coilpict_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilpict_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);


	Fade($coilpictNum1, 0, 1000, null, false);
	Fade($coilpictNum2, 0, 1000, null, false);
//	Fade($coilpictNum3, 0, 750, null, false);

	Request($coilpictNum3, Play);

	//==================
	//Fade("coilpict_窓/ベース２", 200, 500, null, false);
	MusicStart("coilsound_pict4",0,700,0,1000,null,false);

	Fade($coilpictNum2, 500, 0, null, false);
	Fade($coilpictNum3, 400, 750, null, false);
	DrawTransition($coilpictNum2, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition($coilpictNum3, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	Zoom($coilpictNumPre0, 500, 1000, 0, null, false);
	Zoom($coilpictNum0, 500, 1000, 1000, null, false);

	//WaitKey();
	//Fade("coilpict_窓/ベース２", 200, 0, null, false);

	Fade("@coilpict_ベース３", 200, 1000, null, false);
	Zoom("@coilpict_ベース３", 500, 1000, 1200, Axl1, false);
	Move("coilpict_窓/マスク２", 500, @0, @-418, null, false);

	Request($coilpictNumPre0, Disused);

	//記憶
	$coilpictNumPre=$coilpictNum;
}


..▽画像即時切替
function CoilPictFadeChan($coilpictNum){
	$coilpictNum="追加"+$coilpictNum;

	//用意
	$coilpictNumPre0="coilpict_窓/"+$coilpictNumPre;
	$coilpictNumPre1="coilpict_窓/"+$coilpictNumPre+"/coilpict_影";
	$coilpictNumPre2="coilpict_窓/"+$coilpictNumPre+"/coilpict_影/coilpict_演出色";
	$coilpictNumPre3="coilpict_窓/"+$coilpictNumPre+"/coilpict_絵";
	$coilpictNum0="coilpict_窓/"+$coilpictNum;
	$coilpictNum1="coilpict_窓/"+$coilpictNum+"/coilpict_影";
	$coilpictNum2="coilpict_窓/"+$coilpictNum+"/coilpict_影/coilpict_演出色";
	$coilpictNum3="coilpict_窓/"+$coilpictNum+"/coilpict_絵";

	SetVertex($coilpictNumPre0, 196, 348);

	Position("@coilpict_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数-(418+418);

	Fade("@coilpict_ベース３", 0, 1000, null, false);
	Zoom("@coilpict_ベース３", 0, 1000, 1200, Axl1, false);
	Move("coilpict_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);

	//==================
	Request($coilpictNum3, Play);

	Zoom($coilpictNum0, 0, 1000, 1000, null, false);

	Fade($coilpictNum1, 0, 1000, null, false);
	Fade($coilpictNum2, 0, 0, null, false);
	Fade($coilpictNum3, 0, 750, null, false);

	Fade($coilpictNumPre1, 0, 0, null, false);
	Fade($coilpictNumPre2, 0, 0, null, false);
	Fade($coilpictNumPre3, 0, 0, null, true);

//	Request($coilpictNumPre0, Disused);
	Delete($coilpictNumPre0);

	//記憶
	$coilpictNumPre=$coilpictNum;
}


..▽画像表示
function CoilPictFade(){
	MusicStart("coilsound_pict1",0,700,0,1000,null,false);

//	$tekitou=MilliTime();

	Zoom("@coilpict_ベース", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilpict_演出*", 800, 0, null, false);

//	Fade("coilpict_演出", 0, 350, null, false);
//	Zoom("coilpict_演出", 200, 1500, 200, null, false);

//	Fade("coilpict_窓/ベース２", 300, 500, null, false);
//	Fade("coilpict_窓/ベース", 300, 1000, null, false);
//	Move("coilpict_窓/*/*", 300, @0, @36, Dxl1, false);
//	Move("coilpict_窓/*", 300, @0, @36, Dxl1, true);

	Fade("coilpict_演出", 0, 350, null, false);
	Zoom("coilpict_演出", 150, 1500, 200, null, false);

	Fade("coilpict_窓/ベース２", 200, 500, null, false);
//	Fade("coilpict_窓/ベース", 200, 1000, null, false);
	Move("coilpict_窓/*/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilpict_窓/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilpict_窓/*/*", 200, @0, @36, Dxl1, false);
	Move("coilpict_窓/*", 200, @0, @36, Dxl1, false);

	Move("coilpict_窓/追加*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*/*", 0, @0, @0, Dxl1, false);
	WaitMove("coilpict_窓/*", null);

//	Message("デバッグ用ウィンドウ",String("%d",MilliTime()-$tekitou));

//	WaitKey();
	$coilpictON=true;
	CoilBlack();

	Request("coilpict_窓/coilpict_欄/coilpict_絵", Play);

	Fade("coilpict_演出", 0, 1000, null, true);

	DrawTransition("@coilpict_演出色", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition("coilpict_窓/coilpict_欄/coilpict_絵", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade("coilpict_窓/coilpict_欄/coilpict_絵", 400, 750, null, false);//特殊

	Fade("coilpict_窓/ベース", 200, 1000, null, false);
	Fade("coilpict_窓/ベース２", 200, 0, null, false);
	Fade("@coilpict_ベース３", 200, 1000, null, false);

	Fade("coilpict_演出", 500, 0, Axl2, false);
	Zoom("coilpict_演出", 200, 1000, 1000, null, false);

	Move("coilpict_窓/*/*/*/*", 500, @0, @382, Dxl1, false);
	Move("coilpict_窓/*/*/*", 500, @0, @382, Dxl1, false);
	Move("coilpict_窓/*/*", 500, @0, @382, Dxl1, false);
	Move("coilpict_窓/*", 500, @0, @382, Dxl1, false);

	Move("coilpict_窓/追加*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*/*", 0, @0, @0, Dxl1, false);


	Move("coilpict_窓/マスク２", 500, @0, @-418, null, false);

	Zoom("@coilpict_ベース３", 500, 1000, 1200, Axl1, false);

//	Request("coilpict_ダウンロードプロセス", Start);

	//記憶
	$coilpictNumPre="coilpict_欄";
}



..▽画像フェード消し
function CoilPictDelete(){

	Position("@coilpict_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilpict_ベース３", 0, 0, null, false);
	Zoom("@coilpict_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilpict_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);


//	Request("coilpict_ダウンロードプロセス", Stop);
//	WaitAction("coilpict_ダウンロードプロセス", null);

	Fade("@coilpict_演出*", 0, 0, null, false);
	Fade("@coilpict_ベース３", 0, 1000, null, false);

	Zoom("coilpict_演出", 0, 1500, 300, null, false);
	Fade("coilpict_演出", 0, 250, null, true);

//	WaitKey();
	$coilpictON=false;
	CoilBlack();

	MusicStart("coilsound_pict2",0,700,0,1000,null,false);

	Zoom("coilpict_消去", 500, 1100, 0, null, false);
	Fade("coilpict_消去", 500, 1000, Dxl3, false);

	Fade("coilpict_演出", 300, 1000, null, false);
	Zoom("coilpict_演出", 400, 750, 0, Axl1, false);

//	Zoom("@coilpict_ベース３", 50, 1000, 1500, null, false);
	Fade("@coilpict_ベース３", 50, 0, null, false);
	Fade("@coilpict_ベース", 500, 500, null, false);

	Move("coilpict_窓/*/*", 500, @0, @-418, Dxl1, false);
	Move("coilpict_窓/*", 500, @0, @-418, Dxl1, false);

	Zoom("@coilpict_窓/coilpict_欄", 500, 1000, 500, AxlAuto, false);//特殊

	Zoom("@coilpict_ベース２", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilpict_ベース", 500, 1000, 750, AxlAuto, false);

//	Fade("coilpict_演出", 400, 0, Axl3, false);
//	Rotate("coilpict_演出", 400, @-90, @0, @0, Axl3, false);


	Delete("coilpict_ダウンロードプロセス");
//	Request("coilpict_窓/*/*/*", Disused);
	Request("coilpict_窓/*/*", Disused);
	Request("coilpict_窓/*", Disused);
	Request("coilpict_演出", Disused);
	Request("coilpict_消去", Disused);
}


..▽画像メールからの呼び出し
function CoilPictFade_Mail(){

//▼メール本文（添付あり）⇒画像表示の遷移
	Request("coilmail_ダウンロードプロセス", Stop);
	WaitAction("coilmail_ダウンロードプロセス", null);

//	$coiltempnut="coilmail_窓/添付";
//	$coiltempnut2="coilmail_窓/添付点滅";

	Position("coilmail_窓/添付",$X添付座標,$Y添付座標);
	CreateTexture("coilpict_添付点滅", 10709, $X添付座標, $Y添付座標, "cg/sys/coil/mail/コイルメール_メールテンプ.png");
	SetAlias("coilpict_添付点滅", "coilpict_添付点滅");
	Request("coilpict_添付点滅", AddRender);
	SetBlur("coilpict_添付点滅", true, 2, 200, 50, true);
	Fade("coilpict_添付点滅", 0, 0, null, true);

	CreateColor("coilpict_添付演出１", 10709, $X添付座標, $Y添付座標, 43, 41, "41a4ae");
	SetAlias("coilpict_添付演出１", "coilpict_添付演出");
	Request("coilpict_添付演出１", AddRender);
	Fade("coilpict_添付演出１", 0, 0, null, true);

	CreateColor("coilpict_添付演出２", 10709, $X添付座標, $Y添付座標, 43, 41, "WHITE");
	SetAlias("coilpict_添付演出２", "coilpict_添付演出");
	Request("coilpict_添付演出２", AddRender);
	Fade("coilpict_添付演出２", 0, 0, null, true);


	//588,280 500,201
	Position("coilpict_窓",$X座標値,$Y座標値);
	$X座標値+=188;
	$Y座標値+=181;

	if($X添付座標>$X座標値){
		$X座標値２=$X添付座標-(($X添付座標-$X座標値)/3);
		$X座標値３=$X添付座標-(($X添付座標-$X座標値)/3*2);
	}else{
		$X座標値２=$X添付座標+(($X座標値-$X添付座標)/3);
		$X座標値３=$X添付座標+(($X座標値-$X添付座標)/3*2);
	}
	$Y座標値２=$Y座標値+100;



	Position("coilpict_窓",$X演出座標,$Y演出座標);
	$X演出座標+=180;
	$Y演出座標-=5;
	CreateTexture("coilpict_窓/coilpict_色味１", 10706, $X演出座標, $Y演出座標, "cg/sys/coil/mail/コイルメール_画像出現1.png");//10530
	SetAlias("coilpict_窓/coilpict_色味１", "coilpict_窓/coilpict_色味１");
	Request("coilpict_窓/coilpict_色味１", AddRender);
	Fade("coilpict_窓/coilpict_色味１", 0, 0, null, true);
	SetVertex("coilpict_窓/coilpict_色味１", 0, 205);
	Zoom("coilpict_窓/coilpict_色味１", 0, 4000, 1000, null, false);
//	$X演出座標-=30;
//	$Y演出座標-=181;
	CreateTexture("coilpict_窓/coilpict_色味２", 10706, $X演出座標, $Y演出座標, "cg/sys/coil/mail/コイルメール_画像出現2.png");//10530
	SetAlias("coilpict_窓/coilpict_色味２", "coilpict_窓/coilpict_色味２");
	Request("coilpict_窓/coilpict_色味２", AddRender);
	Fade("coilpict_窓/coilpict_色味２", 0, 0, null, true);
	SetVertex("coilpict_窓/coilpict_色味２", 57, 205);
	Zoom("coilpict_窓/coilpict_色味２", 0, 4000, 1000, null, false);


//////////////////////////////////////////////////////////
//	Fade("coilpict_演出", 0, 0, null, false);
//	Zoom("coilpict_演出", 0, 1000, 1000, null, true);

	Rotate("coilpict_窓", 0, 90, 0, 0, null, true);
	Rotate("coilpict_窓/*", 0, 90, 0, 0, null, true);
	Rotate("coilpict_窓/*/*", 0, 90, 0, 0, null, true);

	Zoom("coilpict_窓", 0, 0, 1000, Dxl2, true);
	Fade("coilpict_窓/ベース２", 0, 500, null, true);

	Zoom("@coilpict_欄", 0, 0, 1000, Dxl2, true);//○○○


	Move("coilpict_窓/*/*/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_窓/*/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_窓/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_窓/*", 0, @0, @418, Dxl1, false);

	Move("coilpict_窓/追加*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*/*", 0, @0, @0, Dxl1, false);
	WaitMove("coilpict_窓/*", null);

	Move("coilpict_窓/coilpict_色味*", 0, $X演出座標, $Y演出座標, Axl1, true);
	Move("coilpict_窓/coilpict_色味１", 0, @-200, @0, Dxl1, false);
	Move("coilpict_窓/coilpict_色味２", 0, @200, @0, Dxl1, false);

//	WaitKey();
//////////////////////////////////////////////////////////

	Position("coilpict_窓",$X演出座標１,$Y演出座標１);
	CreateMask("マスク３", 200, $X演出座標１, $Y演出座標１, "cg/sys/coil/mail/コイルメール_画像マスク.png", false);
	SetAlias("マスク３", "マスク３");

	$X演出座標=$X演出座標１+20;
	$Y演出座標=$Y演出座標１-50;
	CreateColor("マスク３/coilpict_光彩１", 10706, $X演出座標, $Y演出座標, 300, 600, "41a4ae");
	SetAlias("マスク３/coilpict_光彩１", "マスク３/coilpict_光彩１");
	Request("マスク３/coilpict_光彩１", AddRender);

	$X演出座標=$X演出座標１+120;
	$Y演出座標=$Y演出座標１+0;
	CreateColor("マスク３/coilpict_光彩２", 10706, $X演出座標, $Y演出座標, 200, 200, "41a5ae");
	SetAlias("マスク３/coilpict_光彩２", "マスク３/coilpict_光彩２");
	Request("マスク３/coilpict_光彩２", AddRender);

	$X演出座標=$X演出座標１+190;
	$Y演出座標=$Y演出座標１+100;
	CreateColor("マスク３/coilpict_光彩３", 10706, $X演出座標, $Y演出座標, 300, 400, "41a4ae");
	SetAlias("マスク３/coilpict_光彩３", "マスク３/coilpict_光彩３");
	Request("マスク３/coilpict_光彩３", AddRender);

	$X演出座標=$X演出座標１+310;
	$Y演出座標=$Y演出座標１+0;
	CreateColor("マスク３/coilpict_光彩４", 10706, $X演出座標, $Y演出座標, 60, 500, "41a5ae");
	SetAlias("マスク３/coilpict_光彩４", "マスク３/coilpict_光彩４");
	Request("マスク３/coilpict_光彩４", AddRender);

	$X演出座標=$X演出座標１+330;
	$Y演出座標=$Y演出座標１-0;
	CreateColor("マスク３/coilpict_光彩５", 10706, $X演出座標, $Y演出座標, 100, 100, "41a4ae");
	SetAlias("マスク３/coilpict_光彩５", "マスク３/coilpict_光彩５");
	Request("マスク３/coilpict_光彩５", AddRender);

	$X演出座標=$X演出座標１+0;
	$Y演出座標=$Y演出座標１+0;
	CreateColor("マスク３/coilpict_光彩６", 10706, $X演出座標, $Y演出座標, 250, 150, "41a6ae");//41a6ae
	SetAlias("マスク３/coilpict_光彩６", "マスク３/coilpict_光彩６");
	Request("マスク３/coilpict_光彩６", AddRender);

	$X演出座標=$X演出座標１+30;
	$Y演出座標=$Y演出座標１-60;
	CreateColor("マスク３/coilpict_光彩７", 10706, $X演出座標, $Y演出座標, 200, 150, "AAAAAA");
	SetAlias("マスク３/coilpict_光彩７", "マスク３/coilpict_光彩７");
	Request("マスク３/coilpict_光彩７", AddRender);

	$X演出座標=$X演出座標１+110;
	$Y演出座標=$Y演出座標１+10;
	CreateColor("マスク３/coilpict_光彩８", 10706, $X演出座標, $Y演出座標, 100, 50, "AAAAAA");
	SetAlias("マスク３/coilpict_光彩８", "マスク３/coilpict_光彩８");
	Request("マスク３/coilpict_光彩８", AddRender);

	$X演出座標=$X演出座標１+200;
	$Y演出座標=$Y演出座標１+110;
	CreateColor("マスク３/coilpict_光彩９", 10706, $X演出座標, $Y演出座標, 200, 300, "AAAAAA");
	SetAlias("マスク３/coilpict_光彩９", "マスク３/coilpict_光彩９");
	Request("マスク３/coilpict_光彩９", AddRender);

	Zoom("マスク３/coilpict_光彩*", 0, 0, 0, Dxl2, true);


	CreateSE("coilsound_pict6","se物体_コイル_操作音01");
	CreateSE("coilsound_pict7","se物体_コイル_ゲージ溜まる02L");
	CreateSE("coilsound_pict8","se物体_コイル_システム画像展開");

	MusicStart("coilsound_pict6",0,700,0,1000,null,false);
	MusicStart("coilsound_pict7",300,700,0,1000,null,false);

	Fade("coilpict_添付点滅", 0, 1000, null, false);
	Fade("coilpict_窓/coilpict_色味１", 0, 1000, null, false);
	Fade("coilpict_窓/coilpict_色味２", 0, 1000, null, false);

	Fade("coilmail_窓/添付点滅", 200, 0, null, false);

	//Move("coilpict_添付*", 500, $X座標値, $Y座標値, Dxl1, true);
	BezierMove("coilpict_添付*", 500, (@0,@0){$X座標値２,$Y座標値２}{$X座標値３,$Y座標値２}($X座標値,$Y座標値), Dxl1, true);

	DrawTransition("coilpict_添付演出１", 400, 0, 1000, 100, Dxl1, "cg/data/mosaic_01_00_0.png", false);

	Rotate("coilpict_添付演出２", 200, 3600, 0, 0, null, false);

	Fade("coilpict_添付点滅", 200, 0, Axl2, false);
	Fade("coilpict_添付演出１", 200, 1000, null, false);
	Fade("coilpict_添付演出２", 200, 500, null, true);


	Zoom("マスク３/coilpict_光彩*", 700, 1000, 1000, null, false);
	Fade("マスク３/coilpict_光彩*", 700, 0, null, false);
	Request("マスク３/coilpict_光彩*", Disused);

	Fade("coilpict_添付演出２", 200, 0, null, false);

	Zoom("coilpict_添付*", 400, 50, 10000, Axl2, false);
	Rotate("coilpict_添付*", 200, @160, 0, 0, Dxl1, true);
	Rotate("coilpict_添付*", 200, 0, 0, 0, Dxl1, false);


	Fade("coilpict_演出", 0, 350, null, false);//
	Zoom("coilpict_演出", 150, 1500, 200, null, false);//

	Wait(100);

//	WaitKey();
////////////////////////////////////////
	$coilpictON=true;
	CoilBlack();

	SetVolumeEX("coilsound_pict7", 100, 0, null);
	MusicStart("coilsound_pict8",0,700,0,1000,null,false);

	Request("coilpict_窓/coilpict_欄/coilpict_絵", Play);

	Fade("coilpict_添付*", 50, 0, null, true);

	Zoom("coilpict_窓/coilpict_色味*", 500, 1000, 1000, Axl3, false);
	Fade("coilpict_窓/coilpict_色味*", 500, 0, Axl3, false);
	Move("coilpict_窓/coilpict_色味１", 500, @-100, @0, Axl1, false);
	Move("coilpict_窓/coilpict_色味２", 500, @100, @0, Axl1, false);


	Fade("@coilpict_演出*", 600, 0, null, false);

	Fade("coilpict_演出", 150, 0, null, false);//
	Zoom("coilpict_演出", 500, 1000, 1000, null, false);//

	Zoom("coilpict_窓/coilpict_欄", 600, 1000, 1000, Dxl1, false);//○○○
	Zoom("coilpict_窓", 600, 1000, 1000, Dxl1, false);

	Rotate("coilpict_窓", 500, 0, 0, 0, Dxl2, false);
	Rotate("coilpict_窓/*", 500, 0, 0, 0, Dxl2, false);
	Rotate("coilpict_窓/*/*", 500, 0, 0, 0, Dxl2, false);

	Move("coilpict_窓/マスク２", 500, @0, @-800, null, false);//▼▼▼


	Zoom("@coilpict_ベース", 500, 1000, 1000, DxlAuto, false);

	DrawTransition("@coilpict_演出色", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition("coilpict_窓/coilpict_欄/coilpict_絵", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade("coilpict_窓/coilpict_欄/coilpict_絵", 400, 750, null, false);//特殊

	Fade("coilpict_窓/ベース", 200, 1000, null, false);
	Fade("coilpict_窓/ベース２", 300, 0, null, false);
	Fade("@coilpict_ベース３", 200, 1000, null, false);

	Zoom("@coilpict_ベース３", 500, 1000, 1200, Axl1, false);

//	Request("coilpict_ダウンロードプロセス", Start);

	//記憶
	$coilpictNumPre="coilpict_欄";

}





..▽画像メールDLからの呼び出し
function CoilPictFade_Down(){

	Position("coilpict_窓",$X座標1,$Y座標1);
	Position("coildown_窓",$X座標2,$Y座標2);
	$X座標=$X座標1-$X座標2+79;
	$Y座標=$Y座標1-$Y座標2+120;

	$X座標元=$X座標;
	$Y座標元=$Y座標;

	if($X座標>200){$X座標=200;}
	if($Y座標>200){$Y座標=200;}
	if($X座標<-200){$X座標=-200;}
	if($Y座標<-200){$Y座標=-200;}

//////////////////////////////////////////////////////////////////////


	//588,280 500,201
	Position("coilpict_窓",$X座標値,$Y座標値);
	$X座標値+=188;
	$Y座標値+=190;

	if($X添付座標>$X座標値){
		$X座標値２=$X添付座標-(($X添付座標-$X座標値)/3);
		$X座標値３=$X添付座標-(($X添付座標-$X座標値)/3*2);
	}else{
		$X座標値２=$X添付座標+(($X座標値-$X添付座標)/3);
		$X座標値３=$X添付座標+(($X座標値-$X添付座標)/3*2);
	}
	$Y座標値２=$Y座標値+100;


	Position("coilpict_窓",$X演出座標,$Y演出座標);
	$X演出座標+=180;
	$Y演出座標-=5;
	CreateTexture("coilpict_窓/coilpict_色味１", 10706, $X演出座標, $Y演出座標, "cg/sys/coil/mail/コイルメール_画像出現1.png");//10530
	SetAlias("coilpict_窓/coilpict_色味１", "coilpict_窓/coilpict_色味１");
	Request("coilpict_窓/coilpict_色味１", AddRender);
	Fade("coilpict_窓/coilpict_色味１", 0, 0, null, true);
	SetVertex("coilpict_窓/coilpict_色味１", 0, 205);
	Zoom("coilpict_窓/coilpict_色味１", 0, 4000, 1000, null, false);
//	$X演出座標-=30;
//	$Y演出座標-=181;
	CreateTexture("coilpict_窓/coilpict_色味２", 10706, $X演出座標, $Y演出座標, "cg/sys/coil/mail/コイルメール_画像出現2.png");//10530
	SetAlias("coilpict_窓/coilpict_色味２", "coilpict_窓/coilpict_色味２");
	Request("coilpict_窓/coilpict_色味２", AddRender);
	Fade("coilpict_窓/coilpict_色味２", 0, 0, null, true);
	SetVertex("coilpict_窓/coilpict_色味２", 57, 205);
	Zoom("coilpict_窓/coilpict_色味２", 0, 4000, 1000, null, false);

//	Fade("coilpict_窓/coilpict_色味１", 0, 1000, null, false);
//	Fade("coilpict_窓/coilpict_色味２", 0, 1000, null, false);


//////////////////////////////////////////////////////////
	Request("@coilpict_窓", Smoothing);

	Rotate("coilpict_窓", 0, 60, 0, 0, null, true);
	Rotate("coilpict_窓/*", 0, 60, 0, 0, null, true);
	Rotate("coilpict_窓/*/*", 0, 60, 0, 0, null, true);

	Zoom("coilpict_窓", 0, 300, 100, Dxl2, true);
	Fade("coilpict_窓/ベース", 0, 0, null, true);
	Fade("coilpict_窓/ベース２", 0, 0, null, true);

	Zoom("@coilpict_欄", 0, 0, 1000, Dxl2, true);//○○○


	Fade("coilpict_演出", 0, 0, null, false);
	Zoom("coilpict_演出", 0, 1000, 1000, null, true);

	Move("coilpict_窓/*/*/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_窓/*/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_窓/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_窓/*", 0, @0, @418, Dxl1, false);

	Move("coilpict_窓/追加*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*/*", 0, @0, @0, Dxl1, false);
	WaitMove("coilpict_窓/*", null);


	Move("coilpict_窓/coilpict_色味*", 0, $X演出座標, $Y演出座標, Axl1, true);
	Move("coilpict_窓/coilpict_色味１", 0, @-200, @0, Dxl1, false);
	Move("coilpict_窓/coilpict_色味２", 0, @200, @0, Dxl1, true);

	Fade("coilpict_窓/coilpict_色味*", 0, 0, null, true);


//	WaitKey();
//////////////////////////////////////////////////////////

	Position("coilpict_窓",$X演出座標１,$Y演出座標１);
	CreateMask("マスク３", 200, $X演出座標１, $Y演出座標１, "cg/sys/coil/mail/コイルメール_画像マスク.png", false);
	SetAlias("マスク３", "マスク３");

	$X演出座標=$X演出座標１+20;
	$Y演出座標=$Y演出座標１-50;
	CreateColor("マスク３/coilpict_光彩１", 10706, $X演出座標, $Y演出座標, 300, 600, "41a4ae");
	SetAlias("マスク３/coilpict_光彩１", "マスク３/coilpict_光彩１");
	Request("マスク３/coilpict_光彩１", AddRender);

	$X演出座標=$X演出座標１+120;
	$Y演出座標=$Y演出座標１+0;
	CreateColor("マスク３/coilpict_光彩２", 10706, $X演出座標, $Y演出座標, 200, 200, "41a5ae");
	SetAlias("マスク３/coilpict_光彩２", "マスク３/coilpict_光彩２");
	Request("マスク３/coilpict_光彩２", AddRender);

	$X演出座標=$X演出座標１+190;
	$Y演出座標=$Y演出座標１+100;
	CreateColor("マスク３/coilpict_光彩３", 10706, $X演出座標, $Y演出座標, 300, 400, "41a4ae");
	SetAlias("マスク３/coilpict_光彩３", "マスク３/coilpict_光彩３");
	Request("マスク３/coilpict_光彩３", AddRender);

	$X演出座標=$X演出座標１+310;
	$Y演出座標=$Y演出座標１+0;
	CreateColor("マスク３/coilpict_光彩４", 10706, $X演出座標, $Y演出座標, 60, 500, "41a5ae");
	SetAlias("マスク３/coilpict_光彩４", "マスク３/coilpict_光彩４");
	Request("マスク３/coilpict_光彩４", AddRender);

	$X演出座標=$X演出座標１+330;
	$Y演出座標=$Y演出座標１-0;
	CreateColor("マスク３/coilpict_光彩５", 10706, $X演出座標, $Y演出座標, 100, 100, "41a4ae");
	SetAlias("マスク３/coilpict_光彩５", "マスク３/coilpict_光彩５");
	Request("マスク３/coilpict_光彩５", AddRender);

	$X演出座標=$X演出座標１+0;
	$Y演出座標=$Y演出座標１+0;
	CreateColor("マスク３/coilpict_光彩６", 10706, $X演出座標, $Y演出座標, 250, 150, "41a6ae");//41a6ae
	SetAlias("マスク３/coilpict_光彩６", "マスク３/coilpict_光彩６");
	Request("マスク３/coilpict_光彩６", AddRender);

	$X演出座標=$X演出座標１+30;
	$Y演出座標=$Y演出座標１-60;
	CreateColor("マスク３/coilpict_光彩７", 10706, $X演出座標, $Y演出座標, 200, 150, "AAAAAA");
	SetAlias("マスク３/coilpict_光彩７", "マスク３/coilpict_光彩７");
	Request("マスク３/coilpict_光彩７", AddRender);

	$X演出座標=$X演出座標１+110;
	$Y演出座標=$Y演出座標１+10;
	CreateColor("マスク３/coilpict_光彩８", 10706, $X演出座標, $Y演出座標, 100, 50, "AAAAAA");
	SetAlias("マスク３/coilpict_光彩８", "マスク３/coilpict_光彩８");
	Request("マスク３/coilpict_光彩８", AddRender);

	$X演出座標=$X演出座標１+200;
	$Y演出座標=$Y演出座標１+110;
	CreateColor("マスク３/coilpict_光彩９", 10706, $X演出座標, $Y演出座標, 200, 300, "AAAAAA");
	SetAlias("マスク３/coilpict_光彩９", "マスク３/coilpict_光彩９");
	Request("マスク３/coilpict_光彩９", AddRender);

	Zoom("マスク３/coilpict_光彩*", 0, 0, 0, Dxl2, true);


	$X座標差=-$X座標元;
	$Y座標差=-$Y座標元;

	$X座標元１=$X座標元+100;
	$X座標元２=$X座標元-100;
	$Y座標元３=$Y座標元-800;

	Move("coilpict_*", 0, @$X座標差, @$Y座標差, null, false);//▼▼▼
	Move("coilpict_*/*", 0, @$X座標差, @$Y座標差, null, false);//▼▼▼
	Move("coilpict_*/*/*", 0, @$X座標差, @$Y座標差, null, false);//▼▼▼

	Move("coilpict_窓/追加*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*/*", 0, @0, @0, Dxl1, false);

	WaitMove("coilpict_窓/*", null);
	WaitMove("coilpict_窓/*/*", null);
	WaitMove("coilpict_窓/*/*/*", null);


	CreateSE("coilsound_pict8","se物体_コイル_システム画像展開");
//////////////////////////////////////////////////////////////////////

	Zoom("coildown_窓", 0, 1500, 1500, Axl1, false);
	Zoom("coildown_窓/マスク２", 0, 1500, 1500, Axl1, false);//▼▼▼

	Move("coildown_窓/マスク２", 0, @0, @203, null, true);//▼▼▼
	Zoom("@coildown_ベース３", 0, 1000, 1000, null, true);

	Fade("@coildown_演出*", 0, 0, null, false);
	Fade("@coildown_ベース２", 0, 1000, null, false);
	Fade("@coildown_ベース３", 0, 1000, null, true);

//	WaitKey();
	MusicStart("coilsound_pict8",0,700,0,1000,null,false);

	Zoom("coildown_窓", 0, 3000, 3000, Dxl1, false);
	Zoom("@coildown_ベース３", 200, 1200, 1200, Dxl2, false);//1200, 1700,

	Fade("@coildown_ベース３", 500, 0, null, false);
	Fade("@coildown_ベース２", 500, 0, null, false);
	Fade("@coildown_ベース", 500, 0, null, false);

	Fade("@coildown_*", 500, 0, null, false);
	Fade("@coildown_*/*", 500, 0, null, false);
	Fade("@coildown_*/*/*", 500, 0, null, false);

	Zoom("@coildown_ベース２", 500, 1600, 2600, Axl1, false);
	Zoom("@coildown_ベース", 500, 1600, 2600, Axl1, false);

	DrawTransition("@coildown_ベース", 500, 1000, 0, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition("@coildown_ベース３", 500, 1000, 0, 100, Dxl1, "cg/data/mosaic_01_00_0.png", false);

	Wait(100);

	Move("coildown_*", 500, @$X座標, @$Y座標, Axl1, false);
	Move("coildown_*/*", 500, @$X座標, @$Y座標, Axl1, false);
	Move("coildown_*/*/*", 500, @$X座標, @$Y座標, Axl1, false);

	Move("coilpict_窓/追加*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*/*", 0, @0, @0, Dxl1, false);

	Wait(100);

	Request("coildown_*", Disused);
	Request("coildown_*/*", Disused);
	Request("coildown_*/*/*", Disused);

//	WaitKey();
//////////////////////////////////////////////////////////////////////
	if($CoilDownNum==2){
		$coildownpriON=false;
	}else{
		$coildownON=false;
	}
	$coilpictON=true;
	CoilBlack();

	Request("coilpict_窓/coilpict_欄/coilpict_絵", Play);

	Move("coilpict_*", 500, @$X座標元, @$Y座標元, Dxl1, false);//▼▼▼
	Move("coilpict_*/*", 500, @$X座標元, @$Y座標元, Dxl1, false);//▼▼▼
	Move("coilpict_*/*/*", 500, @$X座標元, @$Y座標元, Dxl1, false);//▼▼▼

	Move("coilpict_窓/追加*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_窓/追加*/*/*", 0, @0, @0, Dxl1, false);

	Move("coilpict_窓/coilpict_色味１", 500, @$X座標元２, @$Y座標元, Axl1, false);
	Move("coilpict_窓/coilpict_色味２", 500, @$X座標元１, @$Y座標元, Axl1, false);
	Move("coilpict_窓/マスク２", 500, @$X座標元, @$Y座標元３, null, false);//▼▼▼
//	Move("coilpict_窓/coilpict_色味１", 500, @-100, @0, Axl1, false);
//	Move("coilpict_窓/coilpict_色味２", 500, @100, @0, Axl1, false);
//	Move("coilpict_窓/マスク２", 500, @0, @-800, null, false);//▼▼▼


	Fade("coilpict_窓/ベース２", 0, 1000, null, false);
	Fade("coilpict_窓/coilpict_色味*", 0, 1000, null, true);
	DrawTransition("coilpict_窓/ベース２", 600, 0, 1000, 100, null, "cg/data/left.png", false);
	DrawTransition("coilpict_窓/coilpict_色味*", 600, 0, 1000, 100, null, "cg/data/left.png", false);

	Zoom("coilpict_窓/coilpict_色味*", 500, 1000, 1000, Axl3, false);
	Fade("coilpict_窓/coilpict_色味*", 500, 0, Axl3, false);

	Fade("coilpict_窓/ベース", 500, 1000, null, false);

	Zoom("マスク３/coilpict_光彩*", 700, 1000, 1000, null, false);
	Fade("マスク３/coilpict_光彩*", 700, 0, null, false);
	Request("マスク３/coilpict_光彩*", Disused);

	Fade("@coilpict_演出*", 600, 0, null, false);

	Zoom("coilpict_窓/coilpict_欄", 600, 1000, 1000, Dxl1, false);//○○○
	Zoom("coilpict_窓", 600, 1000, 1000, Dxl1, false);

	Rotate("coilpict_窓", 600, 0, 0, 0, Dxl1, false);
	Rotate("coilpict_窓/*", 600, 0, 0, 0, Dxl1, false);
	Rotate("coilpict_窓/*/*", 600, 0, 0, 0, Dxl1, false);

	Zoom("@coilpict_ベース", 500, 1000, 1000, DxlAuto, false);

	DrawTransition("@coilpict_演出色", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition("coilpict_窓/coilpict_欄/coilpict_絵", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade("coilpict_窓/coilpict_欄/coilpict_絵", 400, 750, null, false);//特殊

	Fade("coilpict_窓/ベース", 200, 1000, null, false);
	Fade("coilpict_窓/ベース２", 300, 0, null, false);
	Fade("@coilpict_ベース３", 200, 1000, null, false);

	Zoom("@coilpict_ベース３", 500, 1000, 1200, Axl1, false);

	//記憶
	$coilpictNumPre="coilpict_欄";
}



































//▽プロセス（セイ）

//■着信、発信、通信エラー
//■着信履歴（１シーンのみ）

//□ノイズの画面
//□メンテナンス




.■電話『基本セット』============================================================================================
..▽着歴追加マクロ
function CoilReceAdd($CoilRece番号,$CoilRece人物,$CoilRece通話){

	$TempCoilRece=1;
	while($CoilReceCount>=$TempCoilRece){
		if(VariableValue($,"CoilRece番号"+$TempCoilRece)==$CoilRece番号){
			return;
		}
		$TempCoilRece++;
	}

	$CoilReceCount++;

	VariableValue($,$CoilRece番号+"_num",$CoilReceCount);

	VariableValue($,$CoilRece番号+"_人物",$CoilRece人物);
	VariableValue($,$CoilRece番号+"_通話",$CoilRece通話);

	VariableValue($,"CoilRece人物"+$CoilReceCount,$CoilRece人物);
	VariableValue($,"CoilRece通話"+$CoilReceCount,$CoilRece通話);
	VariableValue($,"CoilRece番号"+$CoilReceCount,$CoilRece番号);
}

..▽電話欄基本セット（10050）
function CoilPhoneBase(){

	CreateWindow("coilphone_窓", 20000, $coilphoneX, $coilphoneY, 287, 360, false);
	SetAlias("coilphone_窓", "coilphone_窓");

	CreateTexture("coilphone_窓/ベース", 10050, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/コイル電話枠.png");//10000
	SetAlias("coilphone_窓/ベース", "coilphone_ベース");
	CreateTexture("coilphone_窓/ベース２", 10059, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/コイル電話枠.png");//10500
	SetAlias("coilphone_窓/ベース２", "coilphone_ベース２");
	SetTone("coilphone_窓/ベース２", Monochrome);

	CreateTexture("coilphone_窓/黒", 10059, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/コイル電話枠_黒.png");//10500
	SetAlias("coilphone_窓/黒", "coilphone_黒");
	Fade("coilphone_窓/黒", 0, 0, null, true);

	CreateMask("coilphone_窓/マスク２", 200, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/コイル演出トランジ.png", false);
	SetAlias("coilphone_窓/マスク２", "coilphone_窓/マスク２");
	CreateTexture("coilphone_窓/マスク２/ベース３", 10055, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/コイル電話枠.png");//10100
	SetAlias("coilphone_窓/マスク２/ベース３", "coilphone_ベース３");
	Request("coilphone_窓/マスク２/ベース３", AddRender);

	$coilphoneX4=$coilphoneX-20;
	$coilphoneY4=$coilphoneY-8;
	CreateTexture("coilphone_演出", 10052, $coilphoneX4, $coilphoneY4, "cg/sys/coil/phone/コイル演出.png");//10130
	SetAlias("coilphone_演出", "coilphone_演出");
	Request("coilphone_演出", AddRender);
	Fade("coilphone_演出", 0, 0, null, true);
	Zoom("coilphone_演出", 0, 1000, 0, Dxl1, true);

	CreateTexture("coilphone_消去", 10052, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/コイル電話枠_演出.png");//10130
	SetAlias("coilphone_消去", "coilphone_消去");
	Request("coilphone_消去", AddRender);
	Fade("coilphone_消去", 0, 0, null, true);
	SetVertex("coilphone_消去", 130, 0);
	Zoom("coilphone_消去", 0, 1200, 1000, null, false);

	$coilphoneX5=$coilphoneX+25;
	$coilphoneY5=$coilphoneY+294;
	CreateTexture("coilphone_窓/発信開始", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/コイル電話ボタンCALL.png");//10130
	SetAlias("coilphone_窓/発信開始", "coilphone_発信開始");
	Request("coilphone_窓/発信開始", Smoothing);

	CreateTexture("coilphone_窓/発信プロ開始", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/コイル電話ボタンCALL.png");//10130
	SetAlias("coilphone_窓/発信プロ開始", "coilphone_発信プロ開始");
	Request("coilphone_窓/発信プロ開始", AddRender);

	CreateTexture("coilphone_窓/発信終了", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/コイル電話ボタンENDCALL.png");//10130
	SetAlias("coilphone_窓/発信終了", "coilphone_発信終了");
	Request("coilphone_窓/発信終了", Smoothing);

	CreateTexture("coilphone_窓/発信プロ終了", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/コイル電話ボタンENDCALL.png");//10130
	SetAlias("coilphone_窓/発信プロ終了", "coilphone_発信プロ終了");
	Request("coilphone_窓/発信プロ終了", AddRender);

	CreateTexture("coilphone_窓/発信演出", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/コイル電話ボタン.png");//10130
	SetAlias("coilphone_窓/発信演出", "coilphone_発信演出");
	Request("coilphone_窓/発信演出", AddRender);
	Fade("coilphone_窓/発信演出", 0, 0, null, false);


	$coilphoneX6=$coilphoneX+12;
	$coilphoneY6=$coilphoneY+56;
	CreateWindow("coilphone_窓/coilphone_欄", 20000, $coilphoneX6, $coilphoneY6, 263, 233, false);
	SetAlias("coilphone_窓/coilphone_欄", "coilphone_欄");


	CreateProcess("coilphone_ダウンロードプロセス", 150, 0, 0, "CoilRacePro_Call");
	SetAlias("coilphone_ダウンロードプロセス", "coilphone_ダウンロードプロセス");

	CreateSE("coilsound_phone1","se物体_コイル_システムオープン");
	CreateSE("coilsound_phone2","se物体_コイル_システムクローズ");
}


..▽電話フェード消し
function CoilPhoneDelete(){

	Zoom("@coilphone_窓", 0, 1000, 1000, null, true);
	Zoom("coilphone_窓/マスク２", 0, 1000, 1000, null, true);


	Position("@coilphone_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilphone_ベース３", 0, 0, null, false);
	Zoom("@coilphone_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilphone_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);


	Request("coilphone_*", Stop);
	Request("coilphone_rece_ダウンロードプロセス", Stop);
	Request("coilphone_ダウンロードプロセス", Stop);
	WaitAction("coilphone_rece_ダウンロードプロセス", null);
	WaitAction("coilphone_ダウンロードプロセス", null);

	Fade("@coilphone_ベース３", 0, 1000, null, false);

	Zoom("coilphone_演出", 0, 1500, 300, null, false);
	Fade("coilphone_演出", 0, 250, null, true);

//	WaitKey();
	$coilphoneNOW="無し";
	$coilphoneON=false;
	CoilBlack();

	MusicStart("coilsound_phone2",0,700,0,1000,null,false);

//	Fade("@coilphone_発信プロ開始", 200, 0, null, false);
	Fade("@coilphone_発信*", 300, 0, null, false);
	Zoom("@coilphone_発信*", 300, 0, 0, Dxl1, false);


	Zoom("coilphone_消去", 500, 1100, 0, null, false);
	Fade("coilphone_消去", 500, 1000, Dxl3, false);

	Fade("coilphone_演出", 300, 1000, null, false);
	Zoom("coilphone_演出", 400, 750, 0, Axl1, false);

//	Zoom("@coilphone_ベース３", 50, 1000, 1500, null, false);
	Fade("@coilphone_ベース３", 50, 0, null, false);
	Fade("@coilphone_ベース", 500, 500, null, false);

	Move("coilphone_窓/*/*", 500, @0, @-375, Dxl1, false);
	Move("coilphone_窓/*", 500, @0, @-375, Dxl1, false);

	Zoom("@coilphone_ベース２", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilphone_ベース", 500, 1000, 750, AxlAuto, false);

//	Fade("coilphone_演出", 400, 0, Axl3, false);
//	Rotate("coilphone_演出", 400, @-90, @0, @0, Axl3, false);


	Delete("coilphone_miss_ダウンロードプロセス");
	Delete("coilphone_call_ダウンロードプロセス");
	Delete("coilphone_call_ダウンロードプロセス*");
	Delete("coilphone_rece_ダウンロードプロセス");
	Delete("coilphone_ダウンロードプロセス");
	Request("coilphone_窓/*/*", Disused);
	Request("coilphone_窓/*", Disused);
	Request("coilphone_演出", Disused);
	Request("coilphone_消去", Disused);


	$CoilPhone=false;
}



.■電話『発着信セット』
..▽電話着信セット（10050）
function CoilPhone_IncallSet($coilphoneX,$coilphoneY,$CoilRece管理番号,$CoilRece管理人物,$CoilRece管理通話){

	$coilphoneName="着信";
	CoilPhone_CallBase();
}

..▽電話発信セット（10050）
function CoilPhone_OutcallSet($coilphoneX,$coilphoneY,$CoilRece管理番号,$CoilRece管理人物,$CoilRece管理通話){

	$coilphoneName="発信";
	CoilPhone_CallBase();
}

..▽電話コール基本
function CoilPhone_CallBase(){

	if($coilphoneName=="着信"){
		CoilReceAdd($CoilRece管理番号,$CoilRece管理人物,$CoilRece管理通話);
	}

	if(!$CoilPhone){
		CoilPhoneBase();
	}else{
		Position("coilphone_窓",$coilphoneX,$coilphoneY);
	}

//――――――――――――――――――――――――――――――――――
	if($coilphoneName=="着信"){
		$coilphone_callnut1="coilphone_窓/coilphone_call_種類着信";
		$coilphone_callnut1a="coilphone_call_種類着信";
		$coilphone_callimg1="cg/sys/coil/phone/コイル電話表示_IC.png";
		$coilphone_callnut2="coilphone_窓/coilphone_欄/人物着信";
		$coilphone_callnut3="coilphone_窓/coilphone_欄/枠着信";
		$coilphone_callnut3_a="coilphone_窓/coilphone_欄/演出枠";
		$coilphone_callnut4w="coilphone_窓/coilphone_欄/窓";
		$coilphone_callnut5="coilphone_窓/coilphone_欄/デフォ着信";

		$coilphone_callnut6="coilphone_窓/coilphone_欄/通話着信";
		$coilphone_callnut6a="coilphone_窓/coilphone_欄/表示着信１";
		$coilphone_callnut6b="coilphone_窓/coilphone_欄/表示着信２";
		$coilphone_callnut6c="coilphone_窓/coilphone_欄/表示着信３";
		$coilphone_callimg6a="cg/sys/coil/phone/表示IC 01.png";
		$coilphone_callimg6b="cg/sys/coil/phone/表示IC 02.png";
		$coilphone_callimg6c="cg/sys/coil/phone/表示IC 03.png";

		$coilphone_callpro="CoilCallPro1";

	}else{
		$coilphone_callnut1="coilphone_窓/coilphone_call_種類発信";
		$coilphone_callnut1a="coilphone_call_種類発信";
		$coilphone_callimg1="cg/sys/coil/phone/コイル電話表示_OC.png";
		$coilphone_callnut2="coilphone_窓/coilphone_欄/人物発信";
		$coilphone_callnut3="coilphone_窓/coilphone_欄/枠発信";
		$coilphone_callnut3_a="coilphone_窓/coilphone_欄/演出枠";
		$coilphone_callnut4w="coilphone_窓/coilphone_欄/窓";
		$coilphone_callnut5="coilphone_窓/coilphone_欄/デフォ発信";

		$coilphone_callnut6="coilphone_窓/coilphone_欄/通話発信";
		$coilphone_callnut6a="coilphone_窓/coilphone_欄/表示発信１";
		$coilphone_callnut6b="coilphone_窓/coilphone_欄/表示発信２";
		$coilphone_callnut6c="coilphone_窓/coilphone_欄/表示発信３";
		$coilphone_callimg6a="cg/sys/coil/phone/表示OC 01.png";
		$coilphone_callimg6b="cg/sys/coil/phone/表示OC 02.png";
		$coilphone_callimg6c="cg/sys/coil/phone/表示OC 03.png";

		$coilphone_callpro="CoilCallPro2";
	}

	CreateProcess("coilphone_call_ダウンロードプロセス", 150, 0, 0, $coilphone_callpro);
	SetAlias("coilphone_call_ダウンロードプロセス", "coilphone_call_ダウンロードプロセス");

	CreateProcess("coilphone_call_ダウンロードプロセス２", 150, 0, 0, "CoilCallProMoni");
	SetAlias("coilphone_call_ダウンロードプロセス２", "coilphone_call_ダウンロードプロセス２");

	CreateProcess("coilphone_call_ダウンロードプロセス３", 150, 0, 0, "CoilCallProTalk");
	SetAlias("coilphone_call_ダウンロードプロセス３", "coilphone_call_ダウンロードプロセス３");


	//▽種類
	$coilphone_callX1=$coilphoneX+64+3;
	$coilphone_callY1=$coilphoneY+18;
	CreateTexture($coilphone_callnut1, 10051, $coilphone_callX1, $coilphone_callY1, $coilphone_callimg1);
	SetAlias($coilphone_callnut1, $coilphone_callnut1a);

	//▽人物
	SetFont("ＭＳ ゴシック", 25, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$coilphoneX;
	$coiltempY=$coilphoneY+186;
	$coiltempimg=$CoilRece管理人物;
	$temp=String("<SPAN size=-2>%s</SPAN>",$CoilRece管理人物);
	CreateText($coilphone_callnut2, 10051, Center, $coiltempY, Auto, Auto, $temp);//10090
	SetAlias($coilphone_callnut2, $coilphone_callnut2);
	Request($coilphone_callnut2, NoLog);

/*
	$文字数=Strlen($coiltempimg);
	if($文字数<=3){$temphmin=158;}
	else if($文字数<=4){$temphmin=162;}
	else if($文字数<=5){$temphmin=165;}
	else if($文字数<=6){$temphmin=166;}
	else if($文字数<=7){$temphmin=169;}
	else if($文字数<=8){$temphmin=171;}
	else{$temphmin=173;}//9
*/
$temphmin=159;
	$temph=$coiltempX+$temphmin-512;
	Move($coilphone_callnut2, 0, @$temph, @0, null, true);

	//▽枠
	$coiltempX=$coilphoneX+83+3;
	$coiltempY=$coilphoneY+77;
	CreateTexture($coilphone_callnut3, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話フェース.png");
	SetAlias($coilphone_callnut3, $coilphone_callnut3);

	//▽顔デフォ
	$coiltempX=$coilphoneX+83+3;
	$coiltempY=$coilphoneY+77;
	CreateTexture($coilphone_callnut5, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話_デフォルトアイコン.png");
	SetAlias($coilphone_callnut5, $coilphone_callnut5);

	//▽顔窓
	$coiltempX=$coilphoneX+83+7+3;
	$coiltempY=$coilphoneY+77+7;
	CreateWindow($coilphone_callnut4w, 10051, $coiltempX, $coiltempY, 98, 98, false);
	SetAlias($coilphone_callnut4w, $coilphone_callnut4w);

	//▽アニメーション
	$coiltempX=$coilphoneX+115;
	$coiltempY=$coilphoneY+218;
	CreateTexture($coilphone_callnut6, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/表示.png");
	SetAlias($coilphone_callnut6, $coilphone_callnut6);

	CreateTexture($coilphone_callnut3_a, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/表示.png");
	SetAlias($coilphone_callnut3_a, $coilphone_callnut3_a);
	Request($coilphone_callnut3_a, AddRender);
	Request($coilphone_callnut3_a, Smoothing);
	Fade($coilphone_callnut3_a, 0, 0, null, false);
	SetVertex($coilphone_callnut3_a, 28, 38);

	CreateTexture($coilphone_callnut6a, 10051, $coiltempX, $coiltempY, $coilphone_callimg6a);
	SetAlias($coilphone_callnut6a, $coilphone_callnut6a);
	CreateTexture($coilphone_callnut6b, 10051, $coiltempX, $coiltempY, $coilphone_callimg6b);
	SetAlias($coilphone_callnut6b, $coilphone_callnut6b);
	CreateTexture($coilphone_callnut6c, 10051, $coiltempX, $coiltempY, $coilphone_callimg6c);
	SetAlias($coilphone_callnut6c, $coilphone_callnut6c);
	Fade("coilphone_窓/coilphone_欄/表示*", 0, 0, null, false);


	Request("coilphone_窓/coilphone_欄/*", PushText);
	Request("coilphone_窓/coilphone_欄/*/*", PushText);


	$coilphoneX6=$coilphoneX+12;
	$coilphoneY6=$coilphoneY+56;
	CreateWindow("coilphone_窓/coilphone_call_幅", 20000, $coilphoneX6, $coilphoneY6, 263, 233, false);
	SetAlias("coilphone_窓/coilphone_call_幅", "coilphone_call_幅");

	CreateColor("coilphone_窓/coilphone_call_幅/演出色１", 10052, $coilphoneX, $coilphoneY, 300, 1, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone_窓/coilphone_call_幅/演出色１", "coilphone_call_演出色１");
	Request("coilphone_窓/coilphone_call_幅/演出色１", AddRender);
	CreateColor("coilphone_窓/coilphone_call_幅/演出色２", 10052, $coilphoneX, $coilphoneY, 300, 200, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone_窓/coilphone_call_幅/演出色２", "coilphone_call_演出色２");
	Request("coilphone_窓/coilphone_call_幅/演出色２", AddRender);
	Fade("@coilphone_call_演出色２", 0, 0, null, true);

	//―――――――――――――――――――――――――――
	//調整
	if(!$CoilPhone){
		Move("coilphone_窓/*", 0, @0, @-375, null, false);
		Move("coilphone_窓/*/*", 0, @0, @-375, null, false);
		Move("coilphone_窓/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone_発信終了", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone_発信開始", 0, 0, 0, Dxl1, false);
	
		Fade("@coilphone_発信開始", 0, 0, null, true);
		Fade("@coilphone_発信終了", 0, 0, null, true);
		Fade("@coilphone_発信プロ*", 0, 0, null, true);

		Fade("@coilphone_窓/coilphone_欄/枠*", 0, 0, null, false);

		Fade("@coilphone_ベース３", 0, 0, null, false);
		Fade("coilphone_窓/ベース", 0, 750, null, true);
	
		SetVertex("@coilphone_ベース", 143, 0);
		Zoom("@coilphone_ベース", 0, 1200, 1000, null, true);//ここだけちがう
		Fade("@coilphone_ベース", 0, 0, null, true);

	}else{
		Fade($coilphone_callnut1, 0, 0, null, false);
		Fade($coilphone_callnut2, 0, 0, null, false);
		Fade($coilphone_callnut3, 0, 0, null, false);
		Fade($coilphone_callnut4, 0, 0, null, false);
		Fade($coilphone_callnut5, 0, 0, null, false);

		Fade($coilphone_callnut6, 0, 0, null, false);
		Fade($coilphone_callnut6a, 0, 0, null, false);
		Fade($coilphone_callnut6b, 0, 0, null, false);
		Fade($coilphone_callnut6c, 0, 0, null, false);

		Fade("coilphone_窓/coilphone_call_幅/演出色１", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_call_幅/演出色２", 0, 0, null, false);

	}

	if($coilphoneName=="発信"){
		CreateSE("coilsound_phone3","se物体_コイル_操作音01");
		CreateSE("coilsound_phone9","se物体_コイル_ターゲット開放");
	
		CreateSE("coilsound_phone4","se物体_コイル_システムメール展開");
	
		CreateSE("coilsound_phone5","se物体_コイル_操作音01");
		CreateSE("coilsound_phone6","se物体_コイル_発信待機01");
		CreateSE("coilsound_phone_call","se物体_コイル_発信待機02L");
	}

	$CoilPhone=true;
}



..▽コール開始
function CoilPhone_CallFade(){

	if(!$coilphoneON){
	//■ベースがなかった場合（通常演出）
		MusicStart("coilsound_phone1",0,700,0,1000,null,false);

		Fade("@coilphone_call_演出色１", 0, 0, Axl1, false);
	
		Zoom("@coilphone_ベース", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone_演出", 0, 350, null, false);
	//	Zoom("coilphone_演出", 200, 1500, 200, null, false);
	
	//	Fade("coilphone_窓/ベース２", 300, 500, null, false);
	//	Fade("coilphone_窓/ベース", 300, 1000, null, false);
	//	Move("coilphone_窓/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone_窓/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone_演出", 0, 350, null, false);
		Zoom("coilphone_演出", 150, 1500, 200, null, false);
	
		Fade("coilphone_窓/ベース２", 200, 500, null, false);
	//	Fade("coilphone_窓/ベース", 200, 1000, null, false);
		Move("coilphone_窓/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_窓/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_窓/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphoneON=true;
		CoilBlack();

		Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 600, null, false);

		if($coilphoneName=="着信"){
			Fade("coilphone_窓/coilphone_欄/通話*", 0, 1000, null, false);
			Fade("@coilphone_発信プロ終了", 0, 1000, null, false);
		}else{
			Fade("coilphone_窓/coilphone_call_種類*", 0, 0, null, false);

			Fade("coilphone_窓/coilphone_欄/通話*", 0, 0, null, false);
			Fade("@coilphone_発信プロ開始", 0, 1000, null, false);
		}

		Fade("coilphone_演出", 0, 1000, null, true);

		Move("coilphone_窓/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_窓/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_窓/*", 500, @0, @339, Dxl1, false);

		Fade("coilphone_窓/ベース", 200, 1000, null, false);
		Fade("coilphone_窓/ベース２", 200, 0, null, false);
		Fade("@coilphone_ベース３", 200, 1000, null, false);
	
		Fade("coilphone_演出", 500, 0, Axl2, false);
		Zoom("coilphone_演出", 200, 1000, 1000, null, false);
	
		if($coilphoneName=="着信"){
			Fade("@coilphone_発信プロ終了", 300, 0, null, false);
			Fade("@coilphone_発信終了", 400, 1000, null, false);
		}else{
			Fade("@coilphone_発信プロ開始", 400, 0, null, false);
			Fade("@coilphone_発信開始", 400, 1000, null, false);
		}
		Zoom("@coilphone_発信終了", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone_発信開始", 400, 1000, 1000, Dxl1, false);


		Move("coilphone_窓/マスク２", 500, @0, @-373, null, false);
		Zoom("@coilphone_ベース３", 500, 1000, 1200, Axl1, false);

		//WaitAction("coilphone_窓/マスク２", null);
		//$SYSTEM_skip=false;
		//Draw();

		if($coilphoneName=="着信"){
			Request("coilphone_call_ダウンロードプロセス", Start);
			Request("coilphone_call_ダウンロードプロセス２", Start);
		//	Request("coilphone_ダウンロードプロセス", Start);
		}else if($coilphoneError){
			WaitAction("coilphone_窓/マスク２", null);
			MusicStart("coilsound_phone5",0,700,0,1000,null,false);

			Fade("coilphone_窓/coilphone_call_種類*", 0, 1000, null, false);
			Fade("coilphone_窓/発信演出", 0, 1000, null, true);
			Fade("coilphone_窓/発信演出", 200, 0, null, false);
			Fade("@coilphone_発信終了", 0, 1000, null, false);
			Fade("@coilphone_発信開始", 0, 0, null, false);

			Fade("coilphone_窓/coilphone_欄/通話*", 0, 500, null, false);

			WaitPlay("coilsound_phone5", null);
			MusicStart("coilsound_phone6",0,700,0,1000,null,false);
			WaitPlay("coilsound_phone6", null);
			Wait(500);
			CoilPhone_Error();
			$coilphoneError=false;
		}else{
			WaitAction("coilphone_窓/マスク２", null);
			MusicStart("coilsound_phone5",0,700,0,1000,null,false);

			Fade("coilphone_窓/coilphone_call_種類*", 0, 1000, null, false);
			Fade("coilphone_窓/発信演出", 0, 1000, null, true);
			Fade("coilphone_窓/発信演出", 200, 0, null, false);
			Fade("@coilphone_発信終了", 0, 1000, null, false);
			Fade("@coilphone_発信開始", 0, 0, null, false);

			Fade("coilphone_窓/coilphone_欄/通話*", 0, 500, null, false);

			WaitPlay("coilsound_phone5", null);
			MusicStart("coilsound_phone6",0,700,0,1000,null,false);
			WaitPlay("coilsound_phone6", null);

			Request("coilphone_call_ダウンロードプロセス", Start);
			Request("coilphone_call_ダウンロードプロセス２", Start);
		//	Request("coilphone_ダウンロードプロセス", Start);

			MusicStart("coilsound_phone_call",0,700,0,1000,null,true);
		}

	}else{
	//■ベースが合った場合（置換演出）
		Request("coilphone_*", Stop);
		//Request("@coilphone_窓/coilphone_欄/表示*", Erase);

		Position("coilphone_窓",$coilphoneX,$coilphoneY);

		//▽種類
		$coiltempX=$coilphoneX+64+3;
		$coiltempY=$coilphoneY+18;
		Move($coilphone_callnut1, 0, $coiltempX, $coiltempY, null, false);

		//▽人物
		$coiltempX=$coilphoneX;
		$coiltempY=$coilphoneY+186;

		$temph=ImageHorizon($coilphone_callnut2);
		$temph=(1024-$temph)/2;

/*
		$文字数=Strlen($CoilRece管理人物);
		if($文字数<=3){$temphmin=158;}
		else if($文字数<=4){$temphmin=162;}
		else if($文字数<=5){$temphmin=165;}
		else if($文字数<=6){$temphmin=166;}
		else if($文字数<=7){$temphmin=169;}
		else if($文字数<=8){$temphmin=171;}
		else{$temphmin=173;}//9
*/
$temphmin=159;
		$coiltempX=$temph+($coiltempX+$temphmin-512);
		Move($coilphone_callnut2, 0, $coiltempX, $coiltempY, null, false);

		//▽枠
		$coiltempX=$coilphoneX+83+3;
		$coiltempY=$coilphoneY+77;
		Move($coilphone_callnut3, 0, $coiltempX, $coiltempY, null, false);

		//▽顔デフォ
		$coiltempX=$coilphoneX+83+3;
		$coiltempY=$coilphoneY+77;
		Move($coilphone_callnut5, 0, $coiltempX, $coiltempY, null, false);

		//▽顔窓
		$coiltempX=$coilphoneX+83+7+3;
		$coiltempY=$coilphoneY+77+7;
		Move($coilphone_callnut4w, 0, $coiltempX, $coiltempY, null, false);

		//▽アニメーション
		$coiltempX=$coilphoneX+115;
		$coiltempY=$coilphoneY+218;
		Move($coilphone_callnut6, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone_callnut6a, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone_callnut6b, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone_callnut6c, 0, $coiltempX, $coiltempY, null, false);

		$coiltempX=$coilphoneX+12;
		$coiltempY=$coilphoneY+56;
		Move("coilphone_窓/coilphone_call_幅", 0, $coiltempX, $coiltempY, null, false);

		Move("coilphone_窓/coilphone_call_幅/演出色１", 0, $coilphoneX, $coilphoneY, null, false);
		Move("coilphone_窓/coilphone_call_幅/演出色２", 0, $coilphoneX, $coilphoneY, null, false);

		//ここは必ず発信になる
		MusicStart("coilsound_phone3",0,700,0,1000,null,false);

		Fade("coilphone_窓/coilphone_call_種類*", 0, 0, null, false);
		Fade("coilphone_窓/発信*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/*/*", 0, 0, null, false);

		//Fade($coilphone_callnut1, 0, 1000, null, false);
		Fade($coilphone_callnut2, 0, 1000, null, false);
		//Fade($coilphone_callnut3, 0, 1000, null, false);
		Fade($coilphone_callnut5, 0, 600, null, true);
		Fade("@coilphone_発信開始", 0, 1000, null, true);

		if(!$coilphoneError){
			//メール演出===============================
			MusicStart("coilsound_phone9",0,700,0,1000,null,false);
			Wait(500);
			MusicStart("coilsound_phone4",0,700,0,1000,null,false);
			Wait(1000);
			//=========================================
		}

		MusicStart("coilsound_phone5",0,700,0,1000,null,false);

		Fade($coilphone_callnut1, 0, 1000, null, false);
		Fade("coilphone_窓/発信演出", 0, 1000, null, true);
		Fade("coilphone_窓/発信演出", 200, 0, null, false);
		Fade("@coilphone_発信終了", 0, 1000, null, false);
		Fade("@coilphone_発信開始", 0, 0, null, false);

		Fade("coilphone_窓/coilphone_欄/通話*", 0, 500, null, false);
		//coilphone_窓/coilphone_欄/通話エラー

		WaitPlay("coilsound_phone5", null);
		MusicStart("coilsound_phone6",0,700,0,1000,null,false);
		WaitPlay("coilsound_phone6", null);
		//=========================================

		if($coilphoneError){
			WaitPlay("coilsound_phone6", null);
			Wait(500);
			CoilPhone_Error();
			$coilphoneError=false;
		}else{
			WaitPlay("coilsound_phone6", null);
			Wait(500);
			Request("coilphone_call_ダウンロードプロセス", Start);
			Request("coilphone_call_ダウンロードプロセス２", Start);
			MusicStart("coilsound_phone_call",0,700,0,1000,null,true);
		}
	}

}



function CoilCallProTalk(){

	if($CoilRece管理人物=="デリバリーワークス"){
		$PhoneLipName1="ヨシエ";
	}else if($CoilRece管理人物=="羽賀さん"){
		$PhoneLipName1="羽賀";
	}else if($CoilRece管理人物=="　　"){
		$PhoneLipName1="東江";
	}else{
		$PhoneLipName1=$CoilRece管理人物;
	}



	$PhoneLipNut1_0="@"+$coilphone_callnut3_a;
	$PhoneLipNut1_1="@"+$coilphone_callnut3_a;
//	$PhoneLipNut1_2="@"+$alies_lip2;
//	$PhoneLipNut1_n="@"+$ナット基;

begin:
//	WaitFade($LipNut1_n, null);

	while(1){
		$koe1 = SoundAmplitude("@text*",$PhoneLipName1);
		if($koe1>=550){
			Zoom($PhoneLipNut1_1, 16, 1200, 1200, Dxl1, false);
			Fade($PhoneLipNut1_1, 16, 300, null, false);Wait(16);
			Zoom($PhoneLipNut1_1, 200, 1000, 1000, Dxl1, false);
			Fade($PhoneLipNut1_1, 200, 0, null, false);Wait(100);
		}else if($koe1>=100){
			Zoom($PhoneLipNut1_1, 16, 1050, 1050, Dxl1, false);
			Fade($PhoneLipNut1_1, 16, 100, null, false);Wait(16);
			Zoom($PhoneLipNut1_1, 200, 1000, 1000, Dxl1, false);
			Fade($PhoneLipNut1_1, 200, 0, null, false);Wait(100);
		}else{
			Wait(32);
		}
	}
	Fade($LipNut1_0,0,0,null,false);
}


function CoilCallProMoni(){
	Position("@coilphone_窓",$CoilCallPro2X,$CoilCallPro2Y);
	$CoilCallPro2Y_base=$CoilCallPro2Y-300;
	$CoilCallPro2Y+=360;

	Move("@coilphone_call_演出色１", 0, $CoilCallPro2X, $CoilCallPro2Y_base, null, true);
	Fade("@coilphone_call_演出色１", 0, 200, null, true);
	Move("@coilphone_call_演出色２", 0, $CoilCallPro2X, $CoilCallPro2Y_base, null, true);
	Fade("@coilphone_call_演出色２", 0, 100, null, true);

	Move("@coilphone_call_演出色１", 3000, @0, $CoilCallPro2Y, null, false);
	Move("@coilphone_call_演出色２", 15000, @0, $CoilCallPro2Y, null, false);

	while(1){
		Position("@coilphone_call_演出色１",$CoilCallPro2Xa,$CoilCallPro2Ya);
		if($CoilCallPro2Ya>=$CoilCallPro2Y){
			$CoilCallPro2R=Random(5);
			if($CoilCallPro2R<=3){
				Move("@coilphone_call_演出色１", 0, $CoilCallPro2X, $CoilCallPro2Y_base, null, true);
				Move("@coilphone_call_演出色１", 3000, @0, $CoilCallPro2Y, null, false);
			}
		}
		Position("@coilphone_call_演出色２",$CoilCallPro2Xa,$CoilCallPro2Ya);
		if($CoilCallPro2Ya>=$CoilCallPro2Y){
			Move("@coilphone_call_演出色２", 0, $CoilCallPro2X, $CoilCallPro2Y_base, null, true);
			Move("@coilphone_call_演出色２", 15000, @0, $CoilCallPro2Y, null, false);
		}
	}

}


function CoilCallPro1(){

//	Fade("@coilphone_窓/coilphone_欄/通話*", 0, 500, null, false);
	Fade("@coilphone_窓/coilphone_欄/表示着信３", 0, 700, null, true);

	while(1){
		Fade("@coilphone_窓/coilphone_欄/表示着信１", 300, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/表示着信３", 300, 700, null, true);

		Fade("@coilphone_窓/coilphone_欄/表示着信３", 300, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/表示着信２", 300, 700, null, true);

		Fade("@coilphone_窓/coilphone_欄/表示着信２", 300, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/表示着信１", 300, 700, null, true);
	}
}


function CoilCallPro2(){

//	Fade("@coilphone_窓/coilphone_欄/通話*", 0, 500, null, false);
	Fade("@coilphone_窓/coilphone_欄/表示発信１", 0, 700, null, true);

	while(1){
		Fade("@coilphone_窓/coilphone_欄/表示発信３", 300, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/表示発信１", 300, 700, null, true);

		Fade("@coilphone_窓/coilphone_欄/表示発信１", 300, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/表示発信２", 300, 700, null, true);

		Fade("@coilphone_窓/coilphone_欄/表示発信２", 300, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/表示発信３", 300, 700, null, true);
	}
}


..▽通話開始
function CoilPhone_CallOn($coilphone顔X,$coilphone顔Y,$coilphone対象){
	CreateSE("coilsound_phone8","se物体_コイル_システムメール新着");
	SetVolumeEX("coilsound_phone_call", 0, 0, null);
	MusicStart("coilsound_phone8",0,700,0,1000,null,false);

	Request("coilphone_call_ダウンロードプロセス", Stop);
	Request("@coilphone_窓/coilphone_欄/表示*", Erase);

	Request("coilphone_call_ダウンロードプロセス３", Start);

	Fade("@coilphone_窓/coilphone_欄/通話*", 0, 1000, null, true);
	Fade("@coilphone_窓/coilphone_欄/枠*", 0, 1000, null, false);

	$coilphonecount=0;

	if($coilphone対象=="デフォルト"){
		Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 0, null, false);
	}else if($coilphone対象=="不明"){
		Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 1000, null, false);
	}else{
		$coilphoneimg="cg/st/"+$coilphone対象+".png";
		$coilphonenut="coilphone_窓/coilphone_欄/窓/顔0";

		Position("coilphone_窓",$X座標値,$Y座標値);

		CreateTexture($coilphonenut, 10051, $X座標値, $Y座標値, $coilphoneimg);
		SetAlias($coilphonenut, $coilphonenut);
		Fade($coilphonenut, 0, 0, null, true);

		$coilphonetempH=ImageHorizon($coilphonenut);
		$X座標値=(287-$coilphonetempH)/2;

		Move($coilphonenut, 0, @$X座標値, @20, null, true);
		Move($coilphonenut, 0, $coilphone顔X, $coilphone顔Y, null, true);

		Fade($coilphonenut, 0, 700, null, true);
		Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 0, null, false);
	}
}


..▽通話継続顔変化
function CoilPhone_Face($coilphone顔X,$coilphone顔Y,$coilphone対象){

	if($coilphone対象=="デフォルト"){
		Fade("coilphone_窓/coilphone_欄/窓/*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 0, null, false);
	}else if($coilphone対象=="不明"){
		Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 1000, null, false);
		Fade("coilphone_窓/coilphone_欄/窓/*", 0, 0, null, false);
	}else{
		$precoilphonecount=$coilphonecount;
		$coilphonecount++;

		$coilphoneimg="cg/st/"+$coilphone対象+".png";
		$coilphonenut="coilphone_窓/coilphone_欄/窓/顔"+$coilphonecount;

		Position("coilphone_窓",$X座標値,$Y座標値);

		CreateTexture($coilphonenut, 10051, $X座標値, $Y座標値, $coilphoneimg);
		SetAlias($coilphonenut, $coilphonenut);
		Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 0, null, false);
		Fade($coilphonenut, 0, 0, null, true);

		$coilphonetempH=ImageHorizon($coilphonenut);
		$X座標値=(287-$coilphonetempH)/2;

		Move($coilphonenut, 0, @$X座標値, @20, null, true);
		Move($coilphonenut, 0, $coilphone顔X, $coilphone顔Y, null, true);

		//★ロック設置
		LockVideo(true);
		Fade("coilphone_窓/coilphone_欄/窓/*", 0, 0, null, false);
		Fade($coilphonenut, 0, 700, null, true);
		//★ロック設置
		LockVideo(false);

		$precoilphonenut="coilphone_窓/coilphone_欄/窓/顔"+$precoilphonecount;
		Delete($precoilphonenut);
	}
}

..▽通話終了
function CoilPhone_End(){
	Request("coilphone_call_ダウンロードプロセス", Stop);
	Request("coilphone_call_ダウンロードプロセス２", Stop);
	Request("coilphone_call_ダウンロードプロセス３", Stop);
	Request("@coilphone_窓/coilphone_欄/表示*", Erase);

	CreateSE("coilsound_phone8","se物体_コイル_操作音01");
	SetVolumeEX("coilsound_phone_call", 0, 0, null);
	MusicStart("coilsound_phone8",0,700,0,1000,null,false);

	Position("coilphone_窓",$X座標値,$Y座標値);

//	$X座標値=$X座標値+78;
//	$Y座標値=$Y座標値+102;
//	CreateTexture("coilphone_窓/coilphone_欄/通話終了", 10051, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話着信有り2.png");
//	SetAlias("coilphone_窓/coilphone_欄/通話終了", "coilphone_窓/coilphone_欄/通話終了");
//	Fade("coilphone_窓/coilphone_欄/通話終了", 0, 0, null, true);

	$X座標値=$X座標値+115;
	$Y座標値=$Y座標値+218;
	CreateTexture("coilphone_窓/coilphone_欄/通話終了", 10051, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話着信有り3.png");
	SetAlias("coilphone_窓/coilphone_欄/通話終了", "coilphone_窓/coilphone_欄/通話終了");
	Fade("coilphone_窓/coilphone_欄/通話終了", 0, 0, null, true);

//	Fade("coilphone_窓/coilphone_call_種類*", 0, 0, null, false);

	Fade("coilphone_窓/coilphone_欄/演出枠", 0, 0, null, false);

	Fade("coilphone_窓/coilphone_call_幅/演出色１", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_call_幅/演出色２", 0, 0, null, false);

	Fade("coilphone_窓/発信終了", 0, 0, null, false);
	Fade("coilphone_窓/発信開始", 0, 1000, null, false);

	Fade("coilphone_窓/coilphone_欄/枠*", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 600, null, false);
	Fade("coilphone_窓/coilphone_欄/通話*", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_欄/窓/*", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_欄/通話終了", 0, 1000, null, true);
}

..▽通信エラー
function CoilPhone_Error(){
	Request("coilphone_call_ダウンロードプロセス", Stop);
	Request("coilphone_call_ダウンロードプロセス２", Stop);
	Request("coilphone_call_ダウンロードプロセス３", Stop);
	Request("@coilphone_窓/coilphone_欄/表示*", Erase);

	CreateSE("coilsound_phone0","se物体_コイル_通信遮断01");
	SetVolumeEX("coilsound_phone_call", 0, 0, null);
	MusicStart("coilsound_phone0",0,700,0,1000,null,false);


	Position("coilphone_窓",$X座標値,$Y座標値);

//	$X座標値=$X座標値+78;
//	$Y座標値=$Y座標値+102;
//	CreateTexture("coilphone_窓/coilphone_欄/通話終了", 10051, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話着信有り2.png");
//	SetAlias("coilphone_窓/coilphone_欄/通話終了", "coilphone_窓/coilphone_欄/通話終了");
//	Fade("coilphone_窓/coilphone_欄/通話終了", 0, 0, null, true);

	CreateProcess("coilphone_error_ダウンロードプロセス", 150, 0, 0, "CoilErrorPro1");
	SetAlias("coilphone_error_ダウンロードプロセス", "coilphone_error_ダウンロードプロセス");

	$X座標値=$X座標値+67;
	$Y座標値=$Y座標値+102;
	CreateTexture("coilphone_窓/coilphone_欄/エラー", 10051, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話エラー.png");
	SetAlias("coilphone_窓/coilphone_欄/エラー", "coilphone_窓/coilphone_欄/エラー");
	Fade("coilphone_窓/coilphone_欄/エラー", 0, 0, null, true);

	CreateTexture("coilphone_窓/coilphone_欄/エラー２", 10051, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話エラー2.png");
	SetAlias("coilphone_窓/coilphone_欄/エラー２", "coilphone_窓/coilphone_欄/エラー２");
	Request("coilphone_窓/coilphone_欄/エラー２", SubRender);
	Fade("coilphone_窓/coilphone_欄/エラー２", 0, 0, null, true);


	Fade("coilphone_窓/coilphone_call_種類*", 0, 0, null, false);

	Fade("coilphone_窓/coilphone_欄/演出枠", 0, 0, null, false);

	Fade("coilphone_窓/coilphone_call_幅/演出色１", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_call_幅/演出色２", 0, 0, null, false);

	Fade("coilphone_窓/発信終了", 0, 0, null, false);
	Fade("coilphone_窓/発信開始", 0, 1000, null, false);/////////

	Fade("coilphone_窓/coilphone_欄/人物*", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_欄/枠*", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_欄/通話*", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_欄/窓/*", 0, 0, null, false);
	Fade("coilphone_窓/coilphone_欄/エラー", 0, 1000, null, true);

	Request("coilphone_error_ダウンロードプロセス", Start);
}











.■電話『着信セット』
..▽電話着信有りセット（10050）
function CoilPhone_MissSet($coilphoneX,$coilphoneY){

	if(!$CoilPhone){
		CoilPhoneBase();
	}else{
		Position("coilphone_窓",$coilphoneX,$coilphoneY);
	}

//――――――――――――――――――――――――――――――――――
	$coilphone_missnut1="coilphone_窓/coilphone_欄/coilphone_miss_着信有り";
	$coilphone_missnut1a="coilphone_miss_着信有り";
	$coilphone_missnut2="coilphone_窓/coilphone_欄/coilphone_miss_着信有り２";
	$coilphone_missnut2a="coilphone_miss_着信有り２";

	$coilphone_misspro="CoilMissPro1";

	CreateProcess("coilphone_miss_ダウンロードプロセス", 150, 0, 0, $coilphone_misspro);
	SetAlias("coilphone_miss_ダウンロードプロセス", "coilphone_miss_ダウンロードプロセス");

	//▽着信あり
	$coilphone_missX1=$coilphoneX+78;
	$coilphone_missY1=$coilphoneY+102;
	CreateTexture($coilphone_missnut1, 10051, $coilphone_missX1, $coilphone_missY1, "cg/sys/coil/phone/コイル電話着信有り.png");
	SetAlias($coilphone_missnut1, $coilphone_missnut1a);

	CreateTexture($coilphone_missnut2, 10051, $coilphone_missX1, $coilphone_missY1, "cg/sys/coil/phone/コイル電話着信有り2.png");
	SetAlias($coilphone_missnut2, $coilphone_missnut2a);
	Fade($coilphone_missnut2, 0, 0, null, true);
	Request($coilphone_missnut2, AddRender);

	//―――――――――――――――――――――――――――
	//調整
	if(!$CoilPhone){
		Move("coilphone_窓/*", 0, @0, @-375, null, false);
		Move("coilphone_窓/*/*", 0, @0, @-375, null, false);
		Move("coilphone_窓/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone_発信終了", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone_発信開始", 0, 0, 0, Dxl1, false);

		Fade("@coilphone_発信開始", 0, 0, null, true);
		Fade("@coilphone_発信終了", 0, 0, null, true);
		Fade("@coilphone_発信プロ*", 0, 0, null, true);
	
		Fade("@coilphone_ベース３", 0, 0, null, false);
		Fade("coilphone_窓/ベース", 0, 750, null, true);
	
		SetVertex("@coilphone_ベース", 143, 0);
		Zoom("@coilphone_ベース", 0, 1200, 1000, null, true);//ここだけちがう
		Fade("@coilphone_ベース", 0, 0, null, true);
	}else{
		Fade("coilphone_窓/coilphone_欄/coilphone_miss_着信有り", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/coilphone_miss_着信有り２", 0, 0, null, true);
	}

	//se物体_コイル_システムメール新着
	CreateSE("coilsound_phone24","se物体_コイル_システムメール展開");

	$CoilPhone=true;
}



..▽着信有り表示
function CoilPhone_MissFade(){

	if(!$coilphoneON){
	//■ベースがなかった場合（通常演出）
		MusicStart("coilsound_phone1",0,700,0,1000,null,false);

		Fade("@coilphone_miss_演出色１", 0, 0, Axl1, false);
	
		Zoom("@coilphone_ベース", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone_演出", 0, 350, null, false);
	//	Zoom("coilphone_演出", 200, 1500, 200, null, false);
	
	//	Fade("coilphone_窓/ベース２", 300, 500, null, false);
	//	Fade("coilphone_窓/ベース", 300, 1000, null, false);
	//	Move("coilphone_窓/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone_窓/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone_演出", 0, 350, null, false);
		Zoom("coilphone_演出", 150, 1500, 200, null, false);
	
		Fade("coilphone_窓/ベース２", 200, 500, null, false);
	//	Fade("coilphone_窓/ベース", 200, 1000, null, false);
		Move("coilphone_窓/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_窓/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_窓/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphoneON=true;
		CoilBlack();
	
		Fade("@coilphone_発信プロ開始", 0, 1000, null, false);
		Fade("coilphone_演出", 0, 1000, null, true);
	
		Fade("coilphone_窓/ベース", 200, 1000, null, false);
		Fade("coilphone_窓/ベース２", 200, 0, null, false);
		Fade("@coilphone_ベース３", 200, 1000, null, false);
	
		Fade("coilphone_演出", 500, 0, Axl2, false);
		Zoom("coilphone_演出", 200, 1000, 1000, null, false);
	
		Move("coilphone_窓/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_窓/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_窓/*", 500, @0, @339, Dxl1, false);
	
		Fade("@coilphone_発信プロ開始", 300, 0, null, false);
		Fade("@coilphone_発信開始", 400, 1000, null, false);
		Zoom("@coilphone_発信終了", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone_発信開始", 400, 1000, 1000, Dxl1, false);

	
		Move("coilphone_窓/マスク２", 500, @0, @-373, null, false);
		Zoom("@coilphone_ベース３", 500, 1000, 1200, Axl1, false);
	
		Request("coilphone_miss_ダウンロードプロセス", Start);
	//	Request("coilphone_ダウンロードプロセス", Start);

	}else{
	//■ベースが合った場合（置換演出）
		Request("coilphone_*", Stop);
		//Request("@coilphone_窓/coilphone_欄/表示*", Erase);

		MusicStart("coilsound_phone24",0,700,0,1000,null,false);

		Position("coilphone_窓",$X座標値,$Y座標値);
	
		$X座標値=$X座標値+78;
		$Y座標値=$Y座標値+102;

		Move("coilphone_窓/coilphone_欄/coilphone_miss_着信有り", 0, $X座標値, $Y座標値, null, false);
		Move("coilphone_窓/coilphone_欄/coilphone_miss_着信有り２", 0, $X座標値, $Y座標値, null, false);

		Fade("coilphone_窓/coilphone_call_幅/演出色１", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_call_幅/演出色２", 0, 0, null, false);

		Fade("coilphone_窓/coilphone_call_種類*", 0, 0, null, false);
		Fade("coilphone_窓/発信*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/*/*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/coilphone_miss_着信有り", 0, 1000, null, false);
		Request("coilphone_miss_ダウンロードプロセス", Start);
	}


}


function CoilMissPro1(){
	while(1){
		Fade("@coilphone_miss_着信有り２", 1000, 700, null, true);
		Fade("@coilphone_miss_着信有り２", 1000, 0, null, true);
	}
}





















.■電話『エラーセット』
..▽電話エラーセット（10050）
function CoilPhone_ErrorSet($coilphoneX,$coilphoneY){

	if(!$CoilPhone){
		CoilPhoneBase();
	}else{
		Position("coilphone_窓",$coilphoneX,$coilphoneY);
	}

//――――――――――――――――――――――――――――――――――
	CreateProcess("coilphone_error_ダウンロードプロセス", 150, 0, 0, "CoilErrorPro1");
	SetAlias("coilphone_error_ダウンロードプロセス", "coilphone_error_ダウンロードプロセス");

	//▽着信あり
	$coilphoneX=$coilphoneX+67;
	$coilphoneY=$coilphoneY+102;
	CreateTexture("coilphone_窓/coilphone_欄/エラー", 10051, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/コイル電話エラー.png");
	SetAlias("coilphone_窓/coilphone_欄/エラー", "coilphone_窓/coilphone_欄/エラー");
	CreateTexture("coilphone_窓/coilphone_欄/エラー２", 10051, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/コイル電話エラー2.png");
	SetAlias("coilphone_窓/coilphone_欄/エラー２", "coilphone_窓/coilphone_欄/エラー２");
	Request("coilphone_窓/coilphone_欄/エラー２", SubRender);
	Fade("coilphone_窓/coilphone_欄/エラー２", 0, 0, null, true);

	//―――――――――――――――――――――――――――
	//調整
	if(!$CoilPhone){
		Move("coilphone_窓/*", 0, @0, @-375, null, false);
		Move("coilphone_窓/*/*", 0, @0, @-375, null, false);
		Move("coilphone_窓/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone_発信終了", 0, 1000, 0, Dxl1, false);
		Zoom("@coilphone_発信開始", 0, 1000, 0, Dxl1, false);

		Fade("@coilphone_発信開始", 0, 0, null, true);
		Fade("@coilphone_発信終了", 0, 0, null, true);
		Fade("@coilphone_発信プロ*", 0, 0, null, true);
	
		Fade("@coilphone_ベース３", 0, 0, null, false);
		Fade("coilphone_窓/ベース", 0, 750, null, true);
	
		SetVertex("@coilphone_ベース", 143, 0);
		Zoom("@coilphone_ベース", 0, 1200, 1000, null, true);//ここだけちがう
		Fade("@coilphone_ベース", 0, 0, null, true);
	}else{
		Fade("coilphone_窓/coilphone_欄/エラー", 0, 0, null, true);
	}

	//se物体_コイル_システムメール新着
	CreateSE("coilsound_phone0","se物体_コイル_通信遮断01");

	$CoilPhone=true;
}


..▽着信有り表示
function CoilPhone_ErrorFade(){

	if(!$coilphoneON){
	//■ベースがなかった場合（通常演出）
		MusicStart("coilsound_phone1",0,700,0,1000,null,false);

		Fade("@coilphone_error_演出色１", 0, 0, Axl1, false);
	
		Zoom("@coilphone_ベース", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone_演出", 0, 350, null, false);
	//	Zoom("coilphone_演出", 200, 1500, 200, null, false);
	
	//	Fade("coilphone_窓/ベース２", 300, 500, null, false);
	//	Fade("coilphone_窓/ベース", 300, 1000, null, false);
	//	Move("coilphone_窓/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone_窓/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone_演出", 0, 350, null, false);
		Zoom("coilphone_演出", 150, 1500, 200, null, false);
	
		Fade("coilphone_窓/ベース２", 200, 500, null, false);
	//	Fade("coilphone_窓/ベース", 200, 1000, null, false);
		Move("coilphone_窓/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_窓/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_窓/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphoneON=true;
		CoilBlack();
	
//		Fade("@coilphone_発信プロ開始", 0, 1000, null, false);//エラーだからね
		Fade("coilphone_演出", 0, 1000, null, true);
	
		Fade("coilphone_窓/ベース", 200, 1000, null, false);
		Fade("coilphone_窓/ベース２", 200, 0, null, false);
		Fade("@coilphone_ベース３", 200, 1000, null, false);
	
		Fade("coilphone_演出", 500, 0, Axl2, false);
		Zoom("coilphone_演出", 200, 1000, 1000, null, false);
	
		Move("coilphone_窓/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_窓/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_窓/*", 500, @0, @339, Dxl1, false);
	
//		Fade("@coilphone_発信プロ開始", 300, 0, null, false);//エラーだからね
//		Fade("@coilphone_発信開始", 400, 1000, null, false);//エラーだからね
		Zoom("@coilphone_発信終了", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone_発信開始", 400, 1000, 1000, Dxl1, false);


		Move("coilphone_窓/マスク２", 500, @0, @-373, null, false);
		Zoom("@coilphone_ベース３", 500, 1000, 1200, Axl1, false);
	
		Request("coilphone_error_ダウンロードプロセス", Start);

	}else{
	//■ベースが合った場合（置換演出）
		Request("coilphone_*", Stop);
		Request("@coilphone_窓/coilphone_欄/表示*", Erase);
	
		Position("coilphone_窓",$X座標値,$Y座標値);
	
		$X座標値=$X座標値+67;
		$Y座標値=$Y座標値+102;
		Move("coilphone_窓/coilphone_欄/エラー", 0, $X座標値, $Y座標値, null, false);

		SetVolumeEX("coilsound_phone_call", 0, 0, null);
		MusicStart("coilsound_phone0",0,700,0,1000,null,false);
	
		Fade("coilphone_窓/coilphone_欄/演出枠", 0, 0, null, false);
	
		Fade("coilphone_窓/coilphone_call_幅/演出色１", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_call_幅/演出色２", 0, 0, null, false);

	
//		Fade("coilphone_窓/発信終了", 0, 0, null, false);
//		Fade("coilphone_窓/発信開始", 0, 1000, null, false);
	
//		Fade("coilphone_窓/coilphone_欄/人物*", 0, 0, null, false);
//		Fade("coilphone_窓/coilphone_欄/枠*", 0, 0, null, false);
//		Fade("coilphone_窓/coilphone_欄/デフォ*", 0, 0, null, false);
//		Fade("coilphone_窓/coilphone_欄/通話*", 0, 0, null, false);
//		Fade("coilphone_窓/coilphone_欄/窓/*", 0, 0, null, false);
//		Fade("coilphone_窓/coilphone_欄/エラー", 0, 1000, null, true);

		Fade("coilphone_窓/coilphone_call_種類*", 0, 0, null, false);
		Fade("coilphone_窓/発信*", 0, 0, null, false);
		if($coilphoneError){
			Fade("coilphone_窓/発信開始", 0, 1000, null, false);//エラーだからね
			$coilphoneError=false;
		}
		Fade("coilphone_窓/coilphone_欄/*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/*/*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/エラー", 0, 1000, null, false);

		Request("coilphone_error_ダウンロードプロセス", Start);
	}

}


function CoilErrorPro1(){
	while(1){
		Fade("@coilphone_窓/coilphone_欄/エラー２", 1000, 400, null, true);
		Fade("@coilphone_窓/coilphone_欄/エラー２", 1000, 0, null, true);
	}
}



..▽ノイズ
function CoilBugSet(){

	CreateTexture("coilphone_窓/coilphone_欄/ノイズ１", 11000, 0, 0, "cg/data/noize_01_00_0.png");
	SetAlias("coilphone_窓/coilphone_欄/ノイズ１", "coilphone_窓/coilphone_欄/ノイズ１");
	Request("coilphone_窓/coilphone_欄/ノイズ１", OverlayRender);
	SetTone("coilphone_窓/coilphone_欄/ノイズ１", Monochrome);

	CreateTexture("coilphone_窓/coilphone_欄/ノイズ２", 11000, 0, 0, "cg/data/noize_01_00_0.png");
	SetAlias("coilphone_窓/coilphone_欄/ノイズ２", "coilphone_窓/coilphone_欄/ノイズ２");
	Request("coilphone_窓/coilphone_欄/ノイズ２", OverlayRender);
	SetTone("coilphone_窓/coilphone_欄/ノイズ２", Monochrome);


	Zoom("@coilphone_窓/coilphone_欄/ノイズ１", 0, 1500, 1500, null, false);
	Zoom("@coilphone_窓/coilphone_欄/ノイズ２", 0, 1500, 1500, null, false);

	Rotate("coilphone_窓/coilphone_欄/ノイズ２", 0, @180, @0, @0, null, true);
	Fade("coilphone_窓/coilphone_欄/ノイズ*", 0, 0, null, true);

	CreateProcess("coilphone_bug_ダウンロードプロセス", 150, 0, 0, "CoilBugPro");
	SetAlias("coilphone_bug_ダウンロードプロセス", "coilphone_bug_ダウンロードプロセス");

	$CoilBugFade=300;
}

function CoilBugFade(){
	Move("@coilphone_窓/coilphone_欄/ノイズ*", 0, 0, 0, null, true);
	Request("coilphone_bug_ダウンロードプロセス", Start);
}

function CoilBugPro(){

	$CoilBugTime=100;
	$CoilBugWait=50;

	while(1){

		Move("@coilphone_窓/coilphone_欄/ノイズ１", 0, 50, 0, null, false);
		Move("@coilphone_窓/coilphone_欄/ノイズ２", 0, -50, 0, null, false);

		Fade("@coilphone_窓/coilphone_欄/ノイズ２", $CoilBugTime, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/ノイズ１", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);
		Fade("@coilphone_窓/coilphone_欄/ノイズ１", $CoilBugTime, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/ノイズ２", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);

		Fade("@coilphone_窓/coilphone_欄/ノイズ２", $CoilBugTime, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/ノイズ１", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);
		Fade("@coilphone_窓/coilphone_欄/ノイズ１", $CoilBugTime, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/ノイズ２", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);

//		$CoilBugTemp=Random(3);
//		Wait($CoilBugTemp);

		Move("@coilphone_窓/coilphone_欄/ノイズ１", 0, -50, 0, null, false);
		Move("@coilphone_窓/coilphone_欄/ノイズ２", 0, 50, 0, null, false);

		Fade("@coilphone_窓/coilphone_欄/ノイズ２", $CoilBugTime, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/ノイズ１", $CoilBugTime, $CoilBugFade, null, true);
		Fade("@coilphone_窓/coilphone_欄/ノイズ１", $CoilBugTime, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/ノイズ２", $CoilBugTime, $CoilBugFade, null, true);

		Fade("@coilphone_窓/coilphone_欄/ノイズ２", $CoilBugTime, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/ノイズ１", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);
		Fade("@coilphone_窓/coilphone_欄/ノイズ１", $CoilBugTime, 0, null, false);
		Fade("@coilphone_窓/coilphone_欄/ノイズ２", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);

//		$CoilBugTemp=Random(3);
//		Wait($CoilBugTemp);
	}

}























.■電話『着信履歴セット』
..▽着歴一覧セット（10050）
function CoilPhone_RaceSet($coilphoneX, $coilphoneY){
//382
//103
	$CoilReceNow=$CoilReceCount;

	if(!$CoilPhone){
		CoilPhoneBase();
	}else{
		Position("coilphone_窓",$coilphoneX,$coilphoneY);
	}

//――――――――――――――――――――――――――――――――――
	CreateProcess("coilphone_rece_ダウンロードプロセス", 150, 0, 0, "CoilRacePro");
	SetAlias("coilphone_rece_ダウンロードプロセス", "coilphone_rece_ダウンロードプロセス");


	$coilphone_receX7=$coilphoneX+10;
	$coilphone_receY7=$coilphoneY+300;
	CreateTexture("coilphone_窓/coilphone_欄/coilphone_rece_選択", 10050, $coilphone_receX7, $coilphone_receY7, "cg/sys/coil/phone/コイル電話一覧_選択_セレクト.png");//10010
	SetAlias("coilphone_窓/coilphone_欄/coilphone_rece_選択", "coilphone_rece_選択");
	Request("coilphone_窓/coilphone_欄/coilphone_rece_選択", AddRender);
	Fade("coilphone_窓/coilphone_欄/coilphone_rece_選択", 0, 0, null, true);


	$CoilPreX=$coilphoneX;
	$CoilPreY=$coilphoneY;

	$CoilTemp=$CoilReceCount;
	while(0<$CoilTemp){

		//▽超えちゃいけないライン
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+57;
		$coiltempnut="coilphone_窓/coilphone_欄/チェック"+$CoilTemp;
		if(VariableValue($,"CoilRece通話"+$CoilTemp)){
			CreateTexture($coiltempnut, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_通話有り.png");//10090
		}else{
			CreateTexture($coiltempnut, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_通話無し.png");//10090
		}
		SetAlias($coiltempnut, $coiltempnut);

		//▽矢印
		$coiltempX=$CoilPreX+228;
		$coiltempY=$CoilPreY+64;
		$coiltempnut="coilphone_窓/coilphone_欄/矢印"+$CoilTemp;
		CreateTexture($coiltempnut, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_アイコン.png");//10090
		SetAlias($coiltempnut, $coiltempnut);
		Request($coiltempnut, AddRender);

		//▽人物
		SetFont("ＭＳ ゴシック", 20, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut2="coilphone_窓/coilphone_欄/テキスト窓"+$CoilTemp;
		CreateWindow($coiltempnut2, 10051, $coiltempX, $coiltempY, 156, 45, false);//10090//163,45
		SetAlias($coiltempnut2, $coiltempnut2);

		$coiltempnut=$coiltempnut2+"/人物"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece人物"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilRece人物"+$CoilTemp));
		CreateText($coiltempnut, 10051, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut, $coiltempnut);
		Request($coiltempnut, NoLog);

/*
		SetFont("ＭＳ ゴシック", 20, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut="coilphone_窓/coilphone_欄/人物"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece人物"+$CoilTemp);
		CreateText($coiltempnut, 10051, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut, $coiltempnut);
*/

		$CoilPreY+=43;
		$CoilTemp--;
	}
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilphone_窓/coilphone_欄/*", PushText);
	Request("coilphone_窓/coilphone_欄/*/*", PushText);


	$coilphoneX5=$coilphoneX+25;
	$coilphoneX6=$coilphoneX+12;
	$coilphoneY6=$coilphoneY+56;
	CreateWindow("coilphone_窓/coilphone_rece_幅", 20000, $coilphoneX6, $coilphoneY6, 263, 233, false);
	SetAlias("coilphone_窓/coilphone_rece_幅", "coilphone_rece_幅");

	CreateColor("coilphone_窓/coilphone_rece_幅/演出色１", 10052, $coilphoneX5, $coilphoneY6, 72, 300, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone_窓/coilphone_rece_幅/演出色１", "coilphone_rece_演出色１");
	Request("coilphone_窓/coilphone_rece_幅/演出色１", AddRender);
	Fade("@coilphone_rece_演出色１", 0, 150, null, false);


	//―――――――――――――――――――――――――――
	//調整
	if(!$CoilPhone){
		Move("coilphone_窓/*", 0, @0, @-375, null, false);
		Move("coilphone_窓/*/*", 0, @0, @-375, null, false);
		Move("coilphone_窓/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("coilphone_窓/coilphone_欄", 0, 0, 1000, null, false);
		Move("coilphone_窓/coilphone_欄", 0, @0, @-100, null, false);
		Move("coilphone_窓/coilphone_欄/*", 0, @0, @-100, null, false);
		Move("coilphone_窓/coilphone_欄/*/*", 0, @-300, @-100, null, true);
	
		Zoom("@coilphone_発信終了", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone_発信開始", 0, 0, 0, Dxl1, false);

		Fade("@coilphone_発信開始", 0, 0, null, true);
		Fade("@coilphone_発信終了", 0, 0, null, true);
		Fade("@coilphone_発信プロ*", 0, 0, null, true);
	
		Fade("@coilphone_ベース３", 0, 0, null, false);
		Fade("coilphone_窓/ベース", 0, 750, null, true);
	
		SetVertex("@coilphone_ベース", 143, 0);
		Zoom("@coilphone_ベース", 0, 1200, 1000, null, true);//ここだけちがう
		Fade("@coilphone_ベース", 0, 0, null, true);

	}else{
		Fade("coilphone_窓/coilphone_欄/coilphone_rece_選択", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_rece_幅/演出色１", 0, 0, null, false);

		Fade("coilphone_窓/coilphone_欄/チェック*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/矢印*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/テキスト窓*/人物*", 0, 0, null, false);


//		Move("coilphone_窓", 0, @0, @0, null, false);
//		Move("coilphone_窓/ベース", 0, @0, @0, null, false);
//		Move("coilphone_窓/ベース２", 0, @0, @0, null, false);
//		Move("coilphone_窓/黒", 0, @0, @0, null, false);
//		Move("coilphone_窓/マスク２", 0, @0, @0, null, false);
//		Move("coilphone_窓/マスク２/ベース３", 0, @0, @0, null, false);
	
//		Move("coilphone_演出", 0, @0, @0, null, false);
//		Move("coilphone_消去", 0, @0, @0, null, false);
//		Move("coilphone_窓/発信開始", 0, @0, @0, null, false);
//		Move("coilphone_窓/発信プロ開始", 0, @0, @0, null, false);
//		Move("coilphone_窓/発信終了", 0, @0, @0, null, false);
//		Move("coilphone_窓/発信プロ終了", 0, @0, @0, null, false);
	
//		Move("coilphone_窓/coilphone_欄", 0, @0, @0, null, false);

	}

	CreateSE("coilsound_phone14","se物体_コイル_システムリスト展開");

	$CoilPhone=true;
}


..▽着歴一覧表示
function CoilPhone_RaceFade(){

	if(!$coilphoneON){
	//■ベースがなかった場合（通常演出）
		MusicStart("coilsound_phone1",0,700,0,1000,null,false);

		Zoom("@coilphone_ベース", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone_演出", 0, 350, null, false);
	//	Zoom("coilphone_演出", 200, 1500, 200, null, false);
	
	//	Fade("coilphone_窓/ベース２", 300, 500, null, false);
	//	Fade("coilphone_窓/ベース", 300, 1000, null, false);
	//	Move("coilphone_窓/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone_窓/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone_演出", 0, 350, null, false);
		Zoom("coilphone_演出", 150, 1500, 200, null, false);
	
		Fade("coilphone_窓/ベース２", 200, 500, null, false);
	//	Fade("coilphone_窓/ベース", 200, 1000, null, false);
		Move("coilphone_窓/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_窓/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_窓/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphoneON=true;
		CoilBlack();
	
		Fade("@coilphone_発信プロ開始", 0, 1000, null, false);
		Fade("coilphone_演出", 0, 1000, null, true);
	
		Fade("coilphone_窓/ベース", 200, 1000, null, false);
		Fade("coilphone_窓/ベース２", 200, 0, null, false);
		Fade("@coilphone_ベース３", 200, 1000, null, false);
	
		Fade("coilphone_演出", 500, 0, Axl2, false);
		Zoom("coilphone_演出", 200, 1000, 1000, null, false);
	
		Move("coilphone_窓/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_窓/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_窓/*", 500, @0, @339, Dxl1, false);
	
		Fade("@coilphone_発信プロ開始", 300, 0, null, false);
		Fade("@coilphone_発信開始", 400, 1000, null, false);
		Zoom("@coilphone_発信終了", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone_発信開始", 400, 1000, 1000, Dxl1, false);


		Fade("@coilphone_rece_演出色１", 400, 0, Axl1, false);
		Zoom("@coilphone_rece_演出色１", 500, 4000, 1000, Dxl1, false);
	

		Move("coilphone_窓/マスク２", 500, @0, @-373, null, false);
		Zoom("@coilphone_ベース３", 500, 1000, 1200, Axl1, false);
	
		Zoom("coilphone_窓/coilphone_欄", 400, 1000, 1000, null, false);
	
		Move("coilphone_窓/coilphone_欄", 500, @0, @439, Dxl1, false);
		Move("coilphone_窓/coilphone_欄/*", 500, @0, @439, Dxl1, false);
		Move("coilphone_窓/coilphone_欄/*/*", 500, @300, @439, Dxl1, false);
	
		Request("coilphone_rece_ダウンロードプロセス", Start);
		Request("coilphone_ダウンロードプロセス", Start);

	}else{
	//■ベースが合った場合（置換演出）
		Request("coilphone_*", Stop);
		//Request("@coilphone_窓/coilphone_欄/表示*", Erase);

		Position("coilphone_窓",$X座標値元,$Y座標値元);
		$X座標値=$X座標値元+21;
		$Y座標値=$Y座標値元+57;

		$coiltempnut="coilphone_窓/coilphone_欄/チェック"+$CoilReceCount;
		Position($coiltempnut,$X座標値2,$Y座標値2);

		$X移動座標値=$X座標値-$X座標値2;
		$Y移動座標値=$Y座標値-$Y座標値2;
		Move("coilphone_窓/coilphone_欄/チェック*", 0, @$X移動座標値, @$Y移動座標値, null, false);
		Move("coilphone_窓/coilphone_欄/矢印*", 0, @$X移動座標値, @$Y移動座標値, null, false);
		Move("coilphone_窓/coilphone_欄/テキスト窓*", 0, @$X移動座標値, @$Y移動座標値, null, false);
		Move("coilphone_窓/coilphone_欄/テキスト窓*/人物*", 0, @$X移動座標値, @$Y移動座標値, null, false);

		$X座標値3=$X座標値元+25;
		$X座標値4=$X座標値元+12;
		$Y座標値4=$Y座標値元+56;
		Move("coilphone_窓/coilphone_rece_幅", 0, $X座標値4, $Y座標値4, null, false);
		Move("coilphone_窓/coilphone_rece_幅/演出色１", 0, $X座標値3, $Y座標値4, null, false);

		$X座標値5=$X座標値元+10;
		$Y座標値5=$Y座標値元+300;
		Move("coilphone_窓/coilphone_欄/coilphone_rece_選択", 0, $X座標値5, $Y座標値5, null, false);

		$X座標値6=$X座標値元+25;
		$Y座標値6=$Y座標値元+294;
		Move("coilphone_窓/発信*", 0, $X座標値6, $Y座標値6, null, false);


		MusicStart("coilsound_phone14",0,700,0,1000,null,false);


		Fade("coilphone_窓/coilphone_call_幅/演出色１", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_call_幅/演出色２", 0, 0, null, false);

		Fade("coilphone_窓/coilphone_call_種類*", 0, 0, null, false);
		Fade("coilphone_窓/発信*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/*", 0, 0, null, false);
		Fade("coilphone_窓/coilphone_欄/*/*", 0, 0, null, false);

		Fade("coilphone_窓/発信開始", 0, 1000, null, false);

		Fade("coilphone_窓/coilphone_欄/チェック*", 0, 1000, null, false);
		Fade("coilphone_窓/coilphone_欄/矢印*", 0, 1000, null, false);
		Fade("coilphone_窓/coilphone_欄/テキスト窓*/人物*", 0, 1000, null, false);

		Request("coilphone_rece_ダウンロードプロセス", Start);
		Request("coilphone_ダウンロードプロセス", Start);

	}

}


..▽着歴リアルタイム追加
function CoilReceAdd2($CoilRece番号,$CoilRece人物,$CoilRece通話){

	$TempCoilRece=1;
	while($CoilReceCount>=$TempCoilRece){
		if(VariableValue($,"CoilRece番号"+$TempCoilRece)==$CoilRece番号){
			return;
		}
		$TempCoilRece++;
	}

	WaitAction("@coilphone_ベース３", null);
//	WaitAction("@coilphone_ベース", null);

	$CoilReceCount++;

	VariableValue($,$CoilRece番号+"_num",$CoilReceCount);
//
	VariableValue($,$CoilRece番号+"_人物",$CoilRece人物);
	VariableValue($,$CoilRece番号+"_通話",$CoilRece通話);
//
	VariableValue($,"CoilRece人物"+$CoilReceCount,$CoilRece人物);
	VariableValue($,"CoilRece通話"+$CoilReceCount,$CoilRece通話);
	VariableValue($,"CoilRece番号"+$CoilReceCount,$CoilRece番号);


	$CoilTemp=$CoilReceCount;

	Position("@coilphone_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数-43;

		//▽超えちゃいけないライン
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+57;
		$coiltempnut1="coilphone_窓/coilphone_欄/チェック"+$CoilTemp;
		if(VariableValue($,"CoilRece通話"+$CoilTemp)){
			CreateTexture($coiltempnut1, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_通話有り.png");//10090
		}else{
			CreateTexture($coiltempnut1, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_通話無し.png");//10090
		}
		SetAlias($coiltempnut1, $coiltempnut1);

		//▽矢印
		$coiltempX=$CoilPreX+228;
		$coiltempY=$CoilPreY+64;
		$coiltempnut3="coilphone_窓/coilphone_欄/矢印"+$CoilTemp;
		CreateTexture($coiltempnut3, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_アイコン.png");//10090
		SetAlias($coiltempnut3, $coiltempnut3);
		Request($coiltempnut3, AddRender);
		Request($coiltempnut3, Erase);

		//▽人物
		SetFont("ＭＳ ゴシック", 20, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnutW="coilphone_窓/coilphone_欄/テキスト窓"+$CoilTemp;
		CreateWindow($coiltempnutW, 10051, $coiltempX, $coiltempY, 163, 45, false);//10090
		SetAlias($coiltempnutW, $coiltempnutW);

		$coiltempnut2=$coiltempnutW+"/人物"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece人物"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilRece人物"+$CoilTemp));
		CreateText($coiltempnut2, 10051, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut2, $coiltempnut2);
		Request($coiltempnut2, NoLog);

/*
		SetFont("ＭＳ ゴシック", 20, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut2="coilphone_窓/coilphone_欄/人物"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece人物"+$CoilTemp);
		CreateText($coiltempnut2, 10051, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut2, $coiltempnut2);
*/

	//▽演出
	$coiltempX=$CoilPreX+21-50;
	$coiltempY=$CoilPreY+56;
	$coiltempnut6="coilphone_窓/coilphone_欄/演出"+$CoilTemp;
	CreateTexture($coiltempnut6, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/メール新規演出.png");//10090
	SetAlias($coiltempnut6, $coiltempnut6);
//	Request($coiltempnut6, AddRender);
//	Request($coiltempnut6, MulRender);
	Request($coiltempnut6, OverlayRender);
	Zoom($coiltempnut6, 0, 1500, 1000, null, false);


	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilphone_窓/coilphone_欄/*", PushText);
	Request("coilphone_窓/coilphone_欄/*/*", PushText);


//	CreateProcess("coilphone_rece_ダウンロードプロセス", 150, 0, 0, "CoilRacePro");
//	SetAlias("coilphone_rece_ダウンロードプロセス", "coilphone_rece_ダウンロードプロセス");

	CreateSE("coilsound_phone15","se物体_コイル_システムメール追加");
	MusicStart("coilsound_phone15",0,700,0,1000,null,false);

	if($coilraceSoon){

		Fade($coiltempnut1, 0, 1000, null, false);
		Fade($coiltempnut2, 0, 1000, null, false);
		Fade($coiltempnut3, 0, 1000, null, false);

		if($CoilReceNow==($CoilReceCount-1)){
			$CoilReceNow=$CoilReceCount;

		}else{
			$CoilReceMove=(-($CoilReceCount-$CoilReceNow-1))*43;
	
			Move($coiltempnutW, 0, @0, @$CoilReceMove, Dxl1, true);
			Move($coiltempnut1, 0, @0, @$CoilReceMove, Dxl1, true);
			Move($coiltempnut2, 0, @0, @$CoilReceMove, Dxl1, true);
			Move($coiltempnut3, 0, @0, @$CoilReceMove, Dxl1, true);

			$CoilMailNow=$CoilMailNow+1;
		}

		Request($coiltempnut3, Enter);

		Move("coilphone_窓/coilphone_欄/*", 200, @0, @43, Dxl1, false);
		Move("coilphone_窓/coilphone_欄/*/*", 200, @0, @43, Dxl1, true);

		$coilraceSoon=false;
	}else if($CoilReceNow==($CoilReceCount-1)){
		Fade($coiltempnut1, 0, 0, null, true);
		Fade($coiltempnut2, 0, 0, null, true);
		Fade($coiltempnut3, 0, 0, null, true);

		Move("coilphone_窓/coilphone_欄/*", 150, @0, @43, Dxl1, false);
		Move("coilphone_窓/coilphone_欄/*/*", 150, @0, @43, Dxl1, true);
	
		Zoom($coiltempnut6, 500, 250, 1000, null, false);
		Fade($coiltempnut6, 500, 500, null, false);
		Move($coiltempnut6, 600, @350, @0, null, false);
	
		Fade($coiltempnut1, 300, 1000, null, 150);
		Fade($coiltempnut2, 300, 1000, null, 150);
		Request($coiltempnut3, Enter);
		Fade($coiltempnut3, 300, 1000, null, true);
//		Fade($coiltempnut4, 200, 1000, null, 100);
//		Fade($coiltempnut5, 200, 1000, null, true);

		$CoilReceNow=$CoilReceCount;

	}else{
		Fade($coiltempnut1, 0, 0, null, true);
		Fade($coiltempnut2, 0, 0, null, true);
		Fade($coiltempnut3, 0, 0, null, true);

		$CoilReceMove=(-($CoilReceCount-$CoilReceNow-1))*43;

		Fade($coiltempnut1, 0, 1000, null, false);
		Fade($coiltempnut2, 0, 1000, null, false);
		Fade($coiltempnut3, 0, 1000, null, false);
//		Fade($coiltempnut4, 0, 1000, null, false);
//		Fade($coiltempnut5, 0, 1000, null, false);

		Move($coiltempnutW, 0, @0, @$CoilReceMove, Dxl1, true);
		Move($coiltempnut1, 0, @0, @$CoilReceMove, Dxl1, true);
		Move($coiltempnut2, 0, @0, @$CoilReceMove, Dxl1, true);
		Move($coiltempnut3, 0, @0, @$CoilReceMove, Dxl1, true);
//		Move($coiltempnut4, 0, @0, @$CoilReceMove, Dxl1, true);
//		Move($coiltempnut5, 0, @0, @$CoilReceMove, Dxl1, true);
//		Move($coiltempnut6, 0, @0, @$CoilReceMove, Dxl1, true);
//		Move($coilphone_recepronut, 0, @0, @$CoilReceMove, Dxl1, true);

		Request($coiltempnut3, Enter);
	}

//	Request("coilphone_rece_ダウンロードプロセス", Start);
}

function CoilRacePro(){
	while(1){
		Fade("@coilphone_窓/coilphone_欄/矢印*", 800, 700, null, true);
		Fade("@coilphone_窓/coilphone_欄/矢印*", 1200, 0, null, true);
		Wait(400);
		Fade("@coilphone_窓/coilphone_欄/矢印*", 800, 700, null, true);
		Fade("@coilphone_窓/coilphone_欄/矢印*", 1200, 0, null, true);
		Wait(400);
	}
}

function CoilRacePro_Call(){
	while(1){
		Fade("@coilphone_発信プロ開始", 400, 700, null, true);
		Fade("@coilphone_発信プロ開始", 800, 0, null, true);
		Wait(200);
		Fade("@coilphone_発信プロ開始", 400, 700, null, true);
		Fade("@coilphone_発信プロ開始", 800, 0, null, true);
		Wait(200);
	}
}




..▽着歴一覧移動
function CoilRaceMove($CoilRece番号,$CoilRaceTime){

	WaitAction("@coilphone_ベース３", null);
//	WaitAction("@coilphone_ベース", null);

	Position("@coilphone_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilphone_ベース３", 0, 0, null, false);
	Zoom("@coilphone_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilphone_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);

	$CoilReceNew=VariableValue($,$CoilRece番号+"_num");
	$CoilReceNew2=$CoilReceNew;
	$CoilReceNew+=2;

	if($CoilReceCount<6){
		$CoilReceNow=$CoilReceNew;
	}else if($CoilReceNew<6){
		$CoilReceNew=5;
	}else if($CoilReceNew>$CoilReceCount){
		$CoilReceNew=$CoilReceCount;
	}

	CoilRaceMoveMacro();
}

function CoilRaceMove2($CoilRaceNum,$CoilRaceTime){

	Position("@coilphone_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilphone_ベース３", 0, 0, null, false);
	Zoom("@coilphone_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilphone_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);


	$CoilReceNew=$CoilReceCount-($CoilRaceNum-1);//どの番号？
	$CoilReceNew2=$CoilReceNew;


	CoilRaceMoveMacro();
}

function CoilRaceMoveMacro(){
	$CoilReceTemp=$CoilReceNow-$CoilReceNew;
	$CoilReceMove=(-$CoilReceTemp)*43;
	$CoilRaceTime2=$CoilRaceTime/2;
	$CoilRaceTime3=$CoilRaceTime/5*2;
	$CoilRaceTime4=$CoilRaceTime/5*3;

	$coiltempnut="coilphone_窓/coilphone_欄/チェック"+$CoilReceNew2;
	Position($coiltempnut,$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX2=$X座標値格納変数;
	$CoilPreY2=$Y座標値格納変数;
	$CoilPreY2+=$CoilReceMove;

	CreateSE("coilsound_phone22","se物体_コイル_システムメール移動");
	MusicStart("coilsound_phone22",0,700,0,1000,null,false);

	if($CoilReceMove==0){
		Move("coilphone_窓/coilphone_欄/*", $CoilRaceTime, @0, @$CoilReceMove, Dxl1, false);
		Move("coilphone_窓/coilphone_欄/*/*", $CoilRaceTime, @0, @$CoilReceMove, Dxl1, false);
		Move("@coilphone_rece_選択", $CoilRaceTime, $CoilPreX2, $CoilPreY2, Dxl1, false);

		Zoom("@coilphone_rece_選択", $CoilRaceTime4, 1200, 1200, Dxl1, false);
		Fade("@coilphone_rece_選択", $CoilRaceTime4, 100, null, true);

		Zoom("@coilphone_rece_選択", $CoilRaceTime3, 1000, 1000, Dxl1, false);
		Fade("@coilphone_rece_選択", $CoilRaceTime3, 500, Axl1, true);

	}else{
		if($CoilReceTemp>5){
			$CoilReceMove2=$CoilPreY+300;
		}else if($CoilReceTemp<-5){
			$CoilReceMove2=$CoilPreY-50;
		}else{
			$CoilReceMove5=$CoilReceTemp*8;

			if($CoilReceMove5>30){
				$CoilReceMove5=30;
			}else if($CoilReceMove5<-30){
				$CoilReceMove5=-30;
			}
			$CoilReceMove2=$CoilPreY2+$CoilReceMove5;
		}

		$CoilReceMove4=$CoilReceTemp*4;
		if($CoilReceMove4>20){
			$CoilReceMove4=20;
		}else if($CoilReceMove4<-20){
			$CoilReceMove4=-20;
		}
		$CoilReceMove3=$CoilReceMove-$CoilReceMove4;


		//ズーム
		$CoilReceZoom=2000*$CoilReceTemp;
		if($CoilReceZoom<0){$CoilReceZoom=-$CoilReceZoom;}
		if($CoilReceZoom>8000){
			$CoilReceZoom=8000;
		}

//		$CoilReceZoom=8000;

		Fade("@coilphone_rece_選択", $CoilRaceTime3, 0, null, false);///////////100

		Move("coilphone_窓/coilphone_欄/*", $CoilRaceTime4, @0, @$CoilReceMove3, Axl1, false);
		Move("coilphone_窓/coilphone_欄/*/*", $CoilRaceTime4, @0, @$CoilReceMove3, Axl1, false);

		Zoom("@coilphone_rece_選択", $CoilRaceTime3, 1200, $CoilReceZoom, Dxl1, false);
//		Move("@coilphone_rece_選択", $CoilRaceTime3, $CoilPreX2, $CoilReceMove2, Dxl3, false);
		Move("@coilphone_rece_選択", $CoilRaceTime4, $CoilPreX2, $CoilPreY2, Dxl1, false);

		WaitAction("coilphone_窓/coilphone_欄/*/*", null);


		Move("coilphone_窓/coilphone_欄/*", $CoilRaceTime3, @0, @$CoilReceMove4, Dxl2, false);
		Move("coilphone_窓/coilphone_欄/*/*", $CoilRaceTime3, @0, @$CoilReceMove4, Dxl2, false);
	
		Zoom("@coilphone_rece_選択", $CoilRaceTime3, 1000, 1000, Dxl1, false);
//		Move("@coilphone_rece_選択", $CoilRaceTime3, $CoilPreX2, $CoilPreY2, Axl1, false);
		Move("@coilphone_rece_選択", 0, $CoilPreX2, $CoilPreY2, Dxl1, false);
		Fade("@coilphone_rece_選択", $CoilRaceTime3, 500, Axl1, true);
	}

	$CoilReceNow=$CoilReceNew;
}
















.■電話２『基本セット』============================================================================================
//1060
//電話２
//coilphone2
//coilphone2
//CoilPhone2
//CoilRece2
//CoilRace2
//CoilCall2
//CoilMiss2
//CoilError2
//CoilBug2
//coilrace2
//coilsound2

//声プロセスのなかみ
//nut2
//name2
//koe2

..▽電話欄基本セット（10600）
function CoilPhone2Base(){

	CreateWindow("coilphone2_窓", 20000, $coilphone2X, $coilphone2Y, 287, 360, false);
	SetAlias("coilphone2_窓", "coilphone2_窓");

	CreateTexture("coilphone2_窓/ベース", 10600, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/コイル電話枠.png");//10000
	SetAlias("coilphone2_窓/ベース", "coilphone2_ベース");
	CreateTexture("coilphone2_窓/ベース２", 10609, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/コイル電話枠.png");//10500
	SetAlias("coilphone2_窓/ベース２", "coilphone2_ベース２");
	SetTone("coilphone2_窓/ベース２", Monochrome);

	CreateTexture("coilphone2_窓/黒", 10609, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/コイル電話枠_黒.png");//10500
	SetAlias("coilphone2_窓/黒", "coilphone2_黒");
	Fade("coilphone2_窓/黒", 0, 0, null, true);

	CreateMask("coilphone2_窓/マスク２", 200, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/コイル演出トランジ.png", false);
	SetAlias("coilphone2_窓/マスク２", "coilphone2_窓/マスク２");
	CreateTexture("coilphone2_窓/マスク２/ベース３", 10605, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/コイル電話枠.png");//10100
	SetAlias("coilphone2_窓/マスク２/ベース３", "coilphone2_ベース３");
	Request("coilphone2_窓/マスク２/ベース３", AddRender);

	$coilphone2X4=$coilphone2X-20;
	$coilphone2Y4=$coilphone2Y-8;
	CreateTexture("coilphone2_演出", 10602, $coilphone2X4, $coilphone2Y4, "cg/sys/coil/phone/コイル演出.png");//10130
	SetAlias("coilphone2_演出", "coilphone2_演出");
	Request("coilphone2_演出", AddRender);
	Fade("coilphone2_演出", 0, 0, null, true);
	Zoom("coilphone2_演出", 0, 1000, 0, Dxl1, true);

	CreateTexture("coilphone2_消去", 10602, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/コイル電話枠_演出.png");//10130
	SetAlias("coilphone2_消去", "coilphone2_消去");
	Request("coilphone2_消去", AddRender);
	Fade("coilphone2_消去", 0, 0, null, true);
	SetVertex("coilphone2_消去", 130, 0);
	Zoom("coilphone2_消去", 0, 1200, 1000, null, false);

	$coilphone2X5=$coilphone2X+25;
	$coilphone2Y5=$coilphone2Y+294;
	CreateTexture("coilphone2_窓/発信開始", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/コイル電話ボタンCALL.png");//10130
	SetAlias("coilphone2_窓/発信開始", "coilphone2_発信開始");
	Request("coilphone2_窓/発信開始", Smoothing);

	CreateTexture("coilphone2_窓/発信プロ開始", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/コイル電話ボタンCALL.png");//10130
	SetAlias("coilphone2_窓/発信プロ開始", "coilphone2_発信プロ開始");
	Request("coilphone2_窓/発信プロ開始", AddRender);

	CreateTexture("coilphone2_窓/発信終了", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/コイル電話ボタンENDCALL.png");//10130
	SetAlias("coilphone2_窓/発信終了", "coilphone2_発信終了");
	Request("coilphone2_窓/発信終了", Smoothing);

	CreateTexture("coilphone2_窓/発信プロ終了", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/コイル電話ボタンENDCALL.png");//10130
	SetAlias("coilphone2_窓/発信プロ終了", "coilphone2_発信プロ終了");
	Request("coilphone2_窓/発信プロ終了", AddRender);

	CreateTexture("coilphone2_窓/発信演出", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/コイル電話ボタン.png");//10130
	SetAlias("coilphone2_窓/発信演出", "coilphone2_発信演出");
	Request("coilphone2_窓/発信演出", AddRender);
	Fade("coilphone2_窓/発信演出", 0, 0, null, false);


	$coilphone2X6=$coilphone2X+12;
	$coilphone2Y6=$coilphone2Y+56;
	CreateWindow("coilphone2_窓/coilphone2_欄", 20000, $coilphone2X6, $coilphone2Y6, 263, 233, false);
	SetAlias("coilphone2_窓/coilphone2_欄", "coilphone2_欄");


	CreateProcess("coilphone2_ダウンロードプロセス", 150, 0, 0, "CoilRace2Pro_Call");
	SetAlias("coilphone2_ダウンロードプロセス", "coilphone2_ダウンロードプロセス");

	CreateSE("coilsound2_phone1","se物体_コイル_システムオープン");
	CreateSE("coilsound2_phone2","se物体_コイル_システムクローズ");
}


..▽電話フェード消し
function CoilPhone2Delete(){

	Zoom("@coilphone2_窓", 0, 1000, 1000, null, true);
	Zoom("coilphone2_窓/マスク２", 0, 1000, 1000, null, true);


	Position("@coilphone2_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilphone2_ベース３", 0, 0, null, false);
	Zoom("@coilphone2_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilphone2_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);

	Request("coilphone2_*", Stop);
	Request("coilphone2_rece_ダウンロードプロセス", Stop);
	Request("coilphone2_ダウンロードプロセス", Stop);
	WaitAction("coilphone2_rece_ダウンロードプロセス", null);
	WaitAction("coilphone2_ダウンロードプロセス", null);

	Fade("@coilphone2_ベース３", 0, 1000, null, false);

	Zoom("coilphone2_演出", 0, 1500, 300, null, false);
	Fade("coilphone2_演出", 0, 250, null, true);

//	WaitKey();
	$coilphone2NOW="無し";
	$coilphone2ON=false;
	CoilBlack();

	MusicStart("coilsound2_phone2",0,700,0,1000,null,false);

//	Fade("@coilphone2_発信プロ開始", 200, 0, null, false);
	Fade("@coilphone2_発信*", 300, 0, null, false);
	Zoom("@coilphone2_発信*", 300, 0, 0, Dxl1, false);


	Zoom("coilphone2_消去", 500, 1100, 0, null, false);
	Fade("coilphone2_消去", 500, 1000, Dxl3, false);

	Fade("coilphone2_演出", 300, 1000, null, false);
	Zoom("coilphone2_演出", 400, 750, 0, Axl1, false);

//	Zoom("@coilphone2_ベース３", 50, 1000, 1500, null, false);
	Fade("@coilphone2_ベース３", 50, 0, null, false);
	Fade("@coilphone2_ベース", 500, 500, null, false);

	Move("coilphone2_窓/*/*", 500, @0, @-375, Dxl1, false);
	Move("coilphone2_窓/*", 500, @0, @-375, Dxl1, false);

	Zoom("@coilphone2_ベース２", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilphone2_ベース", 500, 1000, 750, AxlAuto, false);

//	Fade("coilphone2_演出", 400, 0, Axl3, false);
//	Rotate("coilphone2_演出", 400, @-90, @0, @0, Axl3, false);


	Delete("coilphone2_miss_ダウンロードプロセス");
	Delete("coilphone2_call_ダウンロードプロセス");
	Delete("coilphone2_call_ダウンロードプロセス*");
	Delete("coilphone2_rece_ダウンロードプロセス");
	Delete("coilphone2_ダウンロードプロセス");
	Request("coilphone2_窓/*/*", Disused);
	Request("coilphone2_窓/*", Disused);
	Request("coilphone2_演出", Disused);
	Request("coilphone2_消去", Disused);


	$CoilPhone2=false;
}



.■電話２『発着信セット』
..▽電話着信セット（10600）
function CoilPhone2_IncallSet($coilphone2X,$coilphone2Y,$CoilRece2管理番号,$CoilRece2管理人物,$CoilRece2管理通話){

	$coilphone2Name="着信";
	CoilPhone2_CallBase();
}

..▽電話発信セット（10600）
function CoilPhone2_OutcallSet($coilphone2X,$coilphone2Y,$CoilRece2管理番号,$CoilRece2管理人物,$CoilRece2管理通話){

	$coilphone2Name="発信";
	CoilPhone2_CallBase();
}

..▽電話コール基本
function CoilPhone2_CallBase(){

	if($coilphone2Name=="着信"){
		CoilRece2Add($CoilRece2管理番号,$CoilRece2管理人物,$CoilRece2管理通話);
	}

	if(!$CoilPhone2){
		CoilPhone2Base();
	}else{
		Position("coilphone2_窓",$coilphone2X,$coilphone2Y);
	}

//――――――――――――――――――――――――――――――――――
	if($coilphone2Name=="着信"){
		$coilphone2_callnut1="coilphone2_窓/coilphone2_call_種類着信";
		$coilphone2_callnut1a="coilphone2_call_種類着信";
		$coilphone2_callimg1="cg/sys/coil/phone/コイル電話表示_IC.png";
		$coilphone2_callnut2="coilphone2_窓/coilphone2_欄/人物着信";
		$coilphone2_callnut3="coilphone2_窓/coilphone2_欄/枠着信";
		$coilphone2_callnut3_a="coilphone2_窓/coilphone2_欄/演出枠";
		$coilphone2_callnut4w="coilphone2_窓/coilphone2_欄/窓";
		$coilphone2_callnut5="coilphone2_窓/coilphone2_欄/デフォ着信";

		$coilphone2_callnut6="coilphone2_窓/coilphone2_欄/通話着信";
		$coilphone2_callnut6a="coilphone2_窓/coilphone2_欄/表示着信１";
		$coilphone2_callnut6b="coilphone2_窓/coilphone2_欄/表示着信２";
		$coilphone2_callnut6c="coilphone2_窓/coilphone2_欄/表示着信３";
		$coilphone2_callimg6a="cg/sys/coil/phone/表示IC 01.png";
		$coilphone2_callimg6b="cg/sys/coil/phone/表示IC 02.png";
		$coilphone2_callimg6c="cg/sys/coil/phone/表示IC 03.png";

		$coilphone2_callpro="CoilCall2Pro1";

	}else{
		$coilphone2_callnut1="coilphone2_窓/coilphone2_call_種類発信";
		$coilphone2_callnut1a="coilphone2_call_種類発信";
		$coilphone2_callimg1="cg/sys/coil/phone/コイル電話表示_OC.png";
		$coilphone2_callnut2="coilphone2_窓/coilphone2_欄/人物発信";
		$coilphone2_callnut3="coilphone2_窓/coilphone2_欄/枠発信";
		$coilphone2_callnut3_a="coilphone2_窓/coilphone2_欄/演出枠";
		$coilphone2_callnut4w="coilphone2_窓/coilphone2_欄/窓";
		$coilphone2_callnut5="coilphone2_窓/coilphone2_欄/デフォ発信";

		$coilphone2_callnut6="coilphone2_窓/coilphone2_欄/通話発信";
		$coilphone2_callnut6a="coilphone2_窓/coilphone2_欄/表示発信１";
		$coilphone2_callnut6b="coilphone2_窓/coilphone2_欄/表示発信２";
		$coilphone2_callnut6c="coilphone2_窓/coilphone2_欄/表示発信３";
		$coilphone2_callimg6a="cg/sys/coil/phone/表示OC 01.png";
		$coilphone2_callimg6b="cg/sys/coil/phone/表示OC 02.png";
		$coilphone2_callimg6c="cg/sys/coil/phone/表示OC 03.png";

		$coilphone2_callpro="CoilCall2Pro2";
	}

	CreateProcess("coilphone2_call_ダウンロードプロセス", 150, 0, 0, $coilphone2_callpro);
	SetAlias("coilphone2_call_ダウンロードプロセス", "coilphone2_call_ダウンロードプロセス");

	CreateProcess("coilphone2_call_ダウンロードプロセス２", 150, 0, 0, "CoilCall2ProMoni");
	SetAlias("coilphone2_call_ダウンロードプロセス２", "coilphone2_call_ダウンロードプロセス２");

	CreateProcess("coilphone2_call_ダウンロードプロセス３", 150, 0, 0, "CoilCall2ProTalk");
	SetAlias("coilphone2_call_ダウンロードプロセス３", "coilphone2_call_ダウンロードプロセス３");


	//▽種類
	$coilphone2_callX1=$coilphone2X+64+3;
	$coilphone2_callY1=$coilphone2Y+18;
	CreateTexture($coilphone2_callnut1, 10601, $coilphone2_callX1, $coilphone2_callY1, $coilphone2_callimg1);
	SetAlias($coilphone2_callnut1, $coilphone2_callnut1a);

	//▽人物
	SetFont("ＭＳ ゴシック", 25, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$coilphone2X;
	$coiltempY=$coilphone2Y+186;
	$coiltempimg=$CoilRece2管理人物;
	$temp=String("<SPAN size=-2>%s</SPAN>",$CoilRece2管理人物);
	CreateText($coilphone2_callnut2, 10601, Center, $coiltempY, Auto, Auto, $temp);//10090
	SetAlias($coilphone2_callnut2, $coilphone2_callnut2);
	Request($coilphone2_callnut2, NoLog);

/*
	$文字数=Strlen($coiltempimg);
	if($文字数<=3){$temphmin=158;}
	else if($文字数<=4){$temphmin=162;}
	else if($文字数<=5){$temphmin=165;}
	else if($文字数<=6){$temphmin=166;}
	else if($文字数<=7){$temphmin=169;}
	else if($文字数<=8){$temphmin=171;}
	else{$temphmin=173;}//9
*/
$temphmin=159;
	$temph=$coiltempX+$temphmin-512;
	Move($coilphone2_callnut2, 0, @$temph, @0, null, true);

	//▽枠
	$coiltempX=$coilphone2X+83+3;
	$coiltempY=$coilphone2Y+77;
	CreateTexture($coilphone2_callnut3, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話フェース.png");
	SetAlias($coilphone2_callnut3, $coilphone2_callnut3);

	//▽顔デフォ
	$coiltempX=$coilphone2X+83+3;
	$coiltempY=$coilphone2Y+77;
	CreateTexture($coilphone2_callnut5, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話_デフォルトアイコン.png");
	SetAlias($coilphone2_callnut5, $coilphone2_callnut5);

	//▽顔窓
	$coiltempX=$coilphone2X+83+7+3;
	$coiltempY=$coilphone2Y+77+7;
	CreateWindow($coilphone2_callnut4w, 10601, $coiltempX, $coiltempY, 98, 98, false);
	SetAlias($coilphone2_callnut4w, $coilphone2_callnut4w);

	//▽アニメーション
	$coiltempX=$coilphone2X+115;
	$coiltempY=$coilphone2Y+218;
	CreateTexture($coilphone2_callnut6, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/表示.png");
	SetAlias($coilphone2_callnut6, $coilphone2_callnut6);

	CreateTexture($coilphone2_callnut3_a, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/表示.png");
	SetAlias($coilphone2_callnut3_a, $coilphone2_callnut3_a);
	Request($coilphone2_callnut3_a, AddRender);
	Request($coilphone2_callnut3_a, Smoothing);
	Fade($coilphone2_callnut3_a, 0, 0, null, false);
	SetVertex($coilphone2_callnut3_a, 28, 38);

	CreateTexture($coilphone2_callnut6a, 10601, $coiltempX, $coiltempY, $coilphone2_callimg6a);
	SetAlias($coilphone2_callnut6a, $coilphone2_callnut6a);
	CreateTexture($coilphone2_callnut6b, 10601, $coiltempX, $coiltempY, $coilphone2_callimg6b);
	SetAlias($coilphone2_callnut6b, $coilphone2_callnut6b);
	CreateTexture($coilphone2_callnut6c, 10601, $coiltempX, $coiltempY, $coilphone2_callimg6c);
	SetAlias($coilphone2_callnut6c, $coilphone2_callnut6c);
	Fade("coilphone2_窓/coilphone2_欄/表示*", 0, 0, null, false);


	Request("coilphone2_窓/coilphone2_欄/*", PushText);
	Request("coilphone2_窓/coilphone2_欄/*/*", PushText);


	$coilphone2X6=$coilphone2X+12;
	$coilphone2Y6=$coilphone2Y+56;
	CreateWindow("coilphone2_窓/coilphone2_call_幅", 20000, $coilphone2X6, $coilphone2Y6, 263, 233, false);
	SetAlias("coilphone2_窓/coilphone2_call_幅", "coilphone2_call_幅");

	CreateColor("coilphone2_窓/coilphone2_call_幅/演出色１", 10602, $coilphone2X, $coilphone2Y, 300, 1, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone2_窓/coilphone2_call_幅/演出色１", "coilphone2_call_演出色１");
	Request("coilphone2_窓/coilphone2_call_幅/演出色１", AddRender);
	CreateColor("coilphone2_窓/coilphone2_call_幅/演出色２", 10602, $coilphone2X, $coilphone2Y, 300, 200, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone2_窓/coilphone2_call_幅/演出色２", "coilphone2_call_演出色２");
	Request("coilphone2_窓/coilphone2_call_幅/演出色２", AddRender);
	Fade("@coilphone2_call_演出色２", 0, 0, null, true);

	//―――――――――――――――――――――――――――
	//調整
	if(!$CoilPhone2){
		Move("coilphone2_窓/*", 0, @0, @-375, null, false);
		Move("coilphone2_窓/*/*", 0, @0, @-375, null, false);
		Move("coilphone2_窓/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone2_発信終了", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone2_発信開始", 0, 0, 0, Dxl1, false);
	
		Fade("@coilphone2_発信開始", 0, 0, null, true);
		Fade("@coilphone2_発信終了", 0, 0, null, true);
		Fade("@coilphone2_発信プロ*", 0, 0, null, true);

		Fade("@coilphone2_窓/coilphone2_欄/枠*", 0, 0, null, false);

		Fade("@coilphone2_ベース３", 0, 0, null, false);
		Fade("coilphone2_窓/ベース", 0, 750, null, true);
	
		SetVertex("@coilphone2_ベース", 143, 0);
		Zoom("@coilphone2_ベース", 0, 1200, 1000, null, true);//ここだけちがう
		Fade("@coilphone2_ベース", 0, 0, null, true);

	}else{
		Fade($coilphone2_callnut1, 0, 0, null, false);
		Fade($coilphone2_callnut2, 0, 0, null, false);
		Fade($coilphone2_callnut3, 0, 0, null, false);
		Fade($coilphone2_callnut4, 0, 0, null, false);
		Fade($coilphone2_callnut5, 0, 0, null, false);

		Fade($coilphone2_callnut6, 0, 0, null, false);
		Fade($coilphone2_callnut6a, 0, 0, null, false);
		Fade($coilphone2_callnut6b, 0, 0, null, false);
		Fade($coilphone2_callnut6c, 0, 0, null, false);

		Fade("coilphone2_窓/coilphone2_call_幅/演出色１", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_call_幅/演出色２", 0, 0, null, false);

	}

	if($coilphone2Name=="発信"){
		CreateSE("coilsound2_phone3","se物体_コイル_操作音01");
		CreateSE("coilsound2_phone9","se物体_コイル_ターゲット開放");
	
		CreateSE("coilsound2_phone4","se物体_コイル_システムメール展開");
	
		CreateSE("coilsound2_phone5","se物体_コイル_操作音01");
		CreateSE("coilsound2_phone6","se物体_コイル_発信待機01");
		CreateSE("coilsound2_phone_call","se物体_コイル_発信待機02L");
	}

	$CoilPhone2=true;
}



..▽コール開始
function CoilPhone2_CallFade(){

	if(!$coilphone2ON){
	//■ベースがなかった場合（通常演出）
		MusicStart("coilsound2_phone1",0,700,0,1000,null,false);

		Fade("@coilphone2_call_演出色１", 0, 0, Axl1, false);
	
		Zoom("@coilphone2_ベース", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone2_演出", 0, 350, null, false);
	//	Zoom("coilphone2_演出", 200, 1500, 200, null, false);
	
	//	Fade("coilphone2_窓/ベース２", 300, 500, null, false);
	//	Fade("coilphone2_窓/ベース", 300, 1000, null, false);
	//	Move("coilphone2_窓/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone2_窓/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone2_演出", 0, 350, null, false);
		Zoom("coilphone2_演出", 150, 1500, 200, null, false);
	
		Fade("coilphone2_窓/ベース２", 200, 500, null, false);
	//	Fade("coilphone2_窓/ベース", 200, 1000, null, false);
		Move("coilphone2_窓/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_窓/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_窓/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphone2ON=true;
		CoilBlack();

		Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 600, null, false);

		if($coilphone2Name=="着信"){
			Fade("coilphone2_窓/coilphone2_欄/通話*", 0, 1000, null, false);
			Fade("@coilphone2_発信プロ終了", 0, 1000, null, false);
		}else{
			Fade("coilphone2_窓/coilphone2_call_種類*", 0, 0, null, false);

			Fade("coilphone2_窓/coilphone2_欄/通話*", 0, 0, null, false);
			Fade("@coilphone2_発信プロ開始", 0, 1000, null, false);
		}

		Fade("coilphone2_演出", 0, 1000, null, true);

		Move("coilphone2_窓/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_窓/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_窓/*", 500, @0, @339, Dxl1, false);

		Fade("coilphone2_窓/ベース", 200, 1000, null, false);
		Fade("coilphone2_窓/ベース２", 200, 0, null, false);
		Fade("@coilphone2_ベース３", 200, 1000, null, false);
	
		Fade("coilphone2_演出", 500, 0, Axl2, false);
		Zoom("coilphone2_演出", 200, 1000, 1000, null, false);
	
		if($coilphone2Name=="着信"){
			Fade("@coilphone2_発信プロ終了", 300, 0, null, false);
			Fade("@coilphone2_発信終了", 400, 1000, null, false);
		}else{
			Fade("@coilphone2_発信プロ開始", 400, 0, null, false);
			Fade("@coilphone2_発信開始", 400, 1000, null, false);
		}
		Zoom("@coilphone2_発信終了", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone2_発信開始", 400, 1000, 1000, Dxl1, false);


		Move("coilphone2_窓/マスク２", 500, @0, @-373, null, false);
		Zoom("@coilphone2_ベース３", 500, 1000, 1200, Axl1, false);

		//WaitAction("coilphone2_窓/マスク２", null);
		//$SYSTEM_skip=false;
		//Draw();

		if($coilphone2Name=="着信"){
			Request("coilphone2_call_ダウンロードプロセス", Start);
			Request("coilphone2_call_ダウンロードプロセス２", Start);
		//	Request("coilphone2_ダウンロードプロセス", Start);
		}else if($coilphone2Error){
			WaitAction("coilphone2_窓/マスク２", null);
			MusicStart("coilsound2_phone5",0,700,0,1000,null,false);

			Fade("coilphone2_窓/coilphone2_call_種類*", 0, 1000, null, false);
			Fade("coilphone2_窓/発信演出", 0, 1000, null, true);
			Fade("coilphone2_窓/発信演出", 200, 0, null, false);
			Fade("@coilphone2_発信終了", 0, 1000, null, false);
			Fade("@coilphone2_発信開始", 0, 0, null, false);

			Fade("coilphone2_窓/coilphone2_欄/通話*", 0, 500, null, false);

			WaitPlay("coilsound2_phone5", null);
			MusicStart("coilsound2_phone6",0,700,0,1000,null,false);
			WaitPlay("coilsound2_phone6", null);
			Wait(500);
			CoilPhone2_Error();
			$coilphone2Error=false;
		}else{
			WaitAction("coilphone2_窓/マスク２", null);
			MusicStart("coilsound2_phone5",0,700,0,1000,null,false);

			Fade("coilphone2_窓/coilphone2_call_種類*", 0, 1000, null, false);
			Fade("coilphone2_窓/発信演出", 0, 1000, null, true);
			Fade("coilphone2_窓/発信演出", 200, 0, null, false);
			Fade("@coilphone2_発信終了", 0, 1000, null, false);
			Fade("@coilphone2_発信開始", 0, 0, null, false);

			Fade("coilphone2_窓/coilphone2_欄/通話*", 0, 500, null, false);

			WaitPlay("coilsound2_phone5", null);
			MusicStart("coilsound2_phone6",0,700,0,1000,null,false);
			WaitPlay("coilsound2_phone6", null);

			Request("coilphone2_call_ダウンロードプロセス", Start);
			Request("coilphone2_call_ダウンロードプロセス２", Start);
		//	Request("coilphone2_ダウンロードプロセス", Start);

			MusicStart("coilsound2_phone_call",0,700,0,1000,null,true);
		}

	}else{
	//■ベースが合った場合（置換演出）
		Request("coilphone2_*", Stop);
		//Request("@coilphone2_窓/coilphone2_欄/表示*", Erase);

		Position("coilphone2_窓",$coilphone2X,$coilphone2Y);

		//▽種類
		$coiltempX=$coilphone2X+64+3;
		$coiltempY=$coilphone2Y+18;
		Move($coilphone2_callnut1, 0, $coiltempX, $coiltempY, null, false);

		//▽人物
		$coiltempX=$coilphone2X;
		$coiltempY=$coilphone2Y+186;

		$temph=ImageHorizon($coilphone2_callnut2);
		$temph=(1024-$temph)/2;

/*
		$文字数=Strlen($CoilRece2管理人物);
		if($文字数<=3){$temphmin=158;}
		else if($文字数<=4){$temphmin=162;}
		else if($文字数<=5){$temphmin=165;}
		else if($文字数<=6){$temphmin=166;}
		else if($文字数<=7){$temphmin=169;}
		else if($文字数<=8){$temphmin=171;}
		else{$temphmin=173;}//9
*/
$temphmin=159;
		$coiltempX=$temph+($coiltempX+$temphmin-512);
		Move($coilphone2_callnut2, 0, $coiltempX, $coiltempY, null, false);

		//▽枠
		$coiltempX=$coilphone2X+83+3;
		$coiltempY=$coilphone2Y+77;
		Move($coilphone2_callnut3, 0, $coiltempX, $coiltempY, null, false);

		//▽顔デフォ
		$coiltempX=$coilphone2X+83+3;
		$coiltempY=$coilphone2Y+77;
		Move($coilphone2_callnut5, 0, $coiltempX, $coiltempY, null, false);

		//▽顔窓
		$coiltempX=$coilphone2X+83+7+3;
		$coiltempY=$coilphone2Y+77+7;
		Move($coilphone2_callnut4w, 0, $coiltempX, $coiltempY, null, false);

		//▽アニメーション
		$coiltempX=$coilphone2X+115;
		$coiltempY=$coilphone2Y+218;
		Move($coilphone2_callnut6, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone2_callnut6a, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone2_callnut6b, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone2_callnut6c, 0, $coiltempX, $coiltempY, null, false);

		$coiltempX=$coilphone2X+12;
		$coiltempY=$coilphone2Y+56;
		Move("coilphone2_窓/coilphone2_call_幅", 0, $coiltempX, $coiltempY, null, false);

		Move("coilphone2_窓/coilphone2_call_幅/演出色１", 0, $coilphone2X, $coilphone2Y, null, false);
		Move("coilphone2_窓/coilphone2_call_幅/演出色２", 0, $coilphone2X, $coilphone2Y, null, false);

		//ここは必ず発信になる
		MusicStart("coilsound2_phone3",0,700,0,1000,null,false);

		Fade("coilphone2_窓/coilphone2_call_種類*", 0, 0, null, false);
		Fade("coilphone2_窓/発信*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/*/*", 0, 0, null, false);

		//Fade($coilphone2_callnut1, 0, 1000, null, false);
		Fade($coilphone2_callnut2, 0, 1000, null, false);
		//Fade($coilphone2_callnut3, 0, 1000, null, false);
		Fade($coilphone2_callnut5, 0, 600, null, true);
		Fade("@coilphone2_発信開始", 0, 1000, null, true);

		if(!$coilphone2Error){
			//メール演出===============================
			MusicStart("coilsound2_phone9",0,700,0,1000,null,false);
			Wait(500);
			MusicStart("coilsound2_phone4",0,700,0,1000,null,false);
			Wait(1000);
			//=========================================
		}

		MusicStart("coilsound2_phone5",0,700,0,1000,null,false);

		Fade($coilphone2_callnut1, 0, 1000, null, false);
		Fade("coilphone2_窓/発信演出", 0, 1000, null, true);
		Fade("coilphone2_窓/発信演出", 200, 0, null, false);
		Fade("@coilphone2_発信終了", 0, 1000, null, false);
		Fade("@coilphone2_発信開始", 0, 0, null, false);

		Fade("coilphone2_窓/coilphone2_欄/通話*", 0, 500, null, false);
		//coilphone2_窓/coilphone2_欄/通話エラー

		WaitPlay("coilsound2_phone5", null);
		MusicStart("coilsound2_phone6",0,700,0,1000,null,false);
		WaitPlay("coilsound2_phone6", null);
		//=========================================

		if($coilphone2Error){
			WaitPlay("coilsound2_phone6", null);
			Wait(500);
			CoilPhone2_Error();
			$coilphone2Error=false;
		}else{
			WaitPlay("coilsound2_phone6", null);
			Wait(500);
			Request("coilphone2_call_ダウンロードプロセス", Start);
			Request("coilphone2_call_ダウンロードプロセス２", Start);
			MusicStart("coilsound2_phone_call",0,700,0,1000,null,true);
		}
	}

}



function CoilCall2ProTalk(){

	if($CoilRece2管理人物=="デリバリーワークス"){
		$PhoneLipName2="ヨシエ";
	}else if($CoilRece2管理人物=="羽賀さん"){
		$PhoneLipName2="羽賀";
	}else if($CoilRece2管理人物=="　　"){
		$PhoneLipName2="東江";
	}else{
		$PhoneLipName2=$CoilRece2管理人物;
	}


	$PhoneLipNut2_0="@"+$coilphone2_callnut3_a;
	$PhoneLipNut2_1="@"+$coilphone2_callnut3_a;
//	$PhoneLipNut2_2="@"+$alies_lip2;
//	$PhoneLipNut2_n="@"+$ナット基;

begin:
//	WaitFade($LipNut2_n, null);

	while(1){
		$koe2 = SoundAmplitude("@text*",$PhoneLipName2);
		if($koe2>=550){
			Zoom($PhoneLipNut2_1, 16, 1200, 1200, Dxl1, false);
			Fade($PhoneLipNut2_1, 16, 300, null, false);Wait(16);
			Zoom($PhoneLipNut2_1, 200, 1000, 1000, Dxl1, false);
			Fade($PhoneLipNut2_1, 200, 0, null, false);Wait(100);
		}else if($koe2>=100){
			Zoom($PhoneLipNut2_1, 16, 1050, 1050, Dxl1, false);
			Fade($PhoneLipNut2_1, 16, 100, null, false);Wait(16);
			Zoom($PhoneLipNut2_1, 200, 1000, 1000, Dxl1, false);
			Fade($PhoneLipNut2_1, 200, 0, null, false);Wait(100);
		}else{
			Wait(32);
		}
	}
	Fade($LipNut2_0,0,0,null,false);
}


function CoilCall2ProMoni(){
	Position("@coilphone2_窓",$CoilCall2Pro2X,$CoilCall2Pro2Y);
	$CoilCall2Pro2Y_base=$CoilCall2Pro2Y-300;
	$CoilCall2Pro2Y+=360;

	Move("@coilphone2_call_演出色１", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y_base, null, true);
	Fade("@coilphone2_call_演出色１", 0, 200, null, true);
	Move("@coilphone2_call_演出色２", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y_base, null, true);
	Fade("@coilphone2_call_演出色２", 0, 100, null, true);

	Move("@coilphone2_call_演出色１", 3000, @0, $CoilCall2Pro2Y, null, false);
	Move("@coilphone2_call_演出色２", 15000, @0, $CoilCall2Pro2Y, null, false);

	while(1){
		Position("@coilphone2_call_演出色１",$CoilCall2Pro2Xa,$CoilCall2Pro2Ya);
		if($CoilCall2Pro2Ya>=$CoilCall2Pro2Y){
			$CoilCall2Pro2R=Random(5);
			if($CoilCall2Pro2R<=3){
				Move("@coilphone2_call_演出色１", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y_base, null, true);
				Move("@coilphone2_call_演出色１", 3000, @0, $CoilCall2Pro2Y, null, false);
			}
		}
		Position("@coilphone2_call_演出色２",$CoilCall2Pro2Xa,$CoilCall2Pro2Ya);
		if($CoilCall2Pro2Ya>=$CoilCall2Pro2Y){
			Move("@coilphone2_call_演出色２", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y_base, null, true);
			Move("@coilphone2_call_演出色２", 15000, @0, $CoilCall2Pro2Y, null, false);
		}
	}

}


function CoilCall2Pro1(){

//	Fade("@coilphone2_窓/coilphone2_欄/通話*", 0, 500, null, false);
	Fade("@coilphone2_窓/coilphone2_欄/表示着信３", 0, 700, null, true);

	while(1){
		Fade("@coilphone2_窓/coilphone2_欄/表示着信１", 300, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/表示着信３", 300, 700, null, true);

		Fade("@coilphone2_窓/coilphone2_欄/表示着信３", 300, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/表示着信２", 300, 700, null, true);

		Fade("@coilphone2_窓/coilphone2_欄/表示着信２", 300, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/表示着信１", 300, 700, null, true);
	}
}


function CoilCall2Pro2(){

//	Fade("@coilphone2_窓/coilphone2_欄/通話*", 0, 500, null, false);
	Fade("@coilphone2_窓/coilphone2_欄/表示発信１", 0, 700, null, true);

	while(1){
		Fade("@coilphone2_窓/coilphone2_欄/表示発信３", 300, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/表示発信１", 300, 700, null, true);

		Fade("@coilphone2_窓/coilphone2_欄/表示発信１", 300, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/表示発信２", 300, 700, null, true);

		Fade("@coilphone2_窓/coilphone2_欄/表示発信２", 300, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/表示発信３", 300, 700, null, true);
	}
}


..▽通話開始
function CoilPhone2_CallOn($coilphone2顔X,$coilphone2顔Y,$coilphone2対象){
	CreateSE("coilsound2_phone8","se物体_コイル_システムメール新着");
	SetVolumeEX("coilsound2_phone_call", 0, 0, null);
	MusicStart("coilsound2_phone8",0,700,0,1000,null,false);

	Request("coilphone2_call_ダウンロードプロセス", Stop);
	Request("@coilphone2_窓/coilphone2_欄/表示*", Erase);

	Request("coilphone2_call_ダウンロードプロセス３", Start);

	Fade("@coilphone2_窓/coilphone2_欄/通話*", 0, 1000, null, true);
	Fade("@coilphone2_窓/coilphone2_欄/枠*", 0, 1000, null, false);

	$coilphone2count=0;

	if($coilphone2対象=="デフォルト"){
		Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 0, null, false);
	}else if($coilphone2対象=="不明"){
		Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 1000, null, false);
	}else{
		$coilphone2img="cg/st/"+$coilphone2対象+".png";
		$coilphone2nut="coilphone2_窓/coilphone2_欄/窓/顔0";

		Position("coilphone2_窓",$X座標値,$Y座標値);

		CreateTexture($coilphone2nut, 10601, $X座標値, $Y座標値, $coilphone2img);
		SetAlias($coilphone2nut, $coilphone2nut);
		Fade($coilphone2nut, 0, 0, null, true);

		$coilphone2tempH=ImageHorizon($coilphone2nut);
		$X座標値=(287-$coilphone2tempH)/2;

		Move($coilphone2nut, 0, @$X座標値, @20, null, true);
		Move($coilphone2nut, 0, $coilphone2顔X, $coilphone2顔Y, null, true);

		Fade($coilphone2nut, 0, 700, null, true);
		Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 0, null, false);
	}
}


..▽通話継続顔変化
function CoilPhone2_Face($coilphone2顔X,$coilphone2顔Y,$coilphone2対象){

	if($coilphone2対象=="デフォルト"){
		Fade("coilphone2_窓/coilphone2_欄/窓/*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 0, null, false);
	}else if($coilphone2対象=="不明"){
		Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 1000, null, false);
		Fade("coilphone2_窓/coilphone2_欄/窓/*", 0, 0, null, false);
	}else{
		$precoilphone2count=$coilphone2count;
		$coilphone2count++;

		$coilphone2img="cg/st/"+$coilphone2対象+".png";
		$coilphone2nut="coilphone2_窓/coilphone2_欄/窓/顔"+$coilphone2count;

		Position("coilphone2_窓",$X座標値,$Y座標値);

		CreateTexture($coilphone2nut, 10601, $X座標値, $Y座標値, $coilphone2img);
		SetAlias($coilphone2nut, $coilphone2nut);
		Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 0, null, false);
		Fade($coilphone2nut, 0, 0, null, true);

		$coilphone2tempH=ImageHorizon($coilphone2nut);
		$X座標値=(287-$coilphone2tempH)/2;

		Move($coilphone2nut, 0, @$X座標値, @20, null, true);
		Move($coilphone2nut, 0, $coilphone2顔X, $coilphone2顔Y, null, true);

		//★ロック設置
		LockVideo(true);
		Fade("coilphone2_窓/coilphone2_欄/窓/*", 0, 0, null, false);
		Fade($coilphone2nut, 0, 700, null, true);
		//★ロック設置
		LockVideo(false);

		$precoilphone2nut="coilphone2_窓/coilphone2_欄/窓/顔"+$precoilphone2count;
		Delete($precoilphone2nut);
	}
}

..▽通話終了
function CoilPhone2_End(){
	Request("coilphone2_call_ダウンロードプロセス", Stop);
	Request("coilphone2_call_ダウンロードプロセス２", Stop);
	Request("coilphone2_call_ダウンロードプロセス３", Stop);
	Request("@coilphone2_窓/coilphone2_欄/表示*", Erase);

	CreateSE("coilsound2_phone8","se物体_コイル_操作音01");
	SetVolumeEX("coilsound2_phone_call", 0, 0, null);
	MusicStart("coilsound2_phone8",0,700,0,1000,null,false);

	Position("coilphone2_窓",$X座標値,$Y座標値);

//	$X座標値=$X座標値+78;
//	$Y座標値=$Y座標値+102;
//	CreateTexture("coilphone2_窓/coilphone2_欄/通話終了", 10601, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話着信有り2.png");
//	SetAlias("coilphone2_窓/coilphone2_欄/通話終了", "coilphone2_窓/coilphone2_欄/通話終了");
//	Fade("coilphone2_窓/coilphone2_欄/通話終了", 0, 0, null, true);

	$X座標値=$X座標値+115;
	$Y座標値=$Y座標値+218;
	CreateTexture("coilphone2_窓/coilphone2_欄/通話終了", 10601, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話着信有り3.png");
	SetAlias("coilphone2_窓/coilphone2_欄/通話終了", "coilphone2_窓/coilphone2_欄/通話終了");
	Fade("coilphone2_窓/coilphone2_欄/通話終了", 0, 0, null, true);

//	Fade("coilphone2_窓/coilphone2_call_種類*", 0, 0, null, false);

	Fade("coilphone2_窓/coilphone2_欄/演出枠", 0, 0, null, false);

	Fade("coilphone2_窓/coilphone2_call_幅/演出色１", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_call_幅/演出色２", 0, 0, null, false);

	Fade("coilphone2_窓/発信終了", 0, 0, null, false);
	Fade("coilphone2_窓/発信開始", 0, 1000, null, false);

	Fade("coilphone2_窓/coilphone2_欄/枠*", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 600, null, false);
	Fade("coilphone2_窓/coilphone2_欄/通話*", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_欄/窓/*", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_欄/通話終了", 0, 1000, null, true);
}

..▽通信エラー
function CoilPhone2_Error(){
	Request("coilphone2_call_ダウンロードプロセス", Stop);
	Request("coilphone2_call_ダウンロードプロセス２", Stop);
	Request("coilphone2_call_ダウンロードプロセス３", Stop);
	Request("@coilphone2_窓/coilphone2_欄/表示*", Erase);

	CreateSE("coilsound2_phone0","se物体_コイル_通信遮断01");
	SetVolumeEX("coilsound2_phone_call", 0, 0, null);
	MusicStart("coilsound2_phone0",0,700,0,1000,null,false);


	Position("coilphone2_窓",$X座標値,$Y座標値);

//	$X座標値=$X座標値+78;
//	$Y座標値=$Y座標値+102;
//	CreateTexture("coilphone2_窓/coilphone2_欄/通話終了", 10601, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話着信有り2.png");
//	SetAlias("coilphone2_窓/coilphone2_欄/通話終了", "coilphone2_窓/coilphone2_欄/通話終了");
//	Fade("coilphone2_窓/coilphone2_欄/通話終了", 0, 0, null, true);

	CreateProcess("coilphone2_error_ダウンロードプロセス", 150, 0, 0, "CoilError2Pro1");
	SetAlias("coilphone2_error_ダウンロードプロセス", "coilphone2_error_ダウンロードプロセス");

	$X座標値=$X座標値+67;
	$Y座標値=$Y座標値+102;
	CreateTexture("coilphone2_窓/coilphone2_欄/エラー", 10601, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話エラー.png");
	SetAlias("coilphone2_窓/coilphone2_欄/エラー", "coilphone2_窓/coilphone2_欄/エラー");
	Fade("coilphone2_窓/coilphone2_欄/エラー", 0, 0, null, true);

	CreateTexture("coilphone2_窓/coilphone2_欄/エラー２", 10601, $X座標値, $Y座標値, "cg/sys/coil/phone/コイル電話エラー2.png");
	SetAlias("coilphone2_窓/coilphone2_欄/エラー２", "coilphone2_窓/coilphone2_欄/エラー２");
	Request("coilphone2_窓/coilphone2_欄/エラー２", SubRender);
	Fade("coilphone2_窓/coilphone2_欄/エラー２", 0, 0, null, true);


	Fade("coilphone2_窓/coilphone2_call_種類*", 0, 0, null, false);

	Fade("coilphone2_窓/coilphone2_欄/演出枠", 0, 0, null, false);

	Fade("coilphone2_窓/coilphone2_call_幅/演出色１", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_call_幅/演出色２", 0, 0, null, false);

	Fade("coilphone2_窓/発信終了", 0, 0, null, false);
	Fade("coilphone2_窓/発信開始", 0, 1000, null, false);/////////

	Fade("coilphone2_窓/coilphone2_欄/人物*", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_欄/枠*", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_欄/通話*", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_欄/窓/*", 0, 0, null, false);
	Fade("coilphone2_窓/coilphone2_欄/エラー", 0, 1000, null, true);

	Request("coilphone2_error_ダウンロードプロセス", Start);
}











.■電話２『着信セット』
..▽電話着信有りセット（10600）
function CoilPhone2_MissSet($coilphone2X,$coilphone2Y){

	if(!$CoilPhone2){
		CoilPhone2Base();
	}else{
		Position("coilphone2_窓",$coilphone2X,$coilphone2Y);
	}

//――――――――――――――――――――――――――――――――――
	$coilphone2_missnut1="coilphone2_窓/coilphone2_欄/coilphone2_miss_着信有り";
	$coilphone2_missnut1a="coilphone2_miss_着信有り";
	$coilphone2_missnut2="coilphone2_窓/coilphone2_欄/coilphone2_miss_着信有り２";
	$coilphone2_missnut2a="coilphone2_miss_着信有り２";

	$coilphone2_misspro="CoilMiss2Pro1";

	CreateProcess("coilphone2_miss_ダウンロードプロセス", 150, 0, 0, $coilphone2_misspro);
	SetAlias("coilphone2_miss_ダウンロードプロセス", "coilphone2_miss_ダウンロードプロセス");

	//▽着信あり
	$coilphone2_missX1=$coilphone2X+78;
	$coilphone2_missY1=$coilphone2Y+102;
	CreateTexture($coilphone2_missnut1, 10601, $coilphone2_missX1, $coilphone2_missY1, "cg/sys/coil/phone/コイル電話着信有り.png");
	SetAlias($coilphone2_missnut1, $coilphone2_missnut1a);

	CreateTexture($coilphone2_missnut2, 10601, $coilphone2_missX1, $coilphone2_missY1, "cg/sys/coil/phone/コイル電話着信有り2.png");
	SetAlias($coilphone2_missnut2, $coilphone2_missnut2a);
	Fade($coilphone2_missnut2, 0, 0, null, true);
	Request($coilphone2_missnut2, AddRender);

	//―――――――――――――――――――――――――――
	//調整
	if(!$CoilPhone2){
		Move("coilphone2_窓/*", 0, @0, @-375, null, false);
		Move("coilphone2_窓/*/*", 0, @0, @-375, null, false);
		Move("coilphone2_窓/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone2_発信終了", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone2_発信開始", 0, 0, 0, Dxl1, false);

		Fade("@coilphone2_発信開始", 0, 0, null, true);
		Fade("@coilphone2_発信終了", 0, 0, null, true);
		Fade("@coilphone2_発信プロ*", 0, 0, null, true);
	
		Fade("@coilphone2_ベース３", 0, 0, null, false);
		Fade("coilphone2_窓/ベース", 0, 750, null, true);
	
		SetVertex("@coilphone2_ベース", 143, 0);
		Zoom("@coilphone2_ベース", 0, 1200, 1000, null, true);//ここだけちがう
		Fade("@coilphone2_ベース", 0, 0, null, true);
	}else{
		Fade("coilphone2_窓/coilphone2_欄/coilphone2_miss_着信有り", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/coilphone2_miss_着信有り２", 0, 0, null, true);
	}

	//se物体_コイル_システムメール新着
	CreateSE("coilsound2_phone24","se物体_コイル_システムメール展開");

	$CoilPhone2=true;
}



..▽着信有り表示
function CoilPhone2_MissFade(){

	if(!$coilphone2ON){
	//■ベースがなかった場合（通常演出）
		MusicStart("coilsound2_phone1",0,700,0,1000,null,false);

		Fade("@coilphone2_miss_演出色１", 0, 0, Axl1, false);
	
		Zoom("@coilphone2_ベース", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone2_演出", 0, 350, null, false);
	//	Zoom("coilphone2_演出", 200, 1500, 200, null, false);
	
	//	Fade("coilphone2_窓/ベース２", 300, 500, null, false);
	//	Fade("coilphone2_窓/ベース", 300, 1000, null, false);
	//	Move("coilphone2_窓/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone2_窓/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone2_演出", 0, 350, null, false);
		Zoom("coilphone2_演出", 150, 1500, 200, null, false);
	
		Fade("coilphone2_窓/ベース２", 200, 500, null, false);
	//	Fade("coilphone2_窓/ベース", 200, 1000, null, false);
		Move("coilphone2_窓/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_窓/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_窓/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphone2ON=true;
		CoilBlack();
	
		Fade("@coilphone2_発信プロ開始", 0, 1000, null, false);
		Fade("coilphone2_演出", 0, 1000, null, true);
	
		Fade("coilphone2_窓/ベース", 200, 1000, null, false);
		Fade("coilphone2_窓/ベース２", 200, 0, null, false);
		Fade("@coilphone2_ベース３", 200, 1000, null, false);
	
		Fade("coilphone2_演出", 500, 0, Axl2, false);
		Zoom("coilphone2_演出", 200, 1000, 1000, null, false);
	
		Move("coilphone2_窓/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_窓/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_窓/*", 500, @0, @339, Dxl1, false);
	
		Fade("@coilphone2_発信プロ開始", 300, 0, null, false);
		Fade("@coilphone2_発信開始", 400, 1000, null, false);
		Zoom("@coilphone2_発信終了", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone2_発信開始", 400, 1000, 1000, Dxl1, false);

	
		Move("coilphone2_窓/マスク２", 500, @0, @-373, null, false);
		Zoom("@coilphone2_ベース３", 500, 1000, 1200, Axl1, false);
	
		Request("coilphone2_miss_ダウンロードプロセス", Start);
	//	Request("coilphone2_ダウンロードプロセス", Start);

	}else{
	//■ベースが合った場合（置換演出）
		Request("coilphone2_*", Stop);
		//Request("@coilphone2_窓/coilphone2_欄/表示*", Erase);

		MusicStart("coilsound2_phone24",0,700,0,1000,null,false);

		Position("coilphone2_窓",$X座標値,$Y座標値);
	
		$X座標値=$X座標値+78;
		$Y座標値=$Y座標値+102;

		Move("coilphone2_窓/coilphone2_欄/coilphone2_miss_着信有り", 0, $X座標値, $Y座標値, null, false);
		Move("coilphone2_窓/coilphone2_欄/coilphone2_miss_着信有り２", 0, $X座標値, $Y座標値, null, false);

		Fade("coilphone2_窓/coilphone2_call_幅/演出色１", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_call_幅/演出色２", 0, 0, null, false);

		Fade("coilphone2_窓/coilphone2_call_種類*", 0, 0, null, false);
		Fade("coilphone2_窓/発信*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/*/*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/coilphone2_miss_着信有り", 0, 1000, null, false);
		Request("coilphone2_miss_ダウンロードプロセス", Start);
	}


}


function CoilMiss2Pro1(){
	while(1){
		Fade("@coilphone2_miss_着信有り２", 1000, 700, null, true);
		Fade("@coilphone2_miss_着信有り２", 1000, 0, null, true);
	}
}





















.■電話２『エラーセット』
..▽電話エラーセット（10600）
function CoilPhone2_ErrorSet($coilphone2X,$coilphone2Y){

	if(!$CoilPhone2){
		CoilPhone2Base();
	}else{
		Position("coilphone2_窓",$coilphone2X,$coilphone2Y);
	}

//――――――――――――――――――――――――――――――――――
	CreateProcess("coilphone2_error_ダウンロードプロセス", 150, 0, 0, "CoilError2Pro1");
	SetAlias("coilphone2_error_ダウンロードプロセス", "coilphone2_error_ダウンロードプロセス");

	//▽着信あり
	$coilphone2X=$coilphone2X+67;
	$coilphone2Y=$coilphone2Y+102;
	CreateTexture("coilphone2_窓/coilphone2_欄/エラー", 10601, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/コイル電話エラー.png");
	SetAlias("coilphone2_窓/coilphone2_欄/エラー", "coilphone2_窓/coilphone2_欄/エラー");
	CreateTexture("coilphone2_窓/coilphone2_欄/エラー２", 10601, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/コイル電話エラー2.png");
	SetAlias("coilphone2_窓/coilphone2_欄/エラー２", "coilphone2_窓/coilphone2_欄/エラー２");
	Request("coilphone2_窓/coilphone2_欄/エラー２", SubRender);
	Fade("coilphone2_窓/coilphone2_欄/エラー２", 0, 0, null, true);

	//―――――――――――――――――――――――――――
	//調整
	if(!$CoilPhone2){
		Move("coilphone2_窓/*", 0, @0, @-375, null, false);
		Move("coilphone2_窓/*/*", 0, @0, @-375, null, false);
		Move("coilphone2_窓/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone2_発信終了", 0, 1000, 0, Dxl1, false);
		Zoom("@coilphone2_発信開始", 0, 1000, 0, Dxl1, false);

		Fade("@coilphone2_発信開始", 0, 0, null, true);
		Fade("@coilphone2_発信終了", 0, 0, null, true);
		Fade("@coilphone2_発信プロ*", 0, 0, null, true);
	
		Fade("@coilphone2_ベース３", 0, 0, null, false);
		Fade("coilphone2_窓/ベース", 0, 750, null, true);
	
		SetVertex("@coilphone2_ベース", 143, 0);
		Zoom("@coilphone2_ベース", 0, 1200, 1000, null, true);//ここだけちがう
		Fade("@coilphone2_ベース", 0, 0, null, true);
	}else{
		Fade("coilphone2_窓/coilphone2_欄/エラー", 0, 0, null, true);
	}

	//se物体_コイル_システムメール新着
	CreateSE("coilsound2_phone0","se物体_コイル_通信遮断01");

	$CoilPhone2=true;
}


..▽着信有り表示
function CoilPhone2_ErrorFade(){

	if(!$coilphone2ON){
	//■ベースがなかった場合（通常演出）
		MusicStart("coilsound2_phone1",0,700,0,1000,null,false);

		Fade("@coilphone2_error_演出色１", 0, 0, Axl1, false);
	
		Zoom("@coilphone2_ベース", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone2_演出", 0, 350, null, false);
	//	Zoom("coilphone2_演出", 200, 1500, 200, null, false);
	
	//	Fade("coilphone2_窓/ベース２", 300, 500, null, false);
	//	Fade("coilphone2_窓/ベース", 300, 1000, null, false);
	//	Move("coilphone2_窓/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone2_窓/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone2_演出", 0, 350, null, false);
		Zoom("coilphone2_演出", 150, 1500, 200, null, false);
	
		Fade("coilphone2_窓/ベース２", 200, 500, null, false);
	//	Fade("coilphone2_窓/ベース", 200, 1000, null, false);
		Move("coilphone2_窓/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_窓/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_窓/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphone2ON=true;
		CoilBlack();
	
//		Fade("@coilphone2_発信プロ開始", 0, 1000, null, false);//エラーだからね
		Fade("coilphone2_演出", 0, 1000, null, true);
	
		Fade("coilphone2_窓/ベース", 200, 1000, null, false);
		Fade("coilphone2_窓/ベース２", 200, 0, null, false);
		Fade("@coilphone2_ベース３", 200, 1000, null, false);
	
		Fade("coilphone2_演出", 500, 0, Axl2, false);
		Zoom("coilphone2_演出", 200, 1000, 1000, null, false);
	
		Move("coilphone2_窓/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_窓/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_窓/*", 500, @0, @339, Dxl1, false);
	
//		Fade("@coilphone2_発信プロ開始", 300, 0, null, false);//エラーだからね
//		Fade("@coilphone2_発信開始", 400, 1000, null, false);//エラーだからね
		Zoom("@coilphone2_発信終了", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone2_発信開始", 400, 1000, 1000, Dxl1, false);


		Move("coilphone2_窓/マスク２", 500, @0, @-373, null, false);
		Zoom("@coilphone2_ベース３", 500, 1000, 1200, Axl1, false);
	
		Request("coilphone2_error_ダウンロードプロセス", Start);

	}else{
	//■ベースが合った場合（置換演出）
		Request("coilphone2_*", Stop);
		Request("@coilphone2_窓/coilphone2_欄/表示*", Erase);
	
		Position("coilphone2_窓",$X座標値,$Y座標値);
	
		$X座標値=$X座標値+67;
		$Y座標値=$Y座標値+102;
		Move("coilphone2_窓/coilphone2_欄/エラー", 0, $X座標値, $Y座標値, null, false);

		SetVolumeEX("coilsound2_phone_call", 0, 0, null);
		MusicStart("coilsound2_phone0",0,700,0,1000,null,false);
	
		Fade("coilphone2_窓/coilphone2_欄/演出枠", 0, 0, null, false);
	
		Fade("coilphone2_窓/coilphone2_call_幅/演出色１", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_call_幅/演出色２", 0, 0, null, false);

	
//		Fade("coilphone2_窓/発信終了", 0, 0, null, false);
//		Fade("coilphone2_窓/発信開始", 0, 1000, null, false);
	
//		Fade("coilphone2_窓/coilphone2_欄/人物*", 0, 0, null, false);
//		Fade("coilphone2_窓/coilphone2_欄/枠*", 0, 0, null, false);
//		Fade("coilphone2_窓/coilphone2_欄/デフォ*", 0, 0, null, false);
//		Fade("coilphone2_窓/coilphone2_欄/通話*", 0, 0, null, false);
//		Fade("coilphone2_窓/coilphone2_欄/窓/*", 0, 0, null, false);
//		Fade("coilphone2_窓/coilphone2_欄/エラー", 0, 1000, null, true);

		Fade("coilphone2_窓/coilphone2_call_種類*", 0, 0, null, false);
		Fade("coilphone2_窓/発信*", 0, 0, null, false);
		if($coilphone2Error){
			Fade("coilphone2_窓/発信開始", 0, 1000, null, false);//エラーだからね
			$coilphone2Error=false;
		}
		Fade("coilphone2_窓/coilphone2_欄/*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/*/*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/エラー", 0, 1000, null, false);

		Request("coilphone2_error_ダウンロードプロセス", Start);
	}

}


function CoilError2Pro1(){
	while(1){
		Fade("@coilphone2_窓/coilphone2_欄/エラー２", 1000, 400, null, true);
		Fade("@coilphone2_窓/coilphone2_欄/エラー２", 1000, 0, null, true);
	}
}



..▽ノイズ
function CoilBug2Set(){

	CreateTexture("coilphone2_窓/coilphone2_欄/ノイズ１", 11000, 0, 0, "cg/data/noize_01_00_0.png");
	SetAlias("coilphone2_窓/coilphone2_欄/ノイズ１", "coilphone2_窓/coilphone2_欄/ノイズ１");
	Request("coilphone2_窓/coilphone2_欄/ノイズ１", OverlayRender);
	SetTone("coilphone2_窓/coilphone2_欄/ノイズ１", Monochrome);

	CreateTexture("coilphone2_窓/coilphone2_欄/ノイズ２", 11000, 0, 0, "cg/data/noize_01_00_0.png");
	SetAlias("coilphone2_窓/coilphone2_欄/ノイズ２", "coilphone2_窓/coilphone2_欄/ノイズ２");
	Request("coilphone2_窓/coilphone2_欄/ノイズ２", OverlayRender);
	SetTone("coilphone2_窓/coilphone2_欄/ノイズ２", Monochrome);


	Zoom("@coilphone2_窓/coilphone2_欄/ノイズ１", 0, 1500, 1500, null, false);
	Zoom("@coilphone2_窓/coilphone2_欄/ノイズ２", 0, 1500, 1500, null, false);

	Rotate("coilphone2_窓/coilphone2_欄/ノイズ２", 0, @180, @0, @0, null, true);
	Fade("coilphone2_窓/coilphone2_欄/ノイズ*", 0, 0, null, true);

	CreateProcess("coilphone2_bug_ダウンロードプロセス", 150, 0, 0, "CoilBug2Pro");
	SetAlias("coilphone2_bug_ダウンロードプロセス", "coilphone2_bug_ダウンロードプロセス");

	$CoilBug2Fade=300;
}

function CoilBug2Fade(){
	Move("@coilphone2_窓/coilphone2_欄/ノイズ*", 0, 0, 0, null, true);
	Request("coilphone2_bug_ダウンロードプロセス", Start);
}

function CoilBug2Pro(){

	$CoilBug2Time=100;
	$CoilBug2Wait=50;

	while(1){

		Move("@coilphone2_窓/coilphone2_欄/ノイズ１", 0, 50, 0, null, false);
		Move("@coilphone2_窓/coilphone2_欄/ノイズ２", 0, -50, 0, null, false);

		Fade("@coilphone2_窓/coilphone2_欄/ノイズ２", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ１", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ１", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ２", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);

		Fade("@coilphone2_窓/coilphone2_欄/ノイズ２", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ１", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ１", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ２", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);

//		$CoilBug2Temp=Random(3);
//		Wait($CoilBug2Temp);

		Move("@coilphone2_窓/coilphone2_欄/ノイズ１", 0, -50, 0, null, false);
		Move("@coilphone2_窓/coilphone2_欄/ノイズ２", 0, 50, 0, null, false);

		Fade("@coilphone2_窓/coilphone2_欄/ノイズ２", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ１", $CoilBug2Time, $CoilBug2Fade, null, true);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ１", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ２", $CoilBug2Time, $CoilBug2Fade, null, true);

		Fade("@coilphone2_窓/coilphone2_欄/ノイズ２", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ１", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ１", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_窓/coilphone2_欄/ノイズ２", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);

//		$CoilBug2Temp=Random(3);
//		Wait($CoilBug2Temp);
	}

}























.■電話２『着信履歴セット』
..▽着歴一覧セット（10600）
function CoilPhone2_RaceSet($coilphone2X, $coilphone2Y){
//382
//103
	$CoilRece2Now=$CoilRece2Count;

	if(!$CoilPhone2){
		CoilPhone2Base();
	}else{
		Position("coilphone2_窓",$coilphone2X,$coilphone2Y);
	}

//――――――――――――――――――――――――――――――――――
	CreateProcess("coilphone2_rece_ダウンロードプロセス", 150, 0, 0, "CoilRace2Pro");
	SetAlias("coilphone2_rece_ダウンロードプロセス", "coilphone2_rece_ダウンロードプロセス");


	$coilphone2_receX7=$coilphone2X+10;
	$coilphone2_receY7=$coilphone2Y+300;
	CreateTexture("coilphone2_窓/coilphone2_欄/coilphone2_rece_選択", 10600, $coilphone2_receX7, $coilphone2_receY7, "cg/sys/coil/phone/コイル電話一覧_選択_セレクト.png");//10010
	SetAlias("coilphone2_窓/coilphone2_欄/coilphone2_rece_選択", "coilphone2_rece_選択");
	Request("coilphone2_窓/coilphone2_欄/coilphone2_rece_選択", AddRender);
	Fade("coilphone2_窓/coilphone2_欄/coilphone2_rece_選択", 0, 0, null, true);


	$CoilPreX=$coilphone2X;
	$CoilPreY=$coilphone2Y;

	$CoilTemp=$CoilRece2Count;
	while(0<$CoilTemp){

		//▽超えちゃいけないライン
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+57;
		$coiltempnut="coilphone2_窓/coilphone2_欄/チェック"+$CoilTemp;
		if(VariableValue($,"CoilRece2通話"+$CoilTemp)){
			CreateTexture($coiltempnut, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_通話有り.png");//10090
		}else{
			CreateTexture($coiltempnut, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_通話無し.png");//10090
		}
		SetAlias($coiltempnut, $coiltempnut);

		//▽矢印
		$coiltempX=$CoilPreX+228;
		$coiltempY=$CoilPreY+64;
		$coiltempnut="coilphone2_窓/coilphone2_欄/矢印"+$CoilTemp;
		CreateTexture($coiltempnut, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_アイコン.png");//10090
		SetAlias($coiltempnut, $coiltempnut);
		Request($coiltempnut, AddRender);

		//▽人物
		SetFont("ＭＳ ゴシック", 20, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut2="coilphone2_窓/coilphone2_欄/テキスト窓"+$CoilTemp;
		CreateWindow($coiltempnut2, 10601, $coiltempX, $coiltempY, 156, 45, false);//10090//163,45
		SetAlias($coiltempnut2, $coiltempnut2);

		$coiltempnut=$coiltempnut2+"/人物"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece2人物"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilRece2人物"+$CoilTemp));
		CreateText($coiltempnut, 10601, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut, $coiltempnut);
		Request($coiltempnut, NoLog);

/*
		SetFont("ＭＳ ゴシック", 20, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut="coilphone2_窓/coilphone2_欄/人物"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece2人物"+$CoilTemp);
		CreateText($coiltempnut, 10601, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut, $coiltempnut);
*/

		$CoilPreY+=43;
		$CoilTemp--;
	}
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilphone2_窓/coilphone2_欄/*", PushText);
	Request("coilphone2_窓/coilphone2_欄/*/*", PushText);


	$coilphone2X5=$coilphone2X+25;
	$coilphone2X6=$coilphone2X+12;
	$coilphone2Y6=$coilphone2Y+56;
	CreateWindow("coilphone2_窓/coilphone2_rece_幅", 20000, $coilphone2X6, $coilphone2Y6, 263, 233, false);
	SetAlias("coilphone2_窓/coilphone2_rece_幅", "coilphone2_rece_幅");

	CreateColor("coilphone2_窓/coilphone2_rece_幅/演出色１", 10602, $coilphone2X5, $coilphone2Y6, 72, 300, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone2_窓/coilphone2_rece_幅/演出色１", "coilphone2_rece_演出色１");
	Request("coilphone2_窓/coilphone2_rece_幅/演出色１", AddRender);
	Fade("@coilphone2_rece_演出色１", 0, 150, null, false);


	//―――――――――――――――――――――――――――
	//調整
	if(!$CoilPhone2){
		Move("coilphone2_窓/*", 0, @0, @-375, null, false);
		Move("coilphone2_窓/*/*", 0, @0, @-375, null, false);
		Move("coilphone2_窓/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("coilphone2_窓/coilphone2_欄", 0, 0, 1000, null, false);
		Move("coilphone2_窓/coilphone2_欄", 0, @0, @-100, null, false);
		Move("coilphone2_窓/coilphone2_欄/*", 0, @0, @-100, null, false);
		Move("coilphone2_窓/coilphone2_欄/*/*", 0, @-300, @-100, null, true);
	
		Zoom("@coilphone2_発信終了", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone2_発信開始", 0, 0, 0, Dxl1, false);

		Fade("@coilphone2_発信開始", 0, 0, null, true);
		Fade("@coilphone2_発信終了", 0, 0, null, true);
		Fade("@coilphone2_発信プロ*", 0, 0, null, true);
	
		Fade("@coilphone2_ベース３", 0, 0, null, false);
		Fade("coilphone2_窓/ベース", 0, 750, null, true);
	
		SetVertex("@coilphone2_ベース", 143, 0);
		Zoom("@coilphone2_ベース", 0, 1200, 1000, null, true);//ここだけちがう
		Fade("@coilphone2_ベース", 0, 0, null, true);

	}else{
		Fade("coilphone2_窓/coilphone2_欄/coilphone2_rece_選択", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_rece_幅/演出色１", 0, 0, null, false);

		Fade("coilphone2_窓/coilphone2_欄/チェック*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/矢印*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/テキスト窓*/人物*", 0, 0, null, false);


//		Move("coilphone2_窓", 0, @0, @0, null, false);
//		Move("coilphone2_窓/ベース", 0, @0, @0, null, false);
//		Move("coilphone2_窓/ベース２", 0, @0, @0, null, false);
//		Move("coilphone2_窓/黒", 0, @0, @0, null, false);
//		Move("coilphone2_窓/マスク２", 0, @0, @0, null, false);
//		Move("coilphone2_窓/マスク２/ベース３", 0, @0, @0, null, false);
	
//		Move("coilphone2_演出", 0, @0, @0, null, false);
//		Move("coilphone2_消去", 0, @0, @0, null, false);
//		Move("coilphone2_窓/発信開始", 0, @0, @0, null, false);
//		Move("coilphone2_窓/発信プロ開始", 0, @0, @0, null, false);
//		Move("coilphone2_窓/発信終了", 0, @0, @0, null, false);
//		Move("coilphone2_窓/発信プロ終了", 0, @0, @0, null, false);
	
//		Move("coilphone2_窓/coilphone2_欄", 0, @0, @0, null, false);

	}

	CreateSE("coilsound2_phone14","se物体_コイル_システムリスト展開");

	$CoilPhone2=true;
}


..▽着歴一覧表示
function CoilPhone2_RaceFade(){

	if(!$coilphone2ON){
	//■ベースがなかった場合（通常演出）
		MusicStart("coilsound2_phone1",0,700,0,1000,null,false);

		Zoom("@coilphone2_ベース", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone2_演出", 0, 350, null, false);
	//	Zoom("coilphone2_演出", 200, 1500, 200, null, false);
	
	//	Fade("coilphone2_窓/ベース２", 300, 500, null, false);
	//	Fade("coilphone2_窓/ベース", 300, 1000, null, false);
	//	Move("coilphone2_窓/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone2_窓/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone2_演出", 0, 350, null, false);
		Zoom("coilphone2_演出", 150, 1500, 200, null, false);
	
		Fade("coilphone2_窓/ベース２", 200, 500, null, false);
	//	Fade("coilphone2_窓/ベース", 200, 1000, null, false);
		Move("coilphone2_窓/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_窓/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_窓/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphone2ON=true;
		CoilBlack();
	
		Fade("@coilphone2_発信プロ開始", 0, 1000, null, false);
		Fade("coilphone2_演出", 0, 1000, null, true);
	
		Fade("coilphone2_窓/ベース", 200, 1000, null, false);
		Fade("coilphone2_窓/ベース２", 200, 0, null, false);
		Fade("@coilphone2_ベース３", 200, 1000, null, false);
	
		Fade("coilphone2_演出", 500, 0, Axl2, false);
		Zoom("coilphone2_演出", 200, 1000, 1000, null, false);
	
		Move("coilphone2_窓/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_窓/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_窓/*", 500, @0, @339, Dxl1, false);
	
		Fade("@coilphone2_発信プロ開始", 300, 0, null, false);
		Fade("@coilphone2_発信開始", 400, 1000, null, false);
		Zoom("@coilphone2_発信終了", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone2_発信開始", 400, 1000, 1000, Dxl1, false);


		Fade("@coilphone2_rece_演出色１", 400, 0, Axl1, false);
		Zoom("@coilphone2_rece_演出色１", 500, 4000, 1000, Dxl1, false);
	

		Move("coilphone2_窓/マスク２", 500, @0, @-373, null, false);
		Zoom("@coilphone2_ベース３", 500, 1000, 1200, Axl1, false);
	
		Zoom("coilphone2_窓/coilphone2_欄", 400, 1000, 1000, null, false);
	
		Move("coilphone2_窓/coilphone2_欄", 500, @0, @439, Dxl1, false);
		Move("coilphone2_窓/coilphone2_欄/*", 500, @0, @439, Dxl1, false);
		Move("coilphone2_窓/coilphone2_欄/*/*", 500, @300, @439, Dxl1, false);
	
		Request("coilphone2_rece_ダウンロードプロセス", Start);
		Request("coilphone2_ダウンロードプロセス", Start);

	}else{
	//■ベースが合った場合（置換演出）
		Request("coilphone2_*", Stop);
		//Request("@coilphone2_窓/coilphone2_欄/表示*", Erase);

		Position("coilphone2_窓",$X座標値元,$Y座標値元);
		$X座標値=$X座標値元+21;
		$Y座標値=$Y座標値元+57;

		$coiltempnut="coilphone2_窓/coilphone2_欄/チェック"+$CoilRece2Count;
		Position($coiltempnut,$X座標値2,$Y座標値2);

		$X移動座標値=$X座標値-$X座標値2;
		$Y移動座標値=$Y座標値-$Y座標値2;
		Move("coilphone2_窓/coilphone2_欄/チェック*", 0, @$X移動座標値, @$Y移動座標値, null, false);
		Move("coilphone2_窓/coilphone2_欄/矢印*", 0, @$X移動座標値, @$Y移動座標値, null, false);
		Move("coilphone2_窓/coilphone2_欄/テキスト窓*", 0, @$X移動座標値, @$Y移動座標値, null, false);
		Move("coilphone2_窓/coilphone2_欄/テキスト窓*/人物*", 0, @$X移動座標値, @$Y移動座標値, null, false);

		$X座標値3=$X座標値元+25;
		$X座標値4=$X座標値元+12;
		$Y座標値4=$Y座標値元+56;
		Move("coilphone2_窓/coilphone2_rece_幅", 0, $X座標値4, $Y座標値4, null, false);
		Move("coilphone2_窓/coilphone2_rece_幅/演出色１", 0, $X座標値3, $Y座標値4, null, false);

		$X座標値5=$X座標値元+10;
		$Y座標値5=$Y座標値元+300;
		Move("coilphone2_窓/coilphone2_欄/coilphone2_rece_選択", 0, $X座標値5, $Y座標値5, null, false);

		$X座標値6=$X座標値元+25;
		$Y座標値6=$Y座標値元+294;
		Move("coilphone2_窓/発信*", 0, $X座標値6, $Y座標値6, null, false);


		MusicStart("coilsound2_phone14",0,700,0,1000,null,false);


		Fade("coilphone2_窓/coilphone2_call_幅/演出色１", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_call_幅/演出色２", 0, 0, null, false);

		Fade("coilphone2_窓/coilphone2_call_種類*", 0, 0, null, false);
		Fade("coilphone2_窓/発信*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/*", 0, 0, null, false);
		Fade("coilphone2_窓/coilphone2_欄/*/*", 0, 0, null, false);

		Fade("coilphone2_窓/発信開始", 0, 1000, null, false);

		Fade("coilphone2_窓/coilphone2_欄/チェック*", 0, 1000, null, false);
		Fade("coilphone2_窓/coilphone2_欄/矢印*", 0, 1000, null, false);
		Fade("coilphone2_窓/coilphone2_欄/テキスト窓*/人物*", 0, 1000, null, false);

		Request("coilphone2_rece_ダウンロードプロセス", Start);
		Request("coilphone2_ダウンロードプロセス", Start);

	}

}


..▽着歴リアルタイム追加
function CoilRece2Add2($CoilRece2番号,$CoilRece2人物,$CoilRece2通話){

	$TempCoilRece2=1;
	while($CoilRece2Count>=$TempCoilRece2){
		if(VariableValue($,"CoilRece2番号"+$TempCoilRece2)==$CoilRece2番号){
			return;
		}
		$TempCoilRece2++;
	}

	WaitAction("@coilphone2_ベース３", null);
//	WaitAction("@coilphone2_ベース", null);

	$CoilRece2Count++;

	VariableValue($,$CoilRece2番号+"_num",$CoilRece2Count);
//
	VariableValue($,$CoilRece2番号+"_人物",$CoilRece2人物);
	VariableValue($,$CoilRece2番号+"_通話",$CoilRece2通話);
//
	VariableValue($,"CoilRece2人物"+$CoilRece2Count,$CoilRece2人物);
	VariableValue($,"CoilRece2通話"+$CoilRece2Count,$CoilRece2通話);
	VariableValue($,"CoilRece2番号"+$CoilRece2Count,$CoilRece2番号);


	$CoilTemp=$CoilRece2Count;

	Position("@coilphone2_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数-43;

		//▽超えちゃいけないライン
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+57;
		$coiltempnut1="coilphone2_窓/coilphone2_欄/チェック"+$CoilTemp;
		if(VariableValue($,"CoilRece2通話"+$CoilTemp)){
			CreateTexture($coiltempnut1, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_通話有り.png");//10090
		}else{
			CreateTexture($coiltempnut1, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_通話無し.png");//10090
		}
		SetAlias($coiltempnut1, $coiltempnut1);

		//▽矢印
		$coiltempX=$CoilPreX+228;
		$coiltempY=$CoilPreY+64;
		$coiltempnut3="coilphone2_窓/coilphone2_欄/矢印"+$CoilTemp;
		CreateTexture($coiltempnut3, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/コイル電話一覧_アイコン.png");//10090
		SetAlias($coiltempnut3, $coiltempnut3);
		Request($coiltempnut3, AddRender);
		Request($coiltempnut3, Erase);

		//▽人物
		SetFont("ＭＳ ゴシック", 20, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnutW="coilphone2_窓/coilphone2_欄/テキスト窓"+$CoilTemp;
		CreateWindow($coiltempnutW, 10601, $coiltempX, $coiltempY, 163, 45, false);//10090
		SetAlias($coiltempnutW, $coiltempnutW);

		$coiltempnut2=$coiltempnutW+"/人物"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece2人物"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilRece2人物"+$CoilTemp));
		CreateText($coiltempnut2, 10601, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut2, $coiltempnut2);
		Request($coiltempnut2, NoLog);

/*
		SetFont("ＭＳ ゴシック", 20, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut2="coilphone2_窓/coilphone2_欄/人物"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece2人物"+$CoilTemp);
		CreateText($coiltempnut2, 10601, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut2, $coiltempnut2);
*/

	//▽演出
	$coiltempX=$CoilPreX+21-50;
	$coiltempY=$CoilPreY+56;
	$coiltempnut6="coilphone2_窓/coilphone2_欄/演出"+$CoilTemp;
	CreateTexture($coiltempnut6, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/メール新規演出.png");//10090
	SetAlias($coiltempnut6, $coiltempnut6);
//	Request($coiltempnut6, AddRender);
//	Request($coiltempnut6, MulRender);
	Request($coiltempnut6, OverlayRender);
	Zoom($coiltempnut6, 0, 1500, 1000, null, false);


	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilphone2_窓/coilphone2_欄/*", PushText);
	Request("coilphone2_窓/coilphone2_欄/*/*", PushText);


//	CreateProcess("coilphone2_rece_ダウンロードプロセス", 150, 0, 0, "CoilRace2Pro");
//	SetAlias("coilphone2_rece_ダウンロードプロセス", "coilphone2_rece_ダウンロードプロセス");

	CreateSE("coilsound2_phone15","se物体_コイル_システムメール追加");
	MusicStart("coilsound2_phone15",0,700,0,1000,null,false);

	if($coilrace2Soon){

		Fade($coiltempnut1, 0, 1000, null, false);
		Fade($coiltempnut2, 0, 1000, null, false);
		Fade($coiltempnut3, 0, 1000, null, false);

		if($CoilRece2Now==($CoilRece2Count-1)){
			$CoilRece2Now=$CoilRece2Count;

		}else{
			$CoilRece2Move=(-($CoilRece2Count-$CoilRece2Now-1))*43;
	
			Move($coiltempnutW, 0, @0, @$CoilRece2Move, Dxl1, true);
			Move($coiltempnut1, 0, @0, @$CoilRece2Move, Dxl1, true);
			Move($coiltempnut2, 0, @0, @$CoilRece2Move, Dxl1, true);
			Move($coiltempnut3, 0, @0, @$CoilRece2Move, Dxl1, true);

			$CoilMailNow=$CoilMailNow+1;
		}

		Request($coiltempnut3, Enter);

		Move("coilphone2_窓/coilphone2_欄/*", 200, @0, @43, Dxl1, false);
		Move("coilphone2_窓/coilphone2_欄/*/*", 200, @0, @43, Dxl1, true);

		$coilrace2Soon=false;
	}else if($CoilRece2Now==($CoilRece2Count-1)){
		Fade($coiltempnut1, 0, 0, null, true);
		Fade($coiltempnut2, 0, 0, null, true);
		Fade($coiltempnut3, 0, 0, null, true);

		Move("coilphone2_窓/coilphone2_欄/*", 150, @0, @43, Dxl1, false);
		Move("coilphone2_窓/coilphone2_欄/*/*", 150, @0, @43, Dxl1, true);
	
		Zoom($coiltempnut6, 500, 250, 1000, null, false);
		Fade($coiltempnut6, 500, 500, null, false);
		Move($coiltempnut6, 600, @350, @0, null, false);
	
		Fade($coiltempnut1, 300, 1000, null, 150);
		Fade($coiltempnut2, 300, 1000, null, 150);
		Request($coiltempnut3, Enter);
		Fade($coiltempnut3, 300, 1000, null, true);
//		Fade($coiltempnut4, 200, 1000, null, 100);
//		Fade($coiltempnut5, 200, 1000, null, true);

		$CoilRece2Now=$CoilRece2Count;

	}else{
		Fade($coiltempnut1, 0, 0, null, true);
		Fade($coiltempnut2, 0, 0, null, true);
		Fade($coiltempnut3, 0, 0, null, true);

		$CoilRece2Move=(-($CoilRece2Count-$CoilRece2Now-1))*43;

		Fade($coiltempnut1, 0, 1000, null, false);
		Fade($coiltempnut2, 0, 1000, null, false);
		Fade($coiltempnut3, 0, 1000, null, false);
//		Fade($coiltempnut4, 0, 1000, null, false);
//		Fade($coiltempnut5, 0, 1000, null, false);

		Move($coiltempnutW, 0, @0, @$CoilRece2Move, Dxl1, true);
		Move($coiltempnut1, 0, @0, @$CoilRece2Move, Dxl1, true);
		Move($coiltempnut2, 0, @0, @$CoilRece2Move, Dxl1, true);
		Move($coiltempnut3, 0, @0, @$CoilRece2Move, Dxl1, true);
//		Move($coiltempnut4, 0, @0, @$CoilRece2Move, Dxl1, true);
//		Move($coiltempnut5, 0, @0, @$CoilRece2Move, Dxl1, true);
//		Move($coiltempnut6, 0, @0, @$CoilRece2Move, Dxl1, true);
//		Move($coilphone2_recepronut, 0, @0, @$CoilRece2Move, Dxl1, true);

		Request($coiltempnut3, Enter);
	}

//	Request("coilphone2_rece_ダウンロードプロセス", Start);
}

function CoilRace2Pro(){
	while(1){
		Fade("@coilphone2_窓/coilphone2_欄/矢印*", 800, 700, null, true);
		Fade("@coilphone2_窓/coilphone2_欄/矢印*", 1200, 0, null, true);
		Wait(400);
		Fade("@coilphone2_窓/coilphone2_欄/矢印*", 800, 700, null, true);
		Fade("@coilphone2_窓/coilphone2_欄/矢印*", 1200, 0, null, true);
		Wait(400);
	}
}

function CoilRace2Pro_Call(){
	while(1){
		Fade("@coilphone2_発信プロ開始", 400, 700, null, true);
		Fade("@coilphone2_発信プロ開始", 800, 0, null, true);
		Wait(200);
		Fade("@coilphone2_発信プロ開始", 400, 700, null, true);
		Fade("@coilphone2_発信プロ開始", 800, 0, null, true);
		Wait(200);
	}
}




..▽着歴一覧移動
function CoilRace2Move($CoilRece2番号,$CoilRace2Time){

	WaitAction("@coilphone2_ベース３", null);
//	WaitAction("@coilphone2_ベース", null);

	Position("@coilphone2_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilphone2_ベース３", 0, 0, null, false);
	Zoom("@coilphone2_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilphone2_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);

	$CoilRece2New=VariableValue($,$CoilRece2番号+"_num");
	$CoilRece2New2=$CoilRece2New;
	$CoilRece2New+=2;

	if($CoilRece2Count<6){
		$CoilRece2Now=$CoilRece2New;
	}else if($CoilRece2New<6){
		$CoilRece2New=5;
	}else if($CoilRece2New>$CoilRece2Count){
		$CoilRece2New=$CoilRece2Count;
	}

	CoilRace2MoveMacro();
}

function CoilRace2Move2($CoilRace2Num,$CoilRace2Time){

	Position("@coilphone2_窓",$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX=$X座標値格納変数;
	$CoilPreY=$Y座標値格納変数;

	Fade("@coilphone2_ベース３", 0, 0, null, false);
	Zoom("@coilphone2_ベース３", 0, 1000, 1000, Dxl2, true);
	Move("coilphone2_窓/マスク２", 0, $CoilPreX, $CoilPreY, null, true);


	$CoilRece2New=$CoilRece2Count-($CoilRace2Num-1);//どの番号？
	$CoilRece2New2=$CoilRece2New;


	CoilRace2MoveMacro();
}

function CoilRace2MoveMacro(){
	$CoilRece2Temp=$CoilRece2Now-$CoilRece2New;
	$CoilRece2Move=(-$CoilRece2Temp)*43;
	$CoilRace2Time2=$CoilRace2Time/2;
	$CoilRace2Time3=$CoilRace2Time/5*2;
	$CoilRace2Time4=$CoilRace2Time/5*3;

	$coiltempnut="coilphone2_窓/coilphone2_欄/チェック"+$CoilRece2New2;
	Position($coiltempnut,$X座標値格納変数,$Y座標値格納変数);
	$CoilPreX2=$X座標値格納変数;
	$CoilPreY2=$Y座標値格納変数;
	$CoilPreY2+=$CoilRece2Move;

	CreateSE("coilsound2_phone22","se物体_コイル_システムメール移動");
	MusicStart("coilsound2_phone22",0,700,0,1000,null,false);

	if($CoilRece2Move==0){
		Move("coilphone2_窓/coilphone2_欄/*", $CoilRace2Time, @0, @$CoilRece2Move, Dxl1, false);
		Move("coilphone2_窓/coilphone2_欄/*/*", $CoilRace2Time, @0, @$CoilRece2Move, Dxl1, false);
		Move("@coilphone2_rece_選択", $CoilRace2Time, $CoilPreX2, $CoilPreY2, Dxl1, false);

		Zoom("@coilphone2_rece_選択", $CoilRace2Time4, 1200, 1200, Dxl1, false);
		Fade("@coilphone2_rece_選択", $CoilRace2Time4, 100, null, true);

		Zoom("@coilphone2_rece_選択", $CoilRace2Time3, 1000, 1000, Dxl1, false);
		Fade("@coilphone2_rece_選択", $CoilRace2Time3, 500, Axl1, true);

	}else{
		if($CoilRece2Temp>5){
			$CoilRece2Move2=$CoilPreY+300;
		}else if($CoilRece2Temp<-5){
			$CoilRece2Move2=$CoilPreY-50;
		}else{
			$CoilRece2Move5=$CoilRece2Temp*8;

			if($CoilRece2Move5>30){
				$CoilRece2Move5=30;
			}else if($CoilRece2Move5<-30){
				$CoilRece2Move5=-30;
			}
			$CoilRece2Move2=$CoilPreY2+$CoilRece2Move5;
		}

		$CoilRece2Move4=$CoilRece2Temp*4;
		if($CoilRece2Move4>20){
			$CoilRece2Move4=20;
		}else if($CoilRece2Move4<-20){
			$CoilRece2Move4=-20;
		}
		$CoilRece2Move3=$CoilRece2Move-$CoilRece2Move4;


		//ズーム
		$CoilRece2Zoom=2000*$CoilRece2Temp;
		if($CoilRece2Zoom<0){$CoilRece2Zoom=-$CoilRece2Zoom;}
		if($CoilRece2Zoom>8000){
			$CoilRece2Zoom=8000;
		}

//		$CoilRece2Zoom=8000;

		Fade("@coilphone2_rece_選択", $CoilRace2Time3, 0, null, false);///////////100

		Move("coilphone2_窓/coilphone2_欄/*", $CoilRace2Time4, @0, @$CoilRece2Move3, Axl1, false);
		Move("coilphone2_窓/coilphone2_欄/*/*", $CoilRace2Time4, @0, @$CoilRece2Move3, Axl1, false);

		Zoom("@coilphone2_rece_選択", $CoilRace2Time3, 1200, $CoilRece2Zoom, Dxl1, false);
//		Move("@coilphone2_rece_選択", $CoilRace2Time3, $CoilPreX2, $CoilRece2Move2, Dxl3, false);
		Move("@coilphone2_rece_選択", $CoilRace2Time4, $CoilPreX2, $CoilPreY2, Dxl1, false);

		WaitAction("coilphone2_窓/coilphone2_欄/*/*", null);


		Move("coilphone2_窓/coilphone2_欄/*", $CoilRace2Time3, @0, @$CoilRece2Move4, Dxl2, false);
		Move("coilphone2_窓/coilphone2_欄/*/*", $CoilRace2Time3, @0, @$CoilRece2Move4, Dxl2, false);
	
		Zoom("@coilphone2_rece_選択", $CoilRace2Time3, 1000, 1000, Dxl1, false);
//		Move("@coilphone2_rece_選択", $CoilRace2Time3, $CoilPreX2, $CoilPreY2, Axl1, false);
		Move("@coilphone2_rece_選択", 0, $CoilPreX2, $CoilPreY2, Dxl1, false);
		Fade("@coilphone2_rece_選択", $CoilRace2Time3, 500, Axl1, true);
	}

	$CoilRece2Now=$CoilRece2New;
}











.■ノイズコイル
..▽基本セット
function CoilNoizeSet(){
	$coildownpriON=true;//CoilDownSetPri用

	CreateWindow("coilnoize_窓", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_窓", "coilnoize_窓");

	CreateColor("coilnoize_窓/背景色", 10000, 170, 20, 684, 429, "BLACK");
	SetAlias("coilnoize_窓/背景色", "coilnoize_窓/背景色");
	Fade("coilnoize_窓/背景色", 0, 500, null, true);

	CreateWindow("coilnoize_窓/地図窓１", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_窓/地図窓１", "coilnoize_窓/地図窓１");
	CreateTexture("coilnoize_窓/地図窓１/地図", 10000, Center, Middle, "cg/ef/efマップ鶏泉_ノイズ_地図.png");
	SetAlias("coilnoize_窓/地図窓１/地図", "coilnoize_窓/地図窓１/地図");
	Request("coilnoize_窓/地図窓１/地図", Smoothing);

	CreateWindow("coilnoize_窓/地図窓２", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_窓/地図窓２", "coilnoize_窓/地図窓２");
	CreateTexture("coilnoize_窓/地図窓２/地図", 10000, Center, Middle, "cg/ef/efマップ鶏泉_ノイズ_地図.png");
	SetAlias("coilnoize_窓/地図窓２/地図", "coilnoize_窓/地図窓２/地図");
	Request("coilnoize_窓/地図窓２/地図", Smoothing);

	CreateWindow("coilnoize_窓/地図窓３", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_窓/地図窓３", "coilnoize_窓/地図窓３");
	CreateTexture("coilnoize_窓/地図窓３/グリッド", 10000, Center, Middle, "cg/ef/efマップ鶏泉_ノイズ_グリッド.png");
	SetAlias("coilnoize_窓/地図窓３/グリッド", "coilnoize_窓/地図窓３/グリッド");
	Request("coilnoize_窓/地図窓３/グリッド", Smoothing);

	Move("coilnoize_窓/地図窓*/地図", 0, @0, @-53.5, Axl1, true);
	Move("coilnoize_窓/地図窓*/グリッド", 0, @0, @-53.5, Axl1, true);


//	Request("coilnoize_窓/地図窓２/地図", AddRender);
//	SetShade("coilnoize_窓/地図窓２/地図", MEDIUM);


	CreateTexture("coilnoize_窓/地図枠", 10009, 166, 20, "cg/sys/coil/noize/地図枠.png");
	SetAlias("coilnoize_窓/地図枠", "coilnoize_窓/地図枠");
	CreateTexture("coilnoize_窓/矢印", 10009, Center, Middle, "cg/ef/efマップ鶏泉_ノイズ_マーカー.png");
	SetAlias("coilnoize_窓/矢印", "coilnoize_窓/矢印");
//	Request("coilnoize_窓/矢印", OverlayRender);
	Request("coilnoize_窓/矢印", AddRender);

	//=============================================================
	CreateTexture("coilnoize_窓/緑バー", 10015, 166, 15, "cg/sys/coil/noize/緑バー.png");
	SetAlias("coilnoize_窓/緑バ－", "coilnoize_窓/緑バ－");
	CreateTexture("coilnoize_窓/緑ボックス箱１", 10016, 242, 24, "cg/sys/coil/noize/ボックス1.png");
	SetAlias("coilnoize_窓/緑ボックス箱１", "coilnoize_窓/緑ボックス箱１");
	CreateTexture("coilnoize_窓/緑ボックス文１", 10016, 242, 24, "cg/sys/coil/noize/ボックス1_txt.png");
	SetAlias("coilnoize_窓/緑ボックス文１", "coilnoize_窓/緑ボックス文１");
	CreateTexture("coilnoize_窓/緑ボックス箱２", 10016, 332, 24, "cg/sys/coil/noize/ボックス2.png");
	SetAlias("coilnoize_窓/緑ボックス箱２", "coilnoize_窓/緑ボックス箱２");
	CreateTexture("coilnoize_窓/緑ボックス文２", 10016, 332, 24, "cg/sys/coil/noize/ボックス2_txt.png");
	SetAlias("coilnoize_窓/緑ボックス文２", "coilnoize_窓/緑ボックス文２");


	//=============================================================
	CreateMask("coilnoize_窓/白マスク", 200, 166, 15, "cg/sys/coil/noize/白バーマスク.png", false);
	SetAlias("coilnoize_窓/白マスク", "coilnoize_窓/白マスク");

	CreateTexture("coilnoize_窓/白マスク/白バ－", 10000, 170, 25, "cg/sys/coil/noize/白バ－.png");
	SetAlias("coilnoize_窓/白マスク/白バ－", "coilnoize_窓/白マスク/白バ－");
	CreateTexture("coilnoize_窓/白マスク/白フレーム１", 10001, 449, 41, "cg/sys/coil/noize/フレーム01.png");
	SetAlias("coilnoize_窓/白マスク/白フレーム１", "coilnoize_窓/白マスク/白フレーム１");
	CreateTexture("coilnoize_窓/白マスク/白フレーム２", 10001, 481, 41, "cg/sys/coil/noize/フレーム02.png");
	SetAlias("coilnoize_窓/白マスク/白フレーム２", "coilnoize_窓/白マスク/白フレーム２");
	CreateTexture("coilnoize_窓/白マスク/白フレーム３", 10001, 513, 41, "cg/sys/coil/noize/フレーム03.png");
	SetAlias("coilnoize_窓/白マスク/白フレーム３", "coilnoize_窓/白マスク/白フレーム３");
	CreateTexture("coilnoize_窓/白マスク/白フレーム４", 10001, 545, 41, "cg/sys/coil/noize/フレーム04.png");
	SetAlias("coilnoize_窓/白マスク/白フレーム４", "coilnoize_窓/白マスク/白フレーム４");

	CreateTexture("coilnoize_窓/白マスク/白ボックス箱", 10001, 292, 42, "cg/sys/coil/noize/ボックス3.png");
	SetAlias("coilnoize_窓/白マスク/白ボックス箱", "coilnoize_窓/白マスク/白ボックス箱");
	CreateTexture("coilnoize_窓/白マスク/白ボックス文", 10001, 266, 42, "cg/sys/coil/noize/ボックス3_txt.png");
	SetAlias("coilnoize_窓/白マスク/白ボックス文", "coilnoize_窓/白マスク/白ボックス文");

	CreateTexture("coilnoize_窓/白マスク/白三角１", 10001, 460, 39, "cg/sys/coil/noize/下三角.png");
	SetAlias("coilnoize_窓/白マスク/白三角１", "coilnoize_窓/白マスク/白三角１");
	CreateTexture("coilnoize_窓/白マスク/白三角２", 10001, 492, 39, "cg/sys/coil/noize/下三角.png");
	SetAlias("coilnoize_窓/白マスク/白三角２", "coilnoize_窓/白マスク/白三角２");
	CreateTexture("coilnoize_窓/白マスク/白三角３", 10001, 524, 39, "cg/sys/coil/noize/下三角.png");
	SetAlias("coilnoize_窓/白マスク/白三角３", "coilnoize_窓/白マスク/白三角３");
	CreateTexture("coilnoize_窓/白マスク/白三角４", 10001, 556, 39, "cg/sys/coil/noize/下三角.png");
	SetAlias("coilnoize_窓/白マスク/白三角４", "coilnoize_窓/白マスク/白三角４");

	CreateWindow("coilnoize_窓/白マスク/白窓", 10001, 292, 42, 53, 6, false);
	SetAlias("coilnoize_窓/白マスク/白窓", "coilnoize_窓/白マスク/白窓");

	CreateColor("coilnoize_窓/白マスク/白窓/色", 10010, 292, 42, 53, 6, "24ff24");
	SetAlias("coilnoize_窓/白マスク/白窓/色", "coilnoize_窓/白マスク/白窓/色");
	Request("coilnoize_窓/白マスク/白窓/色", AddRender);
	Move("coilnoize_窓/白マスク/白窓/色", 0, @-56, @0, null, true);


	CreateProcess("coilnoize_ダウンロードプロセス", 150, 0, 0, "CoilNoizePro");
	SetAlias("coilnoize_ダウンロードプロセス", "coilnoize_ダウンロードプロセス");


	CreateColor("coilnoize_窓/演出色１", 10000, 0, 0, 1024, 576, "24ff24");
	SetAlias("coilnoize_窓/演出色１", "coilnoize_窓/演出色１");
	Request("coilnoize_窓/演出色１", AddRender);
	CreateColor("coilnoize_窓/演出色２", 10010, 0, 0, 1024, 576, "WHITE");
	SetAlias("coilnoize_窓/演出色２", "coilnoize_窓/演出色２");
	Request("coilnoize_窓/演出色２", AddRender);


	Fade("coilnoize_*", 0, 0, null, true);
	Fade("coilnoize_*/*", 0, 0, null, true);
	Fade("coilnoize_*/*/*", 0, 0, null, true);
	//=============================================================


//ウサギ演出
	CreateTexture("coilnoize_ウサギモドキ１", 10100, 1024, Middle, "cg/bu/buAMウサギモドキ_通常_normal.png");
	SetAlias("coilnoize_ウサギモドキ１", "coilnoize_ウサギモドキ１");
	Rotate("coilnoize_ウサギモドキ１", 0, @0, @-180, @0, null, true);
	CreateTexture("coilnoize_ウサギモドキ２", 10099, 1024, Middle, "cg/sys/coil/noize/usagi01.png");
	SetAlias("coilnoize_ウサギモドキ２", "coilnoize_ウサギモドキ２");
	Rotate("coilnoize_ウサギモドキ２", 0, @0, @-180, @0, null, true);
	Request("coilnoize_ウサギモドキ２", AddRender);
	Fade("coilnoize_ウサギモドキ２", 0, 0, null, true);

	CreateColor("coilnoize_色１", 10000, Center, 576, 100, 100, "24ff24");
	SetAlias("coilnoize_色１", "coilnoize_色１");
	Request("coilnoize_色１", AddRender);
	CreateColor("coilnoize_色２", 10000, Center, 576, 100, 100, "WHITE");
	SetAlias("coilnoize_色２", "coilnoize_色２");
	Request("coilnoize_色２", AddRender);



	CreateEffect("coilstart_板",9999,0,0,1024,576,"Plain");
	SetAlias("coilstart_板", "coilstart_板");
	Request("coilstart_板", Passive);
	SetShade("coilstart_板", MEDIUM);
	Fade("coilstart_板", 0, 0, null, false);

	CreateTexture("coilstart_色１", 9999, 0, 0, "cg/sys/coil/コイル出現_ノイズ.png");
	SetAlias("coilstart_色１", "coilstart_色１");
	Fade("coilstart_色１", 0, 0, null, false);
	Request("coilstart_色１", AddRender);

	CreateColor("coilstart_色２", 9999, 0, 237, 1024, 50, "24ff24");//WHITE
	SetAlias("coilstart_色２", "coilstart_色２");
	Fade("coilstart_色２", 0, 0, null, false);
	Request("coilstart_色２", AddRender);

	CreateColor("coilstart_色３", 9999, 0, 237, 1024, 80, "24ff24");//WHITE
	SetAlias("coilstart_色３", "coilstart_色３");
	Fade("coilstart_色３", 0, 0, null, false);
	Request("coilstart_色３", AddRender);

	CreateColor("coilstart_色５", 9999, 0, 237, 1024, 10, "WHITE");//WHITE
	SetAlias("coilstart_色５", "coilstart_色５");
	Fade("coilstart_色５", 0, 0, null, false);
	Request("coilstart_色５", AddRender);

	CreateSE("coilsound_start","se物体_コイル_システム展開");

	CreateSE("coilsound_noize01","se物体_コイル_システムメール展開");//se擬音_コミカル_ポイ01
	CreateSE("coilsound_noize02","se物体_コイル_ゲージ溜まる03L");
	CreateSE("coilsound_noize03","se物体_コイル_システムメール新着");
	CreateSE("coilsound_noize04","se物体_コイル_システム展開");

	CreateSE("coilsound_noize00","se物体_コイル_システム画像展開");


	//=============================================================
	Zoom("coilnoize_窓", 0, 1000, 0, Dxl2, true);
	Fade("coilnoize_窓/演出色１", 0, 300, null, true);

	Move("coilnoize_窓/背景色", 0, @0, @-576, Axl1, true);
	Move("coilnoize_窓/地図枠", 0, @0, @-576, Axl1, true);


}



function CoilNoizeFade(){

	//▽音関連
	MusicStart("coilsound_noize01",0,700,0,1000,null,false);
	//▽音関連
	MusicStart("coilsound_noize02",1900,800,0,1000,Axl2,true);

//ウサギ展開
	BezierMove("coilnoize_ウサギモドキ１", 1800, (@0,@0){@-620,@0}{@-620,@0}(@-620,@500), DxlAxl, false);
	BezierMove("coilnoize_ウサギモドキ２", 1800, (@0,@0){@-620,@0}{@-620,@0}(@-620,@400), DxlAxl, false);
	Rotate("coilnoize_ウサギモドキ*", 2000, @0, @0, 1200, Axl2, false);
	Wait(1200);
	DrawTransition("coilnoize_ウサギモドキ２", 700, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Fade("coilnoize_ウサギモドキ２", 700, 1000, null, true);
//	WaitAction("coilnoize_ウサギモドキ*", null);

	//▽音関連
	MusicStart("coilsound_noize03",0,1200,0,1000,null,false);
	MusicStart("coilsound_noize02",300,0,0,500,null,false);

	MusicStart("coilsound_noize00",0,1000,0,1000,null,false);


	Fade("coilnoize_色２", 0, 0, null, true);
	Zoom("coilnoize_色*", 0, 3000, 20, Dxl1, true);

	DrawTransition("coilstart_色１", 1000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);

	Rotate("coilnoize_色*", 450, @360, @0, @0, null, false);
	Move("coilnoize_色*", 500, @0, @-390, Dxl1, false);
	Fade("coilnoize_色２", 500, 500, null, false);

	Zoom("coilnoize_色*", 300, 20, 3000, Dxl1, true);

	Fade("coilstart_板", 150, 500, null, false);
	Zoom("coilstart_板", 800, 1100, 1100, Dxl1, false);

	Zoom("coilnoize_色*", 150, 6800, 20, Dxl1, true);

//	WaitKey();

	//▽音関連
	MusicStart("coilsound_start",0,700,0,700,null,false);
	MusicStart("coilsound_noize04",0,700,0,1000,null,false);

	Fade("coilstart_色１", 0, 300, null, false);
	Fade("coilstart_色２", 0, 200, null, false);
	Fade("coilstart_色３", 0, 300, null, false);
	Fade("coilstart_色５", 0, 500, null, true);

	Fade("coilstart_板", 500, 0, null, false);

	Move("coilstart_色５", 500, @0, 576, null, false);
	Move("coilstart_色３", 400, @0, -100, null, false);
	Move("coilstart_色２", 400, @0, -100, null, false);

	Fade("coilstart_色１", 500, 0, null, false);
	Fade("coilstart_色２", 500, 0, null, false);
	Fade("coilstart_色３", 500, 0, null, false);
	Fade("coilstart_色５", 500, 0, null, false);

	Fade("coilnoize_色*", 300, 0, null, false);
	Zoom("coilnoize_色*", 500, 6800, 4200, Dxl2, false);

	DrawTransition("coilnoize_窓/演出色１", 500, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Fade("coilnoize_窓/演出色１", 500, 0, Axl2, false);
	Zoom("coilnoize_窓", 500, 1000, 1000, Dxl2, false);

	Fade("coilnoize_窓/緑*", 0, 500, null, false);

//	WaitAction("coilnoize_窓", null);

	Fade("coilnoize_窓/背景色", 0, 500, null, true);
	Fade("coilnoize_窓/地図枠", 0, 500, null, true);

	Move("coilnoize_窓/背景色", 600, @0, @576, Dxl1, false);
	Move("coilnoize_窓/地図枠", 600, @0, @576, Dxl1, false);

	Request("coilstart_板", Disused);
//	Request("coilstart_色１", Disused);
//	Request("coilstart_色２", Disused);
//	Request("coilstart_色３", Disused);
//	Request("coilstart_色４", Disused);
//	Request("coilstart_色５", Disused);

	WaitAction("coilnoize_窓/地図枠", null);
}


function CoilNoizeDO01(){

//	CreateSE("coilsound_start","se物体_コイル_システム展開");
//	CreateSE("coilsound_noize01","se物体_コイル_システムメール展開");//se擬音_コミカル_ポイ01
//	CreateSE("coilsound_noize02","se物体_コイル_ゲージ溜まる03L");
//	CreateSE("coilsound_noize03","se物体_コイル_システムメール新着");
//	CreateSE("coilsound_noize04","se物体_コイル_システム展開");


	//=============================================================
	CreateTexture("coilnoize_窓/緑ボックス箱１Ａ", 10016, 242, 24, "cg/sys/coil/noize/ボックス1.png");
	SetAlias("coilnoize_窓/緑ボックス箱１Ａ", "coilnoize_窓/緑ボックス箱１Ａ");
	Request("coilnoize_窓/緑ボックス箱１Ａ", AddRender);
	Fade("coilnoize_窓/緑ボックス箱１Ａ", 0, 0, null, true);

	CreateTexture("coilnoize_窓/緑ボックス文１Ａ", 10016, 242, 24, "cg/sys/coil/noize/ボックス1_txt.png");
	SetAlias("coilnoize_窓/緑ボックス文１Ａ", "coilnoize_窓/緑ボックス文１Ａ");
	Request("coilnoize_窓/緑ボックス文１Ａ", AddRender);
	Fade("coilnoize_窓/緑ボックス文１Ａ", 0, 0, null, true);


	Move("coilnoize_窓/白マスク/*", 0, @0, @-50, Dxl1, true);
	Fade("coilnoize_窓/白マスク/*", 0, 1000, null, false);

	Fade("coilnoize_窓/白マスク/白三角*", 0, 0, null, true);

	//▽音関連
	CreateSE("coilsound_noize05","se物体_コイル_システムメール移動");
	MusicStart("coilsound_noize05",0,500,0,1500,null,false);

	Fade("coilnoize_窓/緑ボックス箱１Ａ", 0, 500, null, false);
	Fade("coilnoize_窓/緑ボックス文１Ａ", 0, 500, null, true);

	//▽音関連
	CreateSE("coilsound_noize06","se物体_コイル_システムタッチ");
	MusicStart("coilsound_noize06",0,700,0,1000,null,false);

	Fade("coilnoize_窓/緑ボックス箱１Ａ", 400, 0, null, false);
	Move("coilnoize_窓/白マスク/*", 400, @0, @50, Dxl1, true);

}


function CoilNoizeDO02(){

//	WaitKey();
	//=============================================================

	//▽音関連
	CreateSE("coilsound_noize07","se物体_コイル_システムリスト展開");
	MusicStart("coilsound_noize07",0,400,0,1800,null,false);

	Fade("coilnoize_窓/白マスク/白三角*", 0, 0, null, false);
	Fade("coilnoize_窓/白マスク/白三角１", 0, 1000, null, true);
	Wait(200);

	//▽音関連
	CreateSE("coilsound_noize08","se物体_コイル_システムリスト展開");
	MusicStart("coilsound_noize08",0,400,0,1800,null,false);

	Fade("coilnoize_窓/白マスク/白三角*", 0, 0, null, false);
	Fade("coilnoize_窓/白マスク/白三角２", 0, 1000, null, true);
	Wait(200);

	//▽音関連
	CreateSE("coilsound_noize09","se物体_コイル_システムリスト展開");
	MusicStart("coilsound_noize09",0,400,0,1800,null,false);

	Fade("coilnoize_窓/白マスク/白三角*", 0, 0, null, false);
	Fade("coilnoize_窓/白マスク/白三角３", 0, 1000, null, true);
	Wait(200);

	//▽音関連
	CreateSE("coilsound_noize10","se物体_コイル_システムリスト展開");
	MusicStart("coilsound_noize10",0,400,0,1800,null,false);

	Fade("coilnoize_窓/白マスク/白三角*", 0, 0, null, false);
	Fade("coilnoize_窓/白マスク/白三角４", 0, 1000, null, true);
	Wait(200);

	//▽音関連
	CreateSE("coilsound_noize11","se物体_コイル_システムリスト展開");
	MusicStart("coilsound_noize11",0,400,0,1800,null,false);

	Fade("coilnoize_窓/白マスク/白三角*", 0, 0, null, false);
	Fade("coilnoize_窓/白マスク/白三角３", 0, 1000, null, true);
	Wait(200);


	CreateTexture("coilnoize_窓/白マスク/白フレーム３Ａ", 10001, 513, 41, "cg/sys/coil/noize/フレーム03.png");
	SetAlias("coilnoize_窓/白マスク/白フレーム３Ａ", "coilnoize_窓/白マスク/白フレーム３Ａ");
	Request("coilnoize_窓/白マスク/白フレーム３Ａ", AddRender);
	CreateTexture("coilnoize_窓/白マスク/白三角３Ａ", 10001, 524, 39, "cg/sys/coil/noize/下三角.png");
	SetAlias("coilnoize_窓/白マスク/白三角３Ａ", "coilnoize_窓/白マスク/白三角３Ａ");
	Request("coilnoize_窓/白マスク/白三角３Ａ", AddRender);

	CreateColor("coilnoize_窓/スキャン", 10010, 168, 0, 2, 576, "24ff24");
	SetAlias("coilnoize_窓/スキャン", "coilnoize_窓/スキャン");
	Request("coilnoize_窓/スキャン", AddRender);
	Fade("coilnoize_窓/スキャン", 0, 100, null, true);
	SetBlur("coilnoize_窓/スキャン", true, 2, 500, 50, true);

	Fade("coilnoize_窓/白マスク/白フレーム３Ａ", 0, 1000, null, false);
	Fade("coilnoize_窓/白マスク/白三角３Ａ", 0, 1000, null, true);


	Move("coilnoize_窓/地図窓１", 0, @-684, @0, Axl1, true);
	Move("coilnoize_窓/地図窓２", 0, @-684, @0, Axl1, true);
	Move("coilnoize_窓/地図窓３", 16, @-684, @0, Axl1, true);
	Zoom("coilnoize_窓/地図窓*/地図", 0, 350, 350, Dxl2, true);
	Zoom("coilnoize_窓/地図窓*/グリッド", 0, 350, 350, Dxl2, true);
	Fade("coilnoize_窓/地図窓１/地図", 0, 400, null, true);
	Fade("coilnoize_窓/地図窓２/地図", 0, 400, null, true);
	Fade("coilnoize_窓/地図窓*/グリッド", 0, 500, null, true);


	//▽音関連
	CreateSE("coilsound_noize12","se物体_コイル_システムメール移動");
	CreateSE("coilsound_noize13","se物体_コイル_システムメール追加");
	CreateSE("coilsound_noize14","se物体_コイル_ゲージ溜まる05L");
	MusicStart("coilsound_noize12",0,500,0,1500,null,false);
	MusicStart("coilsound_noize13",0,700,0,1000,null,false);
	MusicStart("coilsound_noize14",0,500,0,1000,null,true);



	Fade("coilnoize_窓/白マスク/白フレーム３Ａ", 400, 500, null, false);
	Fade("coilnoize_窓/白マスク/白三角３Ａ", 400, 0, null, false);

	Fade("coilnoize_窓/白マスク/白窓/色", 0, 200, null, true);
	Move("coilnoize_窓/白マスク/白窓/色", 2400, @53, @0, null, false);


	CreateSE("coilsound_noize15","se物体_コイル_システム画像展開");//
	MusicStart("coilsound_noize15",0,700,0,1200,null,false);

	DrawTransition("coilnoize_窓/地図窓１/地図", 0, 200, 200, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 800, @684, @0, null, false);
	Move("coilnoize_窓/地図窓３", 800, @684, @0, null, false);
	Move("coilnoize_窓/地図窓１", 800, @684, @0, null, true);
	//WaitKey();

	CreateSE("coilsound_noize16","se物体_コイル_システム画像展開");//
	MusicStart("coilsound_noize16",0,700,0,1200,null,false);

	Fade("coilnoize_窓/地図窓２/地図", 0, 800, null, true);
	Move("coilnoize_窓/スキャン", 0, 168, @0, null, true);
	DrawTransition("coilnoize_窓/地図窓２/地図", 0, 600, 600, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 800, @684, @0, null, false);
	Move("coilnoize_窓/地図窓１", 800, @684, @0, null, false);
	Move("coilnoize_窓/地図窓２", 800, @684, @0, null, true);
	//WaitKey();

	CreateSE("coilsound_noize17","se物体_コイル_システム画像展開");//
	MusicStart("coilsound_noize17",0,700,0,1200,null,false);

	Fade("coilnoize_窓/地図窓１/地図", 0, 1000, null, true);
	Move("coilnoize_窓/スキャン", 0, 168, @0, null, true);
	Move("coilnoize_窓/地図窓１", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_窓/地図窓１/地図", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 800, @684, @0, null, false);
	Move("coilnoize_窓/地図窓１", 800, @684, @0, null, false);
	Move("coilnoize_窓/地図窓２", 800, @684, @0, null, true);
	//WaitKey();

/*
	Move("coilnoize_窓/スキャン", 0, 168, @0, null, true);
	Move("coilnoize_窓/地図窓１", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_窓/地図窓１/地図", 0, 700, 700, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 150, @684, @0, null, false);
	Move("coilnoize_窓/地図窓１", 150, @684, @0, null, false);
	Move("coilnoize_窓/地図窓２", 150, @684, @0, null, true);
	//WaitKey();

	Move("coilnoize_窓/スキャン", 0, 168, @0, null, true);
	Move("coilnoize_窓/地図窓２", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_窓/地図窓２/地図", 0, 800, 900, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 150, @684, @0, null, false);
	Move("coilnoize_窓/地図窓１", 150, @684, @0, null, false);
	Move("coilnoize_窓/地図窓２", 150, @684, @0, null, true);
	//WaitKey();

	Move("coilnoize_窓/スキャン", 0, 168, @0, null, true);
	Move("coilnoize_窓/地図窓１", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_窓/地図窓１/地図", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 150, @684, @0, null, false);
	Move("coilnoize_窓/地図窓１", 150, @684, @0, null, false);
	Move("coilnoize_窓/地図窓２", 150, @684, @0, null, true);
	//WaitKey();
*/


	Fade("coilnoize_窓/地図窓*/グリッド", 0, 1000, null, true);
	Fade("coilnoize_窓/白マスク/白窓/色", 0, 1000, null, true);
	Fade("coilnoize_窓/演出色１", 0, 100, null, true);
	Fade("coilnoize_窓/スキャン", 0, 0, null, true);

	Move("@coilnoize_窓/矢印", 0, 469, 105, null, true);

	//▽音関連
	CreateSE("coilsound_noize18","se物体_コイル_システム画像切り替え");
	MusicStart("coilsound_noize18",0,700,0,1000,null,false);

	SetVolumeEX("coilsound_noize14", 100, 0, null);

	Fade("coilnoize_窓/地図窓２/地図", 0, 0, null, true);
	DrawTransition("coilnoize_窓/地図窓２/地図", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", true);
	Move("coilnoize_窓/地図窓２", 0, @-684, @0, null, true);
	Request("coilnoize_窓/地図窓２/地図", AddRender);

	Fade("coilnoize_窓/演出色１", 300, 0, null, true);

	Request("coilnoize_ダウンロードプロセス", Start);

}


	//=============================================================

	//CoilNoizeMove(1,500,1000,100,Dxl1,true);
	//WaitKey();

	//CoilNoizeMove(1,500,-1000,-100,Dxl1,true);
	//WaitKey();
	//=============================================================


function CoilNoizeDO03(){

	CreateWindow("coilnoize_窓/クリア１", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_窓/クリア１", "coilnoize_窓/クリア１");
	CreateTexture("coilnoize_窓/クリア１/地図", 10000, Center, -38, "cg/ef/efマップ鶏泉_クリア.jpg");
	SetAlias("coilnoize_窓/クリア１/地図", "coilnoize_窓/クリア１/地図");
	Request("coilnoize_窓/クリア１/地図", Smoothing);

	CreateWindow("coilnoize_窓/クリア２", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_窓/クリア２", "coilnoize_窓/クリア２");
	CreateTexture("coilnoize_窓/クリア２/地図", 10000, Center, -38, "cg/ef/efマップ鶏泉_クリア.jpg");
	SetAlias("coilnoize_窓/クリア２/地図", "coilnoize_窓/クリア２/地図");
	Request("coilnoize_窓/クリア２/地図", Smoothing);

	Move("coilnoize_窓/スキャン", 0, 168, @0, null, true);
	Fade("coilnoize_窓/スキャン", 0, 100, null, true);

	Move("coilnoize_窓/クリア１", 0, @-684, @0, Axl1, true);
	Move("coilnoize_窓/クリア２", 0, @-684, @0, Axl1, true);
	Zoom("coilnoize_窓/クリア*/地図", 0, 600, 600, Dxl2, true);
	Fade("coilnoize_窓/クリア１/地図", 0, 800, null, true);
	Fade("coilnoize_窓/クリア２/地図", 0, 800, null, true);

	Move("coilnoize_窓/白マスク/白窓/色", 0, 236, @0, null, false);
	Fade("coilnoize_窓/白マスク/白窓/色", 0, 200, null, true);

//////////////////////////////////////////////////////////////////////////////

	//▽音関連
	CreateSE("coilsound_noize20","se物体_コイル_システムメール移動");
	CreateSE("coilsound_noize21","se物体_コイル_システムメール追加");
	CreateSE("coilsound_noize22","se物体_コイル_ゲージ溜まる04L");
	MusicStart("coilsound_noize20",0,500,0,1500,null,false);
	MusicStart("coilsound_noize21",0,700,0,1000,null,false);
	MusicStart("coilsound_noize22",0,700,0,400,null,true);



	CreateSE("coilsound_noize23","se物体_コイル_システム画像展開");//
	MusicStart("coilsound_noize23",0,700,0,1200,null,false);


	Move("coilnoize_窓/白マスク/白窓/色", 2000, @53, @0, null, false);

	DrawTransition("coilnoize_窓/クリア１/地図", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 500, @684, @0, null, false);
	Move("coilnoize_窓/クリア３", 500, @684, @0, null, false);
	Move("coilnoize_窓/クリア１", 500, @684, @0, null, true);
	//WaitKey();

	CreateSE("coilsound_noize24","se物体_コイル_システム画像展開");//
	MusicStart("coilsound_noize24",0,700,0,1200,null,false);

	Fade("coilnoize_窓/クリア２/地図", 0, 600, null, true);
	Move("coilnoize_窓/スキャン", 0, 168, @0, null, true);
	DrawTransition("coilnoize_窓/クリア２/地図", 0, 800, 800, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 500, @684, @0, null, false);
	Move("coilnoize_窓/クリア１", 500, @684, @0, null, false);
	Move("coilnoize_窓/クリア２", 500, @684, @0, null, true);
	//WaitKey();

	CreateSE("coilsound_noize25","se物体_コイル_システム画像展開");//
	MusicStart("coilsound_noize25",0,700,0,1200,null,false);

	Fade("coilnoize_窓/クリア１/地図", 0, 300, null, true);
	Move("coilnoize_窓/スキャン", 0, 168, @0, null, true);
	Move("coilnoize_窓/クリア１", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_窓/クリア１/地図", 0, 400, 400, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 500, @684, @0, null, false);
	Move("coilnoize_窓/クリア１", 500, @684, @0, null, false);
	Move("coilnoize_窓/クリア２", 500, @684, @0, null, true);

	CreateSE("coilsound_noize26","se物体_コイル_システム画像展開");//
	MusicStart("coilsound_noize26",0,700,0,1200,null,false);

	Fade("coilnoize_窓/クリア２/地図", 0, 0, null, true);
	Move("coilnoize_窓/スキャン", 0, 168, @0, null, true);
	DrawTransition("coilnoize_窓/クリア２/地図", 0, 600, 600, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_窓/スキャン", 500, @684, @0, null, false);
	Move("coilnoize_窓/クリア１", 500, @684, @0, null, false);
	Move("coilnoize_窓/クリア２", 500, @684, @0, null, true);
	//WaitKey();


	//▽音関連
	CreateSE("coilsound_noize28","se物体_コイル_アラート");
	MusicStart("coilsound_noize28",0,700,0,1000,null,false);



	SetVolumeEX("coilsound_noize22", 100, 0, null);


	Fade("coilnoize_窓/白マスク/白窓/色", 0, 1000, null, true);
	Fade("coilnoize_窓/演出色１", 0, 100, null, true);
	Fade("coilnoize_窓/スキャン", 0, 0, null, true);


	Fade("coilnoize_窓/クリア２/地図", 0, 0, null, true);
	DrawTransition("coilnoize_窓/クリア２/地図", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", true);
	Move("coilnoize_窓/クリア２", 0, @-684, @0, null, true);
	Request("coilnoize_窓/クリア２/地図", AddRender);

	Fade("coilnoize_窓/演出色１", 300, 0, null, true);
}


function CoilNoizeDO04(){

	CreateColor("coilnoize_窓/選択色", 10000, 461, 104, 32, 32, "24ff24");//WHITE
	SetAlias("coilnoize_窓/選択色", "coilnoize_窓/選択色");
	Request("coilnoize_窓/選択色", AddRender);
	Fade("coilnoize_窓/選択色", 0, 0, null, true);

//	SetVolumeEX("coilsound_noize22", 100, 0, null);

	//▽音関連
	CreateSE("coilsound_noize30","se物体_コイル_システムメール削除");
	CreateSE("coilsound_noize31","se物体_コイル_システムクローズ");
	CreateSE("coilsound_noize33","se物体_コイル_システムオープン");
	MusicStart("coilsound_noize30",0,700,0,1500,null,false);
	MusicStart("coilsound_noize31",0,700,0,1500,null,false);
	MusicStart("coilsound_noize33",0,800,0,1000,null,false);

	Request("coilnoize_ダウンロードプロセス", Stop);
	Request("coilnoize_窓/矢印", Erase);

	Fade("coilnoize_窓/選択色", 0, 300, null, true);

	Fade("@coilnoize_窓/地図窓２/地図", 400, 0, null, false);
	Fade("coilnoize_窓/選択色", 400, 0, null, true);


	//▽音関連
//	CreateSE("coilsound_noize33","se物体_コイル_システムオープン");
//	MusicStart("coilsound_noize33",0,800,0,1000,null,false);
	CreateSE("coilsound_noize32","se物体_コイル_ゲージ溜まる01L");
	MusicStart("coilsound_noize32",0,400,0,500,null,true);


//	Zoom("coilnoize_窓/選択色", 500, 3000, 3000, Dxl1, false);
	Move("coilnoize_窓/選択色", 500, 496, 220, Dxl1, false);

	Move("coilnoize_窓/地図窓*/地図", 500, -373, -83, Dxl1, false);

	Zoom("coilnoize_窓/地図窓１/地図", 500, 1000, 1000, Dxl1, false);
	Zoom("coilnoize_窓/地図窓２/地図", 500, 1000, 1000, DxlAuto, false);

	Zoom("coilnoize_窓/地図窓*/グリッド", 500, 1000, 1000, Dxl1, false);

//9,570,370,32
//684,429
//2140,1350
		$noizewhilezoomX=1000;
		$noizewhilezoomY=1000;
		$noizewhilepreX=600;//1400,1200,600
		$noizewhilepreY=450;//875,750,375

		$noizewhile=1;
		$noizewhilezoomX=$noizewhilezoomX+($noizewhilepreX*$noizewhile);
		$noizewhilezoomY=$noizewhilezoomY+($noizewhilepreY*$noizewhile);
		Zoom("coilnoize_窓/選択色", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_窓/選択色", 0, 100, null, true);
		Fade("coilnoize_窓/選択色", 48, 0, null, true);

		$noizewhile++;
		$noizewhilezoomX=$noizewhilezoomX+($noizewhilepreX*$noizewhile);
		$noizewhilezoomY=$noizewhilezoomY+($noizewhilepreY*$noizewhile);
		Zoom("coilnoize_窓/選択色", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_窓/選択色", 0, 100, null, true);
		Fade("coilnoize_窓/選択色", 48, 0, null, true);

		$noizewhile++;
		$noizewhilezoomX=$noizewhilezoomX+($noizewhilepreX*$noizewhile);
		$noizewhilezoomY=$noizewhilezoomY+($noizewhilepreY*$noizewhile);
		Zoom("coilnoize_窓/選択色", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_窓/選択色", 0, 100, null, true);
		Fade("coilnoize_窓/選択色", 48, 0, null, true);

		$noizewhile++;
		$noizewhilezoomX=$noizewhilezoomX+($noizewhilepreX*$noizewhile);
		$noizewhilezoomY=$noizewhilezoomY+($noizewhilepreY*$noizewhile);
		Zoom("coilnoize_窓/選択色", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_窓/選択色", 0, 100, null, true);
		Fade("coilnoize_窓/選択色", 48, 0, null, true);

		$noizewhile++;
		$noizewhilezoomX=$noizewhilezoomX+($noizewhilepreX*$noizewhile);
		$noizewhilezoomY=$noizewhilezoomY+($noizewhilepreY*$noizewhile);
		Zoom("coilnoize_窓/選択色", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_窓/選択色", 0, 100, null, true);
		Fade("coilnoize_窓/選択色", 48, 0, null, true);

//	Fade("coilnoize_窓/選択色", 64, 500, null, true);

	WaitAction("coilnoize_窓/地図窓*/グリッド", null);

	//▽音関連
	//CreateSE("coilsound_noize34","se物体_コイル_システムアラート");
	//MusicStart("coilsound_noize34",0,700,0,1500,null,false);

	SetVolumeEX("coilsound_noize32", 50, 0, null);

	Move("coilnoize_窓/矢印", 0, 512, 215, Dxl1, true);
	Request("coilnoize_窓/矢印", Enter);
	Request("coilnoize_ダウンロードプロセス", Start);
}



function CoilNoizeDelete(){

	//▽音関連
	CreateSE("coilsound_noize41","se物体_コイル_システムクローズ");
	MusicStart("coilsound_noize41",0,700,0,1500,null,false);

//=============================================================
	Zoom("coilnoize_色*", 0, 6800, 250, null, true);
	Move("coilnoize_色*", 0, @0, 250, null, true);//233

//	Move("coilnoize_ウサギモドキ１", 2000, @-200, @0, Axl1, true);
	Rotate("coilnoize_ウサギモドキ１", 0, 0, 0, 0, null, true);
	Rotate("coilnoize_ウサギモドキ２", 0, 0, 0, 0, null, true);
	Fade("coilnoize_ウサギモドキ２", 0, 0, null, true);

	Request("coilnoize_ダウンロードプロセス", Stop);

	Move("coilnoize_窓/白*/*", 300, @0, @-50, Dxl1, true);
//////////////////////////////////
	//▽音関連
	CreateSE("coilsound_noize40","se物体_コイル_システム削除2");

	CreateSE("coilsound_noize00","se物体_コイル_システム画像展開");
	CreateSE("coilsound_noize01","se物体_コイル_システムメール展開");//se擬音_コミカル_ポイ01
	CreateSE("coilsound_noize02","se物体_コイル_ゲージ溜まる03L");
	CreateSE("coilsound_noize03","se物体_コイル_システムメール新着");
	CreateSE("coilsound_noize04","se物体_コイル_システムメール展開");
	CreateSE("coilsound_noize05","se物体_コイル_システム削除");


	//▽音関連
	MusicStart("coilsound_noize40",0,700,0,1000,null,false);


	DrawTransition("coilstart_色１", 1000, 1000, 0, 100, null, "cg/data/noize_01_00_0.png", false);
	DrawTransition("coilnoize_色１", 1000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);


	DrawTransition("coilnoize_窓/演出色１", 500, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	DrawTransition("coilnoize_窓/地図窓２/地図", 500, 1000, 0, 100, null, "cg/data/noize_01_00_0.png", false);

	Fade("coilnoize_窓/演出色１", 500, 300, null, false);
	Fade("coilnoize_窓/演出色２", 500, 100, null, false);
	Fade("coilnoize_窓/地図窓２/地図", 500, 500, null, false);

//////////////////////////////////

//	Fade("coilnoize_窓/演出色１", 500, 0, null, false);
//	Fade("coilnoize_窓/演出色２", 500, 0, null, false);

//	Zoom("coilnoize_窓/地図窓*/*", 500, 1000, 0, Dxl1, false);
//	Fade("coilnoize_窓/地図窓*/*", 500, 0, null, false);
	Fade("coilnoize_窓/白窓*/*", 500, 0, null, false);

//	Move("coilnoize_窓/*/*", 500, @0, @-350, AxlDxl, false);
	Move("coilnoize_窓/*", 500, @0, @-350, AxlDxl, false);
	Move("coilnoize_窓", 500, @0, @250, AxlDxl, false);
	Move("coilnoize_窓/緑*", 500, @0, @250, AxlDxl, false);

	Fade("coilstart_色１", 0, 100, null, false);
	Fade("coilstart_色２", 0, 200, null, false);
	Fade("coilstart_色３", 0, 300, null, false);
	Fade("coilstart_色５", 0, 500, null, true);

	Move("coilstart_色５", 500, @0, 237, null, false);//237
	Move("coilstart_色３", 400, @0, 237, null, false);//237
	Move("coilstart_色２", 400, @0, 237, null, false);//237

	Fade("coilstart_色１", 500, 0, null, false);
	Fade("coilstart_色２", 400, 0, null, false);
	Fade("coilstart_色３", 400, 0, null, false);
	Fade("coilstart_色５", 400, 0, null, false);

	Fade("coilnoize_窓/緑ボックス*", 500, 0, null, false);

	WaitAction("coilnoize_窓", null);

	//▽音関連
	MusicStart("coilsound_noize01",0,700,0,1000,null,false);//ポン
	//▽音関連
	MusicStart("coilsound_noize02",1900,400,0,1000,Axl2,true);//ノイズ
	//▽音関連
	MusicStart("coilsound_noize03",0,1200,0,1000,null,false);

	DrawTransition("coilnoize_ウサギモドキ２", 0, 700, 700, 100, null, "cg/data/noize_01_00_0.png", false);

	Rotate("coilnoize_ウサギモドキ*", 2000, @0, @0, 1200, Axl2, false);
	BezierMove("coilnoize_ウサギモドキ１", 1800, (@0,@0){@0,@-500}{@0,@-500}(@620,@-500), DxlAxl, false);//620
	BezierMove("coilnoize_ウサギモドキ２", 1800, (@0,@0){@0,@-450}{@0,@-420}(@620,@-420), DxlAxl, false);//620
	BezierMove("coilnoize_色*", 1000, (@0,@0){@0,400}{@0,400}(@50,300), Dxl1, false);

//	Move("coilnoize_色*", 300, @0, @-20, Dxl1, false);
	Fade("coilnoize_窓/緑バー", 300, 0, null, false);
	Fade("coilnoize_色１", 300, 700, null, false);
	Zoom("coilnoize_窓/緑バー", 300, 200, 1500, Dxl1, false);
	Zoom("coilnoize_色１", 300, 1000, 1000, Dxl1, true);
//	Wait(200);

	//▽音関連
	MusicStart("coilsound_noize00",0,1000,0,1000,null,false);//てんかい
	//▽音関連
	MusicStart("coilsound_noize05",0,500,0,1500,null,false);

//	Move("coilnoize_色*", 300, @0, @-500, Axl2, false);
	Fade("coilnoize_色２", 500, 500, null, false);

	Rotate("coilnoize_色*", 450, @360, @0, @0, null, false);
	Zoom("coilnoize_色*", 250, 20, 3000, Dxl1, true);
	Zoom("coilnoize_色*", 100, 20, 20, Dxl1, true);
	Fade("coilnoize_色*", 200, 0, null, false);
	Zoom("coilnoize_色*", 200, 3000, 20, Dxl1, true);

	Fade("coilnoize_ウサギモドキ２", 300, 1000, null, true);
	Fade("coilnoize_ウサギモドキ２", 300, 0, null, true);

	//▽音関連
	//MusicStart("coilsound_noize04",0,700,0,700,null,false);
	//▽音関連
	MusicStart("coilsound_noize02",300,0,0,1000,null,false);

	WaitMove("coilnoize_ウサギモドキ", null);
	WaitMove("coilnoize_ウサギモドキ２", null);

	WaitPlay("coilsound_noize02", null);

	CoilEnd();
}

function CoilNoizePro(){

	while(1){
		//Zoom("@coilnoize_窓/矢印", 0, 1000, 1000, Dxl1, true);
		//Zoom("@coilnoize_窓/矢印", 2500, 0, 0, null, false);

		Fade("@coilnoize_窓/矢印", 1000, 800, null, false);
		Fade("@coilnoize_窓/地図窓２/地図", 1000, 400, null, true);
		Fade("@coilnoize_窓/矢印", 1000, 0, null, false);
		Fade("@coilnoize_窓/地図窓２/地図", 1000, 0, null, true);
	}

}


function CoilNoizeMove($CoilPat,時間,$移動X,$移動Y,テンポ,待ち){

	if($CoilPat==1){
		$X1 = $移動X;
		$X2 = ($X1 / 5) * 6;
		$Y1 = $移動Y;
		$Y2 = ($Y1 / 5) * 6;
	
		BezierMove("coilnoize_*", 時間, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), テンポ, false);
		BezierMove("coilnoize_*/*", 時間, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), テンポ, false);
		BezierMove("coilnoize_*/*/*", 時間, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), テンポ, 待ち);
	}else if($CoilPat==2){
		$X1 = $移動X;
		$X2 = - $X1 / 4;
		$Y1 = $移動Y;
		$Y2 = - $Y1 / 4;
	
		BezierMove("coilnoize_*", 時間, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), テンポ, false);
		BezierMove("coilnoize_*/*", 時間, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), テンポ, false);
		BezierMove("coilnoize_*/*/*", 時間, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), テンポ, 待ち);
	}else if($CoilPat==3){
		Move("coilnoize_*", 時間,@$移動X,@$移動Y,テンポ,false);
		Move("coilnoize_*/*", 時間,@$移動X,@$移動Y,テンポ,false);
		Move("coilnoize_*/*/*", 時間,@$移動X,@$移動Y,テンポ,待ち);
	}

}













.★演出まとめ
..★dm1030・dm2030・dm3030・dm4030・dm5030
function CoilBank01a($CoilBgm){

//#MF_1030ムービー=true;
//#MF_1030ロゴ=true;

	SetVolumeEX($CoilBgm, 1000, 1, null);

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	CoilPictSet(303,16,"cg/ef/efコイル画像表示領域黒.png");
	//■⑤ダウンロード設置『CoilDownSet(X位置,Y位置)』
	//CoilDownSet(200,50);
	CoilDownSetPri(600,350,10000);

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑥画像表示１（通常表示）
	CoilPictFade();
	//○コイル待ち
	CoilWait();


	SoundPlay("@dm8bit001",0,450,true);


	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("1030ムービー","dx/mvdot103.ngs");
	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("1030ムービー");
	//○⑥画像描画待機秒数（ムービーとか）
	CoilPictWaitTime("1030ムービー",35000);

	if($CoilPictWaitSkipOn){
		SetStream($coilpictNum3, 25000);
	}

	//▼⑤ウンロード表示１（通常表示）
	CoilDownFade();
	//○⑤ウンロードスタート『CoilDownStart(秒数)』
	CoilDownStart(5000);
	//○⑤ウンロード完了
	CoilDownComp();
	Wait(2000);
	//×⑤ウンロード収納
	CoilDownDelete();


	//○コイル待ち
	CoilWait();
	//○⑥画像描画待機（ムービーとか）
	CoilPictWaitSkip("1030ムービー");

	SetVolumeEX("@dm8bit001", 1000, 0, null);
	Wait(1000);
	SetVolumeEX($CoilBgm, 1000, 450, null);

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("1030ロゴ","dx/mvdot103a.ngs");
	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("1030ロゴ");
	//○⑥画像描画待機（ムービーとか）
	CoilPictWaitSkip("1030ロゴ");


	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("３","cg/ef/efコイル招待状セイ_BASE.png");
	//▽⑥追加画像表示
	CoilPictFadeCon("３");
	//○⑥画像描画待機（ムービーとか）
	CoilPictWait();


	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("４","cg/ef/efコイル招待状セイ_BASE01.png");
	//▽⑥追加画像表示
	CoilPictFadeCon("４");
	//○⑥画像描画待機（ムービーとか）
	CoilPictWait();

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("５","cg/ef/efコイル招待状セイ_BASE02.png");
	//▽⑥追加画像表示
	CoilPictFadeCon("５");
	//○⑥画像描画待機（ムービーとか）
	CoilPictWait();

	Wait(1000);
}

function CoilBank01b(){
	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPict",300,-50,370);
	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	//CoilAllDelete(300,-50,370);
	//○コイル待ち
	CoilWait();
}

function CoilBank02a(){
	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	CoilPictSet(303,16,"cg/ef/efコイル招待状セイ_BASE02.png");

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑥画像表示１（通常表示）
	CoilPictFade();

	//○コイル待ち
	CoilWait();
}

function CoilBank02b(){
	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPict",300,-50,370);
	//○コイル待ち
	CoilWait();
}

function CoilBank03a(){

//★『徒歩コイル確認』

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■②メールNEW設置『CoilNewSet(X位置,Y位置)』
	CoilNewSet(400,100);
	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(500,100);
	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	CoilPictSet(125,100,"cg/ef/efマップ鶏泉_ノイズ_地図.png");/////


	//▼①コイル演出表示
	CoilStartFade();
	//▼②メールNEW表示
	CoilNewFade();
	//○コイル待ち
	CoilWait();

	//▼③メールリスト表示２（メールNEWからの遷移）
	CoilMListFade_New();
	//○コイル待ち
	//CoilWait();

	//○③新規メール追加
	CoilMailAdd2("dm1030a","Haga-san","Secret path to Plt. Jail",true);
	//○コイル待ち
	//CoilWait();

	//■④メール設置『CoilMailSet("メールナット名",X位置,Y位置)』
	CoilMailSet("dm1030a",515,150);////////////

	//▼④メール表示２（メールリストからの遷移）『CoilMailFade_MList("メールナット名",秒数)』
	CoilMailFade_MList("dm1030a",500);

	//▼⑥画像表示２（メールダウンロードからの表示）
	//CoilPictFade_Down();
	//▼⑥画像表示３（メールからの直接表示）
	CoilPictFade_Mail();

	//○コイル待ち
	CoilWait();



	CreateSE("coilsound_move","se物体_コイル_システムタッチ");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//○⑥ズーム（中の画像に対して）『CoilPictZO("ナット名",秒数,値X,値Y,テンポ,待ち)』//初期ナットの指定は「初期」
	CoilPictZO("初期",1000,300,300,Dxl1,true);

	//○⑥地図専用特殊コマンド
	CoilPictIconFade(@-150,@-140);

}

function CoilBank03b(){

	CreateSE("coilsound_move","se物体_コイル_システムタッチ");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//○⑥地図専用特殊コマンド
	CoilPictIconGo(800,@150,@50,@500,@350,1000,1000);

	Wait(3000);


	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilAllDelete(300,-50,370);
	//○コイル待ち
	CoilWait();

}

//わけた
function CoilBank03b_1(){

	CreateSE("coilsound_move","se物体_コイル_システムタッチ");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//○⑥地図専用特殊コマンド
	CoilPictIconGo(800,@150,@50,@500,@350,1000,1000);

}

function CoilBank03b_2(){

	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilAllDelete(300,-50,370);
	//○コイル待ち
	CoilWait();

}



..★dm1080/dm2080/dm3080/dm4080/dm5080
function CoilBank04(){

	if($GameName=="dm1080.nss"){
		//べにすずめ（右のエキゾチックゾーン）
		$CoilBankX=-384;$CoilBankY=-373;
		$CoilBankX2=50;$CoilBankY2=-20;
	}else if($GameName=="dm2080.nss"){
		//ノイズ（下のゆうえんちゾーン）
		$CoilBankX=-296;$CoilBankY=-498;
		$CoilBankX2=-70;$CoilBankY2=90;
	}else if($GameName=="dm3080.nss"){
		//みんく（上のまっくらゾーン）
		$CoilBankX=-268;$CoilBankY=-312;
		$CoilBankX2=40;$CoilBankY2=-80;
	}else if($GameName=="dm4080.nss"){
		//あくあ（左の緑ゾーン）
		$CoilBankX=-68;$CoilBankY=-423;
		$CoilBankX2=-100;$CoilBankY2=-100;
	}else if($GameName=="dm5080.nss"){
		//れん（左下のサイバーゾーン）
		$CoilBankX=20;$CoilBankY=-517;
		$CoilBankX2=-30;$CoilBankY2=50;
	}else{
		//べにすずめ（右のエキゾチックゾーン）
		$CoilBankX=-384;$CoilBankY=-373;
		$CoilBankX2=50;$CoilBankY2=-20;
	}

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	//CoilPictSet(300,20,"cg/ef/efコイル招待状セイ_BASE02.png");
	CoilPictSet(303,16,"cg/ef/efコイル招待状セイ_BASE02.png");

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑥画像表示１（通常表示）
	CoilPictFade();

	//○コイル待ち
	CoilWait();

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("２","cg/bg/l/bg001011_1_碧島全景_l.jpg");
	//○⑥ムーブ（中の画像に対して）『CoilPictMO("ナット名",秒数,値X,値Y,テンポ,待ち)』
	CoilPictMO("２",0,$CoilBankX,$CoilBankY,Dxl1,true);
	//○⑥ズーム（中の画像に対して）『CoilPictZO("ナット名",秒数,値X,値Y,テンポ,待ち)』//初期ナットの指定は「初期」
	CoilPictZO("２",0,1500,1500,Dxl1,true);

	//▽⑥追加画像表示
	CoilPictFadeCon("２");

	CreateSE("coilsound_move","se物体_コイル_システムタッチ");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//○⑥ズーム（中の画像に対して）『CoilPictZO("ナット名",秒数,値X,値Y,テンポ,待ち)』//初期ナットの指定は「初期」
	CoilPictZO("２",1000,1000,1000,Dxl1,true);

	//○コイル待ち
	CoilWait();

	//○⑥地図専用特殊コマンド
	CoilPictIconFade(@$CoilBankX2,@$CoilBankY2);
	//○⑥地図専用特殊コマンド
	//CoilPictIconGo(800,@150,@50,@500,@350,1000,1000);

	//○⑥画像描画待機（ムービーとか）
	CoilPictWait();
}



..★dm1070/dm2070/dm3070/dm4070/dm5070

function CoilBank05a(){
	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	CoilPictSet(303,16,"cg/ef/efコイル招待状セイ_BASE02.png");

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑥画像表示１（通常表示）
	CoilPictFade();

	//○コイル待ち
	CoilWait();
}

function CoilBank05b(){
	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPict",300,-50,370);
	//○コイル待ち
	CoilWait();
}






