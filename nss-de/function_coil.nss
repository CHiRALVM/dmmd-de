
#include "nss/function_coiltext.nss"


.���҂�
function CoilWait(){

	WaitAction("coilmlist_��/coilmlist_��/���o*", null);
	WaitAction("coil*/�x�[�X", null);
	WaitAction("coil*/�x�[�X�R", null);
	WaitAction("coilmlist_��/*/*/*", null);


}


.������
function CoilEnd(){
	Delete("coil*");

	$SYSTEM_full_scene_update=false;

	//�h���}�_�R�C���p
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


	$coildownpriON=false;//CoilDownSetPri�p

	$coilphoneNOW="����";

	//�ȉ����[�U�[�C��
	$coilintoON=false;//���o�����Ȃ�
	$coilphoneError=false;//�d�b����G���[�ɂȂ�
	$coilraceSoon=false;//�����̒ǉ������΂₭

	$coilphone2Error=false;//�d�b����G���[�ɂȂ�
	$coilrace2Soon=false;//�����̒ǉ������΂₭
}




.���D��x
..���Z�b�g
function CoilBlack(){
//����ނ������邲�Ƃɒǉ��K�v��

	$SYSTEM_full_scene_update=true;

	if(!$CoilBlackPass){

		$CoilBlackPass=false;

		$CoilBlack=0;
	
		$coilphoneEX=false;
		if($coilphoneON&&$coilphone2ON){$coilphoneEX=true;}

		if($coildownON){CoilBlackMacro();}
	
		if($coilnewON){
			Fade("@coilnew_��", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilnew_��", 200, 0, null, false);
		}
	
		if($coilpictON){
			Fade("@coilpict_��", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilpict_��", 200, 0, null, false);
		}

		if($coilphone2ON&&!$coilphoneEX){
			Fade("@coilphone2_��", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilphone2_��", 200, 0, null, false);
		}

		if($coilmail2ON){
			Fade("@coilmail2_��", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilmail2_��", 200, 0, null, false);
		}

		if($coilmailON){
			Fade("@coilmail_��", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilmail_��", 200, 0, null, false);
		}

		if($coilmlistON){
			Fade("@coilmlist_��", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilmlist_��", 200, 0, null, false);
		}

		if($coilphoneON&&!$coilphoneEX){
			Fade("@coilphone_��", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilphone_��", 200, 0, null, false);
		}

		if($coildownpriON){
			Fade("@coildown_��", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coildown_��", 200, 0, null, false);
		}

		if($coilrenON){
			Fade("@coilren_��", 200, $CoilBlack, null, false);
			CoilBlackMacro();
		}else{
			Fade("@coilren_��", 200, 0, null, false);
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


.���R�C���̏���
..���P�����
function CoilDelete($CoilDelete,$CoilDeleteT,$CoilDeleteX,$CoilDeleteY){
//����ނ������邲�Ƃɒǉ��K�v��

	WaitAction("coil*/�x�[�X", null);

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
		$CoilName="���s����";
		Message("�f�o�b�O�p","����Ȗ��O�̃R�C�����͂��[�b�H�@�i�C�i�C�Ȃ��[�[���b�b�I�I",YESNOCANCE,EXCLAMATION);
	}

	$CoilDelete1=$CoilName+"_��";
	$CoilDelete2=$CoilName+"_��/�}�X�N�Q";
	$CoilDelete3=$CoilName+"_��/�}�X�N�Q/�x�[�X�R";
	$CoilDelete4=$CoilName+"_��/�x�[�X";
	$CoilDelete5=$CoilName+"_�_�E�����[�h�v���Z�X";

	Request($CoilDelete5, Stop);

	Position($CoilDelete1,$X��,$Y��);

	Fade($CoilDelete3, 0, 0, null, false);
	Zoom($CoilDelete3, 0, 1000, 1000, Dxl2, true);
	Move($CoilDelete2, 0, $X��, $Y��, null, true);


	$CoilDeleteT1=$CoilDeleteT/3;
	$CoilDeleteT2=$CoilDeleteT-$CoilDeleteT1;
	$CoilDeleteT3=$CoilDeleteT/2;

////////////////////////////////////////////////////////////////////////////

	CreateEffect("coildelete_��",10999,0,0,1024,576,"Plain");
	SetAlias("coildelete_��", "coildelete_��");
	Request("coildelete_��", Passive);
	SetShade("coildelete_��", MEDIUM);
	Request("coildelete_��", AddRender);
	Fade("coildelete_��", 0, 0, null, false);


	$X��-=400;$Y��+=230;
	CreateTexture("coildelete_����", 10999, OnLeft, $Y��, "cg/sys/coil/�R�C���o��3.png");
	Request("coildelete_����", AddRender);
	Fade("coildelete_����", 0, 0, null, true);
	Zoom("coildelete_����", 0, 1500, 1500, null, false);//3

	$coildeleteH=ImageHorizon("coildelete_����");
	$coildeleteV=ImageVertical("coildelete_����");
	$coildeleteH=$CoilDeleteX-($coildeleteH/2)+120;
	$coildeleteV=$CoilDeleteY-($coildeleteV/2)+340;
	Move("coildelete_����", 0, $coildeleteH, $coildeleteV, null, false);

//	CoilMove2(2,$CoilDelete,$CoilDeleteT,$CoilDeleteX,$CoilDeleteY,$CoilDeleteTempo,false);//3
	//��΍��W�΍�////////////////////
	$CoilNut=$CoilName+"_��";
	Position($CoilNut,$X���W,$Y���W);

	$������X=Strstr($CoilDeleteX,"@");
	if(!$������X){
		$�ړ�X=$CoilDeleteX-$X���W;
	}else{
		Message("�f�o�b�O�p","�����͐�΍��W�Ŏw��",YESNOCANCE,EXCLAMATION);
//		$������X=Strlen($�ړ�X);
//		$�ړ�X=Substr($�ړ�X,$������X,$������X);
	}

	$������Y=Strstr($CoilDeleteY,"@");
	if(!$������Y){
		$�ړ�Y=$CoilDeleteY-$Y���W;
	}else{
		Message("�f�o�b�O�p","�����͐�΍��W�Ŏw��",YESNOCANCE,EXCLAMATION);
//		$������Y=Strlen($�ړ�Y);
//		$�ړ�Y=Substr($�ړ�Y,$������Y,$������Y);
	}
	//////////////////////////////////

	$CoilName1=$CoilName+"_*";
	$CoilName2=$CoilName+"_*/*";
	$CoilName3=$CoilName+"_*/*/*";
	$CoilName4=$CoilName+"_*/*/*/*";

	$X1 = $�ړ�X;
	$X2 = -$X1/3*2;
	$Y1 = $�ړ�Y;
	$Y2 = -$Y1/3*2;

	//////////////////////////////////
	CreateSE("coilsound_delete","se����_�R�C��_�V�X�e���폜");
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

	Fade("coildelete_��", $CoilDeleteT3, 500, Axl1, false);//1

	Fade($CoilName4, $CoilDeleteT3, 0, null, false);//2
	Fade($CoilName3, $CoilDeleteT3, 0, null, false);//2
	Fade($CoilName2, $CoilDeleteT3, 0, null, false);//2
	Fade($CoilName1, $CoilDeleteT3, 0, null, false);//2
	Fade($CoilDelete3, $CoilDeleteT1, 1000, null, false);//2
	Wait($CoilDeleteT3);//1
//	WaitKey();

	CoilIntoDelete();


	Zoom("coildelete_��", $CoilDeleteT2, 1050, 1050, Axl1, false);//2
//	DrawTransition("coildelete_��", $CoilDeleteT2, 0, 1000, 100, null, "cg/data/circle_02_00_1.png", false);//2
	Fade("coildelete_��", $CoilDeleteT2, 0, null, false);//2

	Zoom($CoilDelete3, $CoilDeleteT2, 500, 500, Dxl1, false);

	DrawTransition($CoilDelete3, $CoilDeleteT3, 1000, 0, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);//2
	Fade($CoilDelete3, $CoilDeleteT3, 0, null, false);//2

	Rotate("coildelete_����", 0, @0, @0, 90, null, false);
	Zoom("coildelete_����", $CoilDeleteT, 300, 300, null, false);//3
	Fade("coildelete_����", $CoilDeleteT2, 300, null, true);//2

	Fade("coildelete_����", $CoilDeleteT1, 0, null, true);//1

	Request("coildelete_��", Disused);
	Request("coildelete_����", Disused);
}


..���S����
function CoilAllDelete($CoilDeleteT,$CoilDeleteX,$CoilDeleteY){
//����ނ������邲�Ƃɒǉ��K�v��

	WaitAction("coil*/�x�[�X", null);

	CreateEffect("coildelete_��",9999,0,0,1024,576,"Plain");
	SetAlias("coildelete_��", "coildelete_��");
	Request("coildelete_��", Passive);
	SetShade("coildelete_��", MEDIUM);
	Request("coildelete_��", AddRender);
	Fade("coildelete_��", 0, 0, null, false);

//	$���WX=$CoilDeleteX;
//	$���WY=$CoilDeleteY;
	CreateTexture("coildelete_����", 10999, 0, 0, "cg/sys/coil/�R�C���o��3.png");
	Request("coildelete_����", AddRender);
	Fade("coildelete_����", 0, 0, null, true);
	Zoom("coildelete_����", 0, 1500, 1500, null, false);//3
	Rotate("coildelete_����", 0, @0, @0, 90, null, false);

	CreateSE("coilsound_delete","se����_�R�C��_�V�X�e���폜2");
	MusicStart("coilsound_delete",0,700,0,1000,null,false);

	$coildeleteH=ImageHorizon("coildelete_����");
	$coildeleteV=ImageVertical("coildelete_����");
	$coildeleteH=$CoilDeleteX-($coildeleteH/2)+120;
	$coildeleteV=$CoilDeleteY-($coildeleteV/2)+340;
	Move("coildelete_����", 0, $coildeleteH, $coildeleteV, null, false);

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
			$CoilName="���s����";
			Message("�f�o�b�O�p","����Ȗ��O�̃R�C�����͂��[�b�H�@�i�C�i�C�Ȃ��[�[���b�b�I�I",YESNOCANCE,EXCLAMATION);
		}

		if(VariableValue($,$CoilName+"ON")){
			VariableValue($,$CoilName+"ON",false);

			$CoilDelete1=$CoilName+"_��";
			$CoilDelete2=$CoilName+"_��/�}�X�N�Q";
			$CoilDelete3=$CoilName+"_��/�}�X�N�Q/�x�[�X�R";
			$CoilDelete4=$CoilName+"_��/�x�[�X";
			$CoilDelete5=$CoilName+"_�_�E�����[�h�v���Z�X";
		
			Request($CoilDelete5, Stop);
		
			Position($CoilDelete1,$X��,$Y��);
		
			Fade($CoilDelete3, 0, 0, null, false);
			Zoom($CoilDelete3, 0, 1000, 1000, Dxl2, false);
			Move($CoilDelete2, 0, $X��, $Y��, null, true);
		
		////////////////////////////////////////////////////////////////////////////
		//	CoilMove2(2,$CoilDelete,$CoilDeleteT,$CoilDeleteX,$CoilDeleteY,$CoilDeleteTempo,false);//3
			//��΍��W�΍�////////////////////
			$CoilNut=$CoilName+"_��";
			Position($CoilNut,$X���W,$Y���W);
		
			$������X=Strstr($CoilDeleteX,"@");
			if(!$������X){
				$�ړ�X=$CoilDeleteX-$X���W;
			}else{
				Message("�f�o�b�O�p","�����͐�΍��W�Ŏw��",YESNOCANCE,EXCLAMATION);
		//		$������X=Strlen($�ړ�X);
		//		$�ړ�X=Substr($�ړ�X,$������X,$������X);
			}
		
			$������Y=Strstr($CoilDeleteY,"@");
			if(!$������Y){
				$�ړ�Y=$CoilDeleteY-$Y���W;
			}else{
				Message("�f�o�b�O�p","�����͐�΍��W�Ŏw��",YESNOCANCE,EXCLAMATION);
		//		$������Y=Strlen($�ړ�Y);
		//		$�ړ�Y=Substr($�ړ�Y,$������Y,$������Y);
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

			$X1 = $�ړ�X;
			$Y1 = $�ړ�Y;
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
			Fade("coildelete_��", $CoilDeleteT3, 500, Axl1, false);//1
		
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


			Zoom("coildelete_����", $CoilDeleteT, 500, 500, null, false);//3
			Fade("coildelete_����", $CoilDeleteT2, 300, null, false);//2
		}

		$CoilAllDeleteCount++;
	}

	Zoom("coildelete_��", $CoilDeleteT2, 1050, 1050, Axl1, false);//2
//	DrawTransition("coildelete_��", $CoilDeleteT2, 0, 1000, 100, null, "cg/data/circle_02_00_1.png", false);//2
	Fade("coildelete_��", $CoilDeleteT2, 0, null, false);//2

	Rotate("coildelete_����", 0, @0, @0, 90, null, false);
	Zoom("coildelete_����", $CoilDeleteT, 500, 500, null, false);//3
	Fade("coildelete_����", $CoilDeleteT2, 300, null, true);//2


	Fade("coildelete_����", $CoilDeleteT1, 0, null, true);//1

	Request("coildelete_��", Disused);
	Request("coildelete_����", Disused);
}



.���C�h�[
..���Z�b�g
function CoilMove($CoilName,����,$�ړ�X,$�ړ�Y,�e���|,�҂�){
//����ނ������邲�Ƃɒǉ��K�v��

	if($CoilName=="CoilNew"){
		$CoilName="coilnew";
		Fade("@coilnew_���o�Q", 100, 0, null, true);
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
		$CoilName="���s����";
		Message("�f�o�b�O�p","����Ȗ��O�̃R�C�����͂��[�b�H�@�i�C�i�C�Ȃ��[�[���b�b�I�I",YESNOCANCE,EXCLAMATION);
	}



	$CoilMoveMas=$CoilName+"_��/�x�[�X";
	WaitAction($CoilMoveMas, null);



	$������X=Strstr($�ړ�X,"@");
	$������Y=Strstr($�ړ�Y,"@");
	if(!$������X&&!$������Y){
		if($CoilName=="coilphone"){
			$CoilCallPro2X=$�ړ�X;
			$CoilCallPro2Y_base=$�ړ�Y-300;
			$CoilCallPro2Y=$�ړ�Y+360;
			Move("@coilphone_call_���o�F�P", 0, -1000, 0, null, false);
			Move("@coilphone_call_���o�F�Q", 0, -1000, 0, null, false);
		}else if($CoilName=="coilphone2"){
			$CoilCall2Pro2X=$�ړ�X;
			$CoilCall2Pro2Y_base=$�ړ�Y-300;
			$CoilCall2Pro2Y=$�ړ�Y+360;
			Move("@coilphone2_call_���o�F�P", 0, -1000, 0, null, false);
			Move("@coilphone2_call_���o�F�Q", 0, -1000, 0, null, false);
		}
	}

	//��΍��W�΍�////////////////////
	$CoilNut=$CoilName+"_��";
	Position($CoilNut,$X���W,$Y���W);

	if(!$������X){
		$�ړ�X=$�ړ�X-$X���W;
		$�ړ�X="@"+$�ړ�X;
	}
	if(!$������Y){
		$�ړ�Y=$�ړ�Y-$Y���W;
		$�ړ�Y="@"+$�ړ�Y;
	}
	//////////////////////////////////

	$CoilName1=$CoilName+"_*";
	$CoilName2=$CoilName+"_*/*";
	$CoilName3=$CoilName+"_*/*/*";
	$CoilName4=$CoilName+"_*/*/*/*";

	$CoilSound++;
	$CoilSoundNut="coilsound_move"+$CoilSound;
	CreateSE($CoilSoundNut,"se����_�R�C��_�V�X�e���ړ�");
	MusicStart($CoilSoundNut,0,700,0,1000,null,false);

	Move($CoilName4, ����, $�ړ�X, $�ړ�Y, �e���|, false);
	Move($CoilName3, ����, $�ړ�X, $�ړ�Y, �e���|, false);
	Move($CoilName2, ����, $�ړ�X, $�ړ�Y, �e���|, false);
	Move($CoilName1, ����, $�ړ�X, $�ړ�Y, �e���|, �҂�);

	if(!$������X&&!$������Y){
		if($CoilName=="coilphone"){
			Move("@coilphone_call_���o�F�P", 0, $CoilCallPro2X, $CoilCallPro2Y, null, true);
			Move("@coilphone_call_���o�F�Q", 0, $CoilCallPro2X, $CoilCallPro2Y, null, true);
		}else if($CoilName=="coilphone2"){
			Move("@coilphone2_call_���o�F�P", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y, null, true);
			Move("@coilphone2_call_���o�F�Q", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y, null, true);
		}
	}

}

..���Z�b�g
function CoilMove2($CoilPat,$CoilName,����,$�ړ�X,$�ړ�Y,�e���|,�҂�){
//����ނ������邲�Ƃɒǉ��K�v��

	WaitAction("coil*/�x�[�X", null);

	if($CoilName=="CoilNew"){
		$CoilName="coilnew";
		Fade("@coilnew_���o�Q", 100, 0, null, true);
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
		$CoilName="���s����";
		Message("�f�o�b�O�p","����Ȗ��O�̃R�C�����͂��[�b�H�@�i�C�i�C�Ȃ��[�[���b�b�I�I",YESNOCANCE,EXCLAMATION);
	}

	$CoilMoveMas=$CoilName+"_��/�x�[�X";
	WaitAction($CoilMoveMas, null);


	$������X=Strstr($�ړ�X,"@");
	$������Y=Strstr($�ړ�Y,"@");
	if(!$������X&&!$������Y){
		if($CoilName=="coilphone"){
			$CoilCallPro2X=$�ړ�X;
			$CoilCallPro2Y_base=$�ړ�Y-300;
			$CoilCallPro2Y=$�ړ�Y+360;
			Move("@coilphone_call_���o�F�P", 0, -1000, 0, null, false);
			Move("@coilphone_call_���o�F�Q", 0, -1000, 0, null, false);
		}else if($CoilName=="coilphone2"){
			$CoilCall2Pro2X=$�ړ�X;
			$CoilCall2Pro2Y_base=$�ړ�Y-300;
			$CoilCall2Pro2Y=$�ړ�Y+360;
			Move("@coilphone2_call_���o�F�P", 0, -1000, 0, null, false);
			Move("@coilphone2_call_���o�F�Q", 0, -1000, 0, null, false);
		}
	}

	//��΍��W�΍�////////////////////
	$CoilNut=$CoilName+"_��";
	Position($CoilNut,$X���W,$Y���W);

	if(!$������X){
		$�ړ�X=$�ړ�X-$X���W;
	}else{
//		$������X=Strlen($�ړ�X);
//		$�ړ�X=Substr($�ړ�X,$������X,$������X);
	}

	if(!$������Y){
		$�ړ�Y=$�ړ�Y-$Y���W;
	}else{
//		$������Y=Strlen($�ړ�Y);
//		$�ړ�Y=Substr($�ړ�Y,$������Y,$������Y);
	}
	//////////////////////////////////

	$CoilName1=$CoilName+"_*";
	$CoilName2=$CoilName+"_*/*";
	$CoilName3=$CoilName+"_*/*/*";
	$CoilName4=$CoilName+"_*/*/*/*";

	$CoilSound++;
	$CoilSoundNut="coilsound_move"+$CoilSound;
	CreateSE($CoilSoundNut,"se����_�R�C��_�V�X�e���ړ�");
	MusicStart($CoilSoundNut,0,700,0,1000,null,false);

	if($CoilPat==1){
		$X1 = $�ړ�X;
		$X2 = ($X1 / 5) * 6;
		$Y1 = $�ړ�Y;
		$Y2 = ($Y1 / 5) * 6;
	
		BezierMove($CoilName4, ����, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), �e���|, false);
		BezierMove($CoilName3, ����, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), �e���|, false);
		BezierMove($CoilName2, ����, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), �e���|, false);
		BezierMove($CoilName1, ����, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), �e���|, �҂�);
	}else if($CoilPat==2){
		$X1 = $�ړ�X;
		$X2 = - $X1 / 4;
		$Y1 = $�ړ�Y;
		$Y2 = - $Y1 / 4;
	
		BezierMove($CoilName4, ����, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), �e���|, false);
		BezierMove($CoilName3, ����, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), �e���|, false);
		BezierMove($CoilName2, ����, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), �e���|, false);
		BezierMove($CoilName1, ����, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), �e���|, �҂�);
	}else{
		Message("�f�o�b�O�p","�\���i�ړ��̓b�b�A���������Ƃ��i�C�b�I",YESNOCANCE,EXCLAMATION);
	}

	if(!$������X&&!$������Y){
		if($CoilName=="coilphone"){
			Move("@coilphone_call_���o�F�P", 0, $CoilCallPro2X, $CoilCallPro2Y, null, true);
			Move("@coilphone_call_���o�F�Q", 0, $CoilCallPro2X, $CoilCallPro2Y, null, true);
		}else if($CoilName=="coilphone2"){
			Move("@coilphone2_call_���o�F�P", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y, null, true);
			Move("@coilphone2_call_���o�F�Q", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y, null, true);
		}
	}
}



.���R�C���N���G�t�F�N�g
..���Z�b�g
function CoilStartSet(){

	CreateEffect("coilstart_��",9999,0,0,1024,576,"Plain");
	SetAlias("coilstart_��", "coilstart_��");
	Request("coilstart_��", Passive);
	SetShade("coilstart_��", MEDIUM);
	Fade("coilstart_��", 0, 0, null, false);

	CreateTexture("coilstart_�F�P", 9999, 0, 0, "cg/sys/coil/�R�C���o��.png");
	SetAlias("coilstart_�F�P", "coilstart_�F�P");
	Fade("coilstart_�F�P", 0, 0, null, false);
	Request("coilstart_�F�P", AddRender);

	CreateColor("coilstart_�F�Q", 9999, 0, 576, 1024, 50, "41a4ae");//WHITE
	SetAlias("coilstart_�F�Q", "coilstart_�F�Q");
	Fade("coilstart_�F�Q", 0, 0, null, false);
	Request("coilstart_�F�Q", AddRender);

	CreateColor("coilstart_�F�R", 9999, 0, 776, 1024, 80, "41a4ae");//WHITE
	SetAlias("coilstart_�F�R", "coilstart_�F�R");
	Fade("coilstart_�F�R", 0, 0, null, false);
	Request("coilstart_�F�R", AddRender);

//	CreateColor("coilstart_�F�S", 9999, 0, 676, 1024, 10, "WHITE");//WHITE
//	SetAlias("coilstart_�F�S", "coilstart_�F�S");
//	Fade("coilstart_�F�S", 0, 0, null, false);
//	Request("coilstart_�F�S", AddRender);

	CreateColor("coilstart_�F�T", 9999, 0, 876, 1024, 10, "WHITE");//WHITE
	SetAlias("coilstart_�F�T", "coilstart_�F�T");
	Fade("coilstart_�F�T", 0, 0, null, false);
	Request("coilstart_�F�T", AddRender);


	$SYSTEM_effect_rain_speed = 64;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("coilstart_���o", 9999, Center, Middle, 512, 288, "Rain");
	SetAlias("coilstart_���o","coilstart_���o");
	Fade("coilstart_���o", 0, 0, null, false);
	Request("coilstart_���o", AddRender);
	Zoom("coilstart_���o", 0, 2000, 2000, null, false);
	Rotate("coilstart_���o", 0, @0, @0, 180, null, true);

	CreateSE("coilsound_start","se����_�R�C��_�V�X�e���W�J");
}

..���\��
function CoilStartFade(){
	MusicStart("coilsound_start",0,700,0,1000,null,false);

	CoilIntoFade();

	Fade("coilstart_��", 150, 500, null, false);
	Zoom("coilstart_��", 800, 1100, 1100, Dxl1, false);

	Fade("coilstart_�F�Q", 0, 200, null, false);
	Fade("coilstart_�F�R", 0, 300, null, false);
//	Fade("coilstart_�F�S", 0, 200, null, false);
	Fade("coilstart_�F�T", 0, 500, null, false);

	Fade("coilstart_���o", 150, 1000, null, false);

	Fade("coilstart_�F�P", 0, 300, null, false);
	DrawTransition("coilstart_�F�P", 150, 0, 500, 500, null, "cg/data/slide_02_01_1.png", false);
	Wait(150);
//	WaitKey();

	Fade("coilstart_��", 500, 0, null, false);
//	Zoom("coilstart_��", 150, 1100, 1100, Dxl1, false);

	Move("coilstart_�F�T", 500, @0, 0, null, false);
//	Move("coilstart_�F�S", 400, @0, 0, null, false);
	Move("coilstart_�F�R", 400, @0, -100, null, false);
	Move("coilstart_�F�Q", 400, @0, -100, null, false);

	Fade("coilstart_���o", 300, 0, null, false);

	Fade("coilstart_�F�T", 500, 0, null, false);
//	Fade("coilstart_�F�S", 500, 0, null, false);
	Fade("coilstart_�F�R", 500, 0, null, false);
	Fade("coilstart_�F�Q", 500, 0, null, false);
	Fade("coilstart_�F�P", 500, 0, null, false);
	DrawTransition("coilstart_�F�P", 500, 500, 0, 500, Dxl3, "cg/data/slide_02_01_1.png", false);

	Request("coilstart_��", Disused);
	Request("coilstart_�F�P", Disused);
	Request("coilstart_�F�Q", Disused);
	Request("coilstart_�F�R", Disused);
	Request("coilstart_�F�S", Disused);
	Request("coilstart_�F�T", Disused);
	Request("coilstart_���o", Disused);
}

function CoilStartFade2(){
//	MusicStart("coilsound_start",0,700,0,1000,null,false);

	CoilIntoFade();

	Fade("coilstart_��", 150, 500, null, false);
	Zoom("coilstart_��", 800, 1100, 1100, Dxl1, false);

	Fade("coilstart_�F�Q", 0, 200, null, false);
	Fade("coilstart_�F�R", 0, 300, null, false);
//	Fade("coilstart_�F�S", 0, 200, null, false);
	Fade("coilstart_�F�T", 0, 500, null, false);

	Fade("coilstart_���o", 150, 1000, null, false);

	Fade("coilstart_�F�P", 0, 300, null, false);
	DrawTransition("coilstart_�F�P", 150, 0, 500, 500, null, "cg/data/slide_02_01_1.png", false);
	Wait(150);
//	WaitKey();

	Fade("coilstart_��", 500, 0, null, false);
//	Zoom("coilstart_��", 150, 1100, 1100, Dxl1, false);

	Move("coilstart_�F�T", 500, @0, 0, null, false);
//	Move("coilstart_�F�S", 400, @0, 0, null, false);
	Move("coilstart_�F�R", 400, @0, -100, null, false);
	Move("coilstart_�F�Q", 400, @0, -100, null, false);

	Fade("coilstart_���o", 300, 0, null, false);

	Fade("coilstart_�F�T", 500, 0, null, false);
//	Fade("coilstart_�F�S", 500, 0, null, false);
	Fade("coilstart_�F�R", 500, 0, null, false);
	Fade("coilstart_�F�Q", 500, 0, null, false);
	Fade("coilstart_�F�P", 500, 0, null, false);
	DrawTransition("coilstart_�F�P", 500, 500, 0, 500, Dxl3, "cg/data/slide_02_01_1.png", false);

	Request("coilstart_��", Disused);
	Request("coilstart_�F�P", Disused);
	Request("coilstart_�F�Q", Disused);
	Request("coilstart_�F�R", Disused);
	Request("coilstart_�F�S", Disused);
	Request("coilstart_�F�T", Disused);
	Request("coilstart_���o", Disused);
}

function CoilStartFade_other(){
	Fade("coilstart_�F�Q", 150, 200, null, false);
	Fade("coilstart_�F�P", 0, 1000, null, false);
	DrawTransition("coilstart_�F�P", 150, 0, 200, 500, null, "cg/data/slide_02_01_1.png", true);

	Fade("coilstart_�F�Q", 500, 0, null, false);
	Fade("coilstart_�F�P", 800, 0, null, false);
	DrawTransition("coilstart_�F�P", 800, 200, 0, 500, Dxl1, "cg/data/slide_02_01_1.png", false);
}




.���R�C���p���G�t�F�N�g
..���Z�b�g
function CoilIntoSet(){

	CreateTexture("coilinto_�F�O", 9999, 0, 106, "cg/sys/coil/�R�C���o��2.png");
	SetAlias("coilinto_�F�O", "coilinto_�F�O");
	Fade("coilinto_�F�O", 0, 0, null, false);
	Request("coilinto_�F�O", AddRender);
	SetVertex("coilinto_�F�O", 768, 470);

	CreateTexture("coilinto_�F�P", 9999, -1000, 106, "cg/sys/coil/�R�C���o��2.png");
	SetAlias("coilinto_�F�P", "coilinto_�F�P");
	Fade("coilinto_�F�P", 0, 0, null, false);
	Request("coilinto_�F�P", AddRender);
	SetVertex("coilinto_�F�P", 768, 470);


	CreateColor("coilinto_�F�Q", 9999, 0, 576, 1024, 20, "41a4ae");//WHITE
	SetAlias("coilinto_�F�Q", "coilinto_�F�Q");
	Fade("coilinto_�F�Q", 0, 0, null, false);
	Request("coilinto_�F�Q", AddRender);

	CreateColor("coilinto_�F�R", 9999, 0, 776, 1024, 20, "WHITE");//WHITE
	SetAlias("coilinto_�F�R", "coilinto_�F�R");
	Fade("coilinto_�F�R", 0, 0, null, false);
	Request("coilinto_�F�R", AddRender);

	CreateColor("coilinto_�F�S", 9999, 0, 576, 1024, 10, "41a4ae");//WHITE
	SetAlias("coilinto_�F�S", "coilinto_�F�S");
	Fade("coilinto_�F�S", 0, 0, null, false);
	Request("coilinto_�F�S", AddRender);

	CreateColor("coilinto_�F�T", 9999, 0, 676, 1024, 10, "WHITE");//WHITE
	SetAlias("coilinto_�F�T", "coilinto_�F�T");
	Fade("coilinto_�F�T", 0, 0, null, false);
	Request("coilinto_�F�T", AddRender);


	CreateColor("coilinto_�I�P", 19999, 0, -100, 1024, 50, "41a4ae");//WHITE
	SetAlias("coilinto_�I�P", "coilinto_�I�P");
	Fade("coilinto_�I�P", 0, 0, null, false);
	Request("coilinto_�I�P", AddRender);

	CreateColor("coilinto_�I�Q", 19999, 0, -100, 1024, 80, "41a4ae");//WHITE
	SetAlias("coilinto_�I�Q", "coilinto_�I�Q");
	Fade("coilinto_�I�Q", 0, 0, null, false);
	Request("coilinto_�I�Q", AddRender);


	CreateProcess("coilinto_�v���Z�X�P", 150, 0, 0, "CoilIntoPro01");
	SetAlias("coilinto_�v���Z�X�P", "coilinto_�v���Z�X�P");

	CreateProcess("coilinto_�v���Z�X�Q", 150, 0, 0, "CoilIntoPro02");
	SetAlias("coilinto_�v���Z�X�Q", "coilinto_�v���Z�X�Q");
}

..���\��
function CoilIntoFade(){
	Request("coilinto_�v���Z�X�P", Start);
	Request("coilinto_�v���Z�X�Q", Start);

	Request("coilinto_�v���Z�X�P", Disused);
	Request("coilinto_�v���Z�X�Q", Disused);
}

..���}�N��
function CoilIntoPro01(){

	while(1){
		Move("@coilinto_�F�O", 0, 0, @0, null, false);
		Move("@coilinto_�F�P", 0, -400, @0, null, true);

		Zoom("@coilinto_�F�O", 6500, 1000, 1000, null, false);
		Zoom("@coilinto_�F�P", 6500, 1000, 500, null, false);

		Move("@coilinto_�F�O", 50000, -500, @0, null, false);
		Move("@coilinto_�F�P", 50000, -100, @0, null, false);

		Fade("@coilinto_�F�O", 500, 200, null, false);
		Fade("@coilinto_�F�P", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 1000, 0, null, false);
		Fade("@coilinto_�F�P", 1000, 100, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 500, 200, null, false);
		Fade("@coilinto_�F�P", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 1000, 0, null, false);
		Fade("@coilinto_�F�P", 1000, 100, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 500, 200, null, false);
		Fade("@coilinto_�F�P", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 1000, 0, null, false);
		Fade("@coilinto_�F�P", 1000, 0, null, false);
		Wait(1000);

		////////////////////////////////////////////////////////////
		Move("@coilinto_�F�O", 0, -500, @0, null, false);
		Move("@coilinto_�F�P", 0, -100, @0, null, true);

		Zoom("@coilinto_�F�O", 6500, 1000, 500, null, false);
		Zoom("@coilinto_�F�P", 6500, 1000, 1000, null, false);

		Move("@coilinto_�F�O", 50000, 0, @0, null, false);
		Move("@coilinto_�F�P", 50000, -400, @0, null, false);

		Fade("@coilinto_�F�O", 500, 200, null, false);
		Fade("@coilinto_�F�P", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 1000, 0, null, false);
		Fade("@coilinto_�F�P", 1000, 100, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 500, 200, null, false);
		Fade("@coilinto_�F�P", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 1000, 0, null, false);
		Fade("@coilinto_�F�P", 1000, 100, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 500, 200, null, false);
		Fade("@coilinto_�F�P", 1000, 200, null, false);
		Wait(1000);
		Fade("@coilinto_�F�O", 1000, 0, null, false);
		Fade("@coilinto_�F�P", 1000, 0, null, false);
		Wait(1000);
	}
}

function CoilIntoPro02(){

	Wait(1000);

	while(1){
		$CoilRan03=Random(5);
		$CoilRan03=2000+($CoilRan03*500);
		Wait($CoilRan03);


		Rotate("@coilinto_�F�Q", 0, 0, 0, 0, null, false);
		Rotate("@coilinto_�F�R", 0, 0, 0, 0, null, false);
		Move("@coilinto_�F�Q", 0, @0, 576, null, false);
		Move("@coilinto_�F�R", 0, @0, 776, null, false);
		Fade("@coilinto_�F�Q", 0, 200, null, false);
		Fade("@coilinto_�F�R", 0, 400, null, true);

		Rotate("@coilinto_�F�S", 0, 0, 0, 0, null, false);
		Rotate("@coilinto_�F�T", 0, 0, 0, 0, null, false);
		Move("@coilinto_�F�S", 0, @0, 576, null, false);
		Move("@coilinto_�F�T", 0, @0, 676, null, false);
		Fade("@coilinto_�F�S", 0, 300, null, false);
		Fade("@coilinto_�F�T", 0, 600, null, true);
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
			Rotate("@coilinto_�F�Q", 600, @1080, @0, @0, null, false);
			Rotate("@coilinto_�F�R", 600, @720, @0, @0, null, false);
			Fade("@coilinto_�F�Q", 600, 0, null, false);
			Fade("@coilinto_�F�R", 600, 0, null, false);
			Move("@coilinto_�F�Q", 600, @0, 250, null, false);
			Move("@coilinto_�F�R", 600, @0, 240, null, false);
		}
		Rotate("@coilinto_�F�S", 600, @1080, @0, @0, null, false);
		Rotate("@coilinto_�F�T", 600, @720, @0, @0, null, false);
		Fade("@coilinto_�F�S", 600, 0, null, false);
		Fade("@coilinto_�F�T", 600, 0, null, false);
		Move("@coilinto_�F�S", 600, @0, $CoilIntoSpeed01, null, false);
		Move("@coilinto_�F�T", 600, @0, $CoilIntoSpeed02, null, true);
	}
}

..������
function CoilIntoDelete(){
//����ނ������邲�Ƃɒǉ��K�v��
	if(!$coildownON&&!$coilnewON&&!$coilpictON&&!$coilmailON&&!$coilmail2ON&&!$coilmlistON&&!$coilphoneON&&!$coilphone2ON&&!$coilintoON&&!$coildownpriON&&!$coilrenON){

		Request("@coilinto_�v���Z�X�P", Stop);
		Request("@coilinto_�v���Z�X�Q", Stop);
//		WaitAction("@coilinto_�v���Z�X�P", null);
//		WaitAction("@coilinto_�v���Z�X�Q", null);

		Fade("coilinto_�I�P", 400, 100, null, false);
		Fade("coilinto_�I�Q", 400, 200, null, false);
		Move("coilinto_�I�P", 300, @0, 776, null, false);
		Move("coilinto_�I�Q", 300, @0, 576, null, false);

		Move("@coilinto_�F*", 500, @0, 476, null, false);

		Fade("@coilinto_�F*", 300, 0, null, false);
		Fade("@coilinto_�F�O", 500, 1000, null, false);
		Fade("@coilinto_�F�P", 500, 1000, null, false);
		Request("@coilinto*", Disused);

		Delete("@coilstart_���o");

		$SYSTEM_full_scene_update=false;
	}

	$coilintoON=false;
}
















.�����[����M
..�����[����M�Z�b�g�i10800�j
function CoilNewSet($coilnewX, $coilnewY){
//382
//103
	CreateWindow("coilnew_��", 20000, $coilnewX, $coilnewY, 260, 576, false);
	SetAlias("coilnew_��", "coilnew_��");

	CreateTexture("coilnew_��/�x�[�X", 10800, $coilnewX, $coilnewY, "cg/sys/coil/mail/�R�C�����[��_���M.png");//10000
	SetAlias("coilnew_��/�x�[�X", "coilnew_�x�[�X");
	CreateTexture("coilnew_��/�x�[�X�Q", 10809, $coilnewX, $coilnewY, "cg/sys/coil/mail/�R�C�����[��_���M.png");//10500
	SetAlias("coilnew_��/�x�[�X�Q", "coilnew_�x�[�X�Q");
	SetTone("coilnew_��/�x�[�X�Q", Monochrome);

	CreateTexture("coilnew_��/��", 10809, $coilnewX, $coilnewY, "cg/sys/coil/mail/�R�C�����[��_���M_��.png");//10500
	SetAlias("coilnew_��/��", "coilnew_��");
	Fade("coilnew_��/��", 0, 0, null, true);


	CreateTexture("coilnew_��/���o�P", 10800, $coilnewX, $coilnewY, "cg/sys/coil/mail/�R�C�����[��_���M���o3.png");//10100
	SetAlias("coilnew_��/���o�P", "coilnew_���o�P");
	Request("coilnew_��/���o�P", AddRender);
	CreateTexture("coilnew_��/���o�Q", 10800, $coilnewX, $coilnewY, "cg/sys/coil/mail/�R�C�����[��_���M���o2.png");//10100
	SetAlias("coilnew_��/���o�Q", "coilnew_���o�Q");
	Request("coilnew_��/���o�Q", OverlayRender);

	CreateMask("coilnew_��/�}�X�N�Q", 200, $coilnewX, $coilnewY, "cg/sys/coil/mail/�R�C�����o�g�����W.png", false);
	SetAlias("coilnew_��/�}�X�N�Q", "coilnew_��/�}�X�N�Q");
	CreateTexture("coilnew_��/�}�X�N�Q/�x�[�X�R", 10800, $coilnewX, $coilnewY, "cg/sys/coil/mail/�R�C�����[��_���M.png");//10100
	SetAlias("coilnew_��/�}�X�N�Q/�x�[�X�R", "coilnew_�x�[�X�R");
	Request("coilnew_��/�}�X�N�Q/�x�[�X�R", AddRender);

	$coilnewX4=$coilnewX-20;
	$coilnewY4=$coilnewY-8;
	CreateTexture("coilnew_���o", 10805, $coilnewX4, $coilnewY4, "cg/sys/coil/mail/�R�C�����o.png");//10130
	SetAlias("coilnew_���o", "coilnew_���o");
	Request("coilnew_���o", AddRender);
	Fade("coilnew_���o", 0, 0, null, true);
	Zoom("coilnew_���o", 0, 1000, 0, Dxl1, true);

	CreateTexture("coilnew_����", 10805, $coilnewX, $coilnewY, "cg/sys/coil/mail/�R�C�����[��_���M���o.png");//10130
	SetAlias("coilnew_����", "coilnew_����");
	Request("coilnew_����", AddRender);
	Fade("coilnew_����", 0, 0, null, true);
	SetVertex("coilnew_����", 130, 0);
	Zoom("coilnew_����", 0, 1200, 1000, null, false);


	CreateProcess("coilnew_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilNewPro");
	SetAlias("coilnew_�_�E�����[�h�v���Z�X", "coilnew_�_�E�����[�h�v���Z�X");

	Move("coilnew_��/*", 0, @0, @-207, Dxl1, false);
	Move("coilnew_��/*/*", 0, @0, @-207, Dxl1, true);

	Fade("@coilnew_�x�[�X�R", 0, 0, null, false);
	Fade("coilnew_��/�x�[�X", 0, 750, null, true);

	SetVertex("@coilnew_�x�[�X", 130, 0);
	Zoom("@coilnew_�x�[�X", 0, 1000, 0, null, true);

	CreateSE("coilsound_new1","se����_�R�C��_�V�X�e���I�[�v��");
	CreateSE("coilsound_new2","se����_�R�C��_�V�X�e���N���[�Y");
}


..�����[����M�\��
function CoilNewFade(){
	MusicStart("coilsound_new1",0,700,0,1000,null,false);

	Zoom("@coilnew_�x�[�X", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilnew_���o*", 800, 0, null, false);

	Fade("coilnew_���o", 0, 350, null, false);
	Zoom("coilnew_���o", 200, 1500, 200, null, false);

	Fade("coilnew_��/�x�[�X�Q", 300, 500, null, false);
	Fade("coilnew_��/�x�[�X", 300, 1000, null, false);
	Move("coilnew_��/*/*", 300, @0, @36, Dxl1, false);
	Move("coilnew_��/*", 300, @0, @36, Dxl1, true);


//	WaitKey();
	$coilnewON=true;
	CoilBlack();

	Fade("coilnew_���o", 0, 1000, null, true);

	Fade("coilnew_��/�x�[�X", 200, 1000, null, false);
	Fade("coilnew_��/�x�[�X�Q", 200, 0, null, false);
	Fade("@coilnew_�x�[�X�R", 200, 1000, null, false);

	Fade("coilnew_���o", 400, 0, Axl2, false);
	Zoom("coilnew_���o", 200, 1000, 1000, null, false);

	Move("coilnew_��/*/*", 500, @0, @171, Dxl1, false);
	Move("coilnew_��/*", 500, @0, @171, Dxl1, false);

	Move("coilnew_��/�}�X�N�Q", 500, @0, @-205, null, false);

	Zoom("@coilnew_�x�[�X�R", 500, 1000, 1200, Axl1, false);

	Request("coilnew_�_�E�����[�h�v���Z�X", Start);
}


..�����[����M�v���Z�X
function CoilNewPro(){
	WaitAction("@coilnew_��/*", null);

	while(1){
		Position("@coilnew_��",$CoilNewX���W,$CoilNewY���W);
		$CoilNewX���W2=$CoilNewX���W-30;

		Zoom("@coilnew_���o�Q", 0, 1000, 1000, null, true);
		Move("@coilnew_���o�Q", 0, $CoilNewX���W2, $CoilNewY���W, null, true);

		Move("@coilnew_���o�Q", 500, $CoilNewX���W, $CoilNewY���W, null, false);
		Fade("@coilnew_���o�Q", 500, 750, Dxl1, false);
		Fade("@coilnew_���o�P", 700, 400, Axl1, true);

		Fade("@coilnew_���o�Q", 300, 0, null, false);
		Fade("@coilnew_���o�P", 400, 32, null, true);
	}
}


..�����[����M�t�F�[�h����
function CoilNewDelete(){

	Request("coilnew_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilnew_�_�E�����[�h�v���Z�X", null);

	$coilnewON=false;
	CoilBlack();

	MusicStart("coilsound_new2",0,700,0,1000,null,false);

	Move("coilnew_��/�}�X�N�Q", 0, @0, @203, null, true);
	Zoom("@coilnew_�x�[�X�R", 0, 1000, 1000, null, true);

	Fade("@coilnew_���o*", 0, 0, null, false);
	Fade("@coilnew_�x�[�X�R", 0, 1000, null, false);

	Zoom("coilnew_���o", 0, 1500, 300, null, false);
	Fade("coilnew_���o", 0, 250, null, true);

//	WaitKey();

	Zoom("coilnew_����", 500, 1100, 0, null, false);
	Fade("coilnew_����", 500, 1000, Dxl3, false);

	Fade("coilnew_���o", 300, 1000, null, false);
	Zoom("coilnew_���o", 400, 750, 0, Axl1, false);

//	Zoom("@coilnew_�x�[�X�R", 50, 1000, 1500, null, false);
	Fade("@coilnew_�x�[�X�R", 50, 0, null, false);
	Fade("@coilnew_�x�[�X", 500, 500, null, false);

	Move("coilnew_��/*/*", 500, @0, @-207, Dxl1, false);
	Move("coilnew_��/*", 500, @0, @-207, Dxl1, false);

	Zoom("@coilnew_�x�[�X�Q", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilnew_�x�[�X", 500, 1000, 750, AxlAuto, false);

//	Fade("coilnew_���o", 400, 0, Axl3, false);
//	Rotate("coilnew_���o", 400, @-90, @0, @0, Axl3, false);


	Delete("coilnew_�_�E�����[�h�v���Z�X");
	Request("coilnew_��/*/*", Disused);
	Request("coilnew_��/*", Disused);
	Request("coilnew_���o", Disused);
}














.�����[���ꗗ
..�����[���ꗗ�P���ǉ��i10100�j
function CoilMailAdd($CoilMail�ԍ�,$CoilMail�l��,$CoilMail����,$CoilMail�Y�t,$CoilMail�J��){

	$TempCoilMail=1;
	while($CoilMailCount>=$TempCoilMail){
		if(VariableValue($,"CoilMail�ԍ�"+$TempCoilMail)==$CoilMail�ԍ�){
			return;
		}
		$TempCoilMail++;
	}

	$CoilMailAll++;
	$CoilMailCount++;

	VariableValue($,$CoilMail�ԍ�+"_num",$CoilMailCount);

	VariableValue($,$CoilMail�ԍ�+"_�l��",$CoilMail�l��);
	VariableValue($,$CoilMail�ԍ�+"_����",$CoilMail����);
	VariableValue($,$CoilMail�ԍ�+"_�Y�t",$CoilMail�Y�t);
	VariableValue($,$CoilMail�ԍ�+"_�J��",$CoilMail�J��);

	VariableValue($,"CoilMail�l��"+$CoilMailCount,$CoilMail�l��);
	VariableValue($,"CoilMail����"+$CoilMailCount,$CoilMail����);
	VariableValue($,"CoilMail�Y�t"+$CoilMailCount,$CoilMail�Y�t);
	VariableValue($,"CoilMail�J��"+$CoilMailCount,$CoilMail�J��);
	VariableValue($,"CoilMail�ԍ�"+$CoilMailCount,$CoilMail�ԍ�);
}

..�����[���ꗗ�P���폜�i10100�j
function CoilMailSub($CoilMail�ԍ�){
	$TempCoilMailOK=false;

	$TempCoilMail=1;
	while($CoilMailCount>=$TempCoilMail){
		if(VariableValue($,"CoilMail�ԍ�"+$TempCoilMail)==$CoilMail�ԍ�){
			$TempCoilMailOK=true;
			break;
		}
		$TempCoilMail++;
	}
	if(!$TempCoilMailOK){
		return;
	}

	//Message("�f�o�b�O�p�E�B���h�E","�f�o�b�O�p�ł�",YESNOCANCE,EXCLAMATION);

	$TempCoilMailCount1=VariableValue($,$CoilMail�ԍ�+"_num");
	$TempCoilMailCount2=$TempCoilMailCount1+1;

	$CoilMailCount--;
	while($CoilMailCount>=$TempCoilMailCount1){
		$CoilMail�l��=VariableValue($,"CoilMail�l��"+$TempCoilMailCount2);
		$CoilMail����=VariableValue($,"CoilMail����"+$TempCoilMailCount2);
		$CoilMail�Y�t=VariableValue($,"CoilMail�Y�t"+$TempCoilMailCount2);
		$CoilMail�J��=VariableValue($,"CoilMail�J��"+$TempCoilMailCount2);
		$CoilMail�ԍ�=VariableValue($,"CoilMail�ԍ�"+$TempCoilMailCount2);

		VariableValue($,$CoilMail�ԍ�+"_num",$TempCoilMailCount1);

		VariableValue($,"CoilMail�l��"+$TempCoilMailCount1,$CoilMail�l��);
		VariableValue($,"CoilMail����"+$TempCoilMailCount1,$CoilMail����);
		VariableValue($,"CoilMail�Y�t"+$TempCoilMailCount1,$CoilMail�Y�t);
		VariableValue($,"CoilMail�J��"+$TempCoilMailCount1,$CoilMail�J��);
		VariableValue($,"CoilMail�ԍ�"+$TempCoilMailCount1,$CoilMail�ԍ�);

		$TempCoilMailCount1++;
		$TempCoilMailCount2++;
	}
}


..�����[���ꗗ�Z�b�g
function CoilMListSet($coilmlistX, $coilmlistY){
//382
//103

	$CoilMailNow=$CoilMailCount;

	CreateWindow("coilmlist_��", 20000, $coilmlistX, $coilmlistY, 336, 302, false);
	SetAlias("coilmlist_��", "coilmlist_��");

	CreateTexture("coilmlist_��/�x�[�X", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�g.png");//10000
	SetAlias("coilmlist_��/�x�[�X", "coilmlist_�x�[�X");
	CreateTexture("coilmlist_��/�x�[�X�Q", 10109, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�g.png");//10500
	SetAlias("coilmlist_��/�x�[�X�Q", "coilmlist_�x�[�X�Q");
	SetTone("coilmlist_��/�x�[�X�Q", Monochrome);

	CreateTexture("coilmlist_��/��", 10109, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�g_��.png");//10500
	SetAlias("coilmlist_��/��", "coilmlist_��");
	Fade("coilmlist_��/��", 0, 0, null, true);

//	CreateTexture("coilmlist_��/���o�P", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_���M���o3.png");
//	SetAlias("coilmlist_��/���o�P", "coilmlist_���o�P");
//	Request("coilmlist_��/���o�P", AddRender);
//	CreateTexture("coilmlist_��/���o�Q", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_���M���o2.png");
//	SetAlias("coilmlist_��/���o�Q", "coilmlist_���o�Q");
//	Request("coilmlist_��/���o�Q", OverlayRender);

	CreateMask("coilmlist_��/�}�X�N�Q", 200, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����o�g�����W2.png", false);
	SetAlias("coilmlist_��/�}�X�N�Q", "coilmlist_��/�}�X�N�Q");
	CreateTexture("coilmlist_��/�}�X�N�Q/�x�[�X�R", 10105, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�g.png");//10100
	SetAlias("coilmlist_��/�}�X�N�Q/�x�[�X�R", "coilmlist_�x�[�X�R");
	Request("coilmlist_��/�}�X�N�Q/�x�[�X�R", AddRender);

	$coilmlistX6=$coilmlistX+21;
	$coilmlistY6=$coilmlistY+28;
	CreateWindow("coilmlist_��/coilmlist_��", 20000, $coilmlistX6, $coilmlistY6, 298, 249, false);
	SetAlias("coilmlist_��/coilmlist_��", "coilmlist_��");

	$coilmlistX7=$coilmlistX;
	$coilmlistY7=$coilmlistY+300;
	CreateTexture("coilmlist_��/coilmlist_��/coilmlist_�I��", 10100, $coilmlistX7, $coilmlistY7, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�Z���N�g.png");//10010
	SetAlias("coilmlist_��/coilmlist_��/coilmlist_�I��", "coilmlist_�I��");
	Request("coilmlist_��/coilmlist_��/coilmlist_�I��", AddRender);
	Fade("coilmlist_��/coilmlist_��/coilmlist_�I��", 0, 0, null, true);

/*
	CreateTexture("coilmlist_��/coilmlist_��/coilmlist_����", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�G���^�[.png");//10010
	SetAlias("coilmlist_��/coilmlist_��/coilmlist_����", "coilmlist_����");
//	Request("coilmlist_��/coilmlist_��/coilmlist_����", AddRender);
	Fade("coilmlist_��/coilmlist_��/coilmlist_����", 0, 0, null, true);

	CreateTexture("coilmlist_��/coilmlist_��/coilmlist_����Q", 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�G���^�[.png");//10010
	SetAlias("coilmlist_��/coilmlist_��/coilmlist_����Q", "coilmlist_����Q");
	Request("coilmlist_��/coilmlist_��/coilmlist_����Q", AddRender);
	Fade("coilmlist_��/coilmlist_��/coilmlist_����Q", 0, 0, null, true);
*/

	$CoilPreX=$coilmlistX;
	$CoilPreY=$coilmlistY;

	$CoilTemp=$CoilMailCount;
	while(0<$CoilTemp){

		$CoilTempNum=VariableValue($,"CoilMail�ԍ�"+$CoilTemp);

		//���������Ⴂ���Ȃ����C��
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+28;
		$coiltempnut="coilmlist_��/coilmlist_��/�`�F�b�N"+$CoilTempNum;
		CreateTexture($coiltempnut, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�\��.png");//10090
		SetAlias($coiltempnut, $coiltempnut);

		//������
		SetFont("�l�r �S�V�b�N", 16, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+61;
		$coiltempY=$CoilPreY+26;
		$coiltempnut2="coilmlist_��/coilmlist_��/�e�L�X�g��"+$CoilTempNum;
		CreateWindow($coiltempnut2, 10101, $coiltempX, $coiltempY, 182, 50, false);//10090//170
		SetAlias($coiltempnut2, $coiltempnut2);

		$coiltempnut=$coiltempnut2+"/����"+$CoilTempNum;
		$coiltempimg=VariableValue($,"CoilMail����"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilMail����"+$CoilTemp));
		CreateText($coiltempnut, 10101, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut, $coiltempnut);
//		SetVertex($coiltempnut, 1, 1);
		Request($coiltempnut, NoLog);


		//���l��
		SetFont("�l�r �S�V�b�N", 10, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+61;
		$coiltempY=$CoilPreY+47;
		$coiltempnut="coilmlist_��/coilmlist_��/�l��"+$CoilTempNum;
		$coiltempimg=VariableValue($,"CoilMail�l��"+$CoilTemp);
		CreateText($coiltempnut, 10101, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut, $coiltempnut);
//		SetVertex($coiltempnut, 0, 0);
		Request($coiltempnut, NoLog);

		//���J��
		$coiltempX=$CoilPreX+260;
		$coiltempY=$CoilPreY+28;
		$coiltempnut="coilmlist_��/coilmlist_��/�J��"+$CoilTempNum;

		if(VariableValue($,"CoilMail�J��"+$CoilTemp)){
			$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ����ǃA�C�R��.png";
		}else{
			$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ��ǃA�C�R��.png";
		}
		CreateTexture($coiltempnut, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
		SetAlias($coiltempnut, $coiltempnut);

		//���Y�t
		$coiltempX=$CoilPreX+287;
		$coiltempY=$CoilPreY+33;
		$coiltempnut="coilmlist_��/coilmlist_��/�Y�t"+$CoilTempNum;

		if(VariableValue($,"CoilMail�Y�t"+$CoilTemp)){
			$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ�e���v�A�C�R��.png";
			CreateTexture($coiltempnut, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
			SetAlias($coiltempnut, $coiltempnut);
		}


		$CoilPreY+=42;
		$CoilTemp--;
	}
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilmlist_��/coilmlist_��/*", PushText);
	Request("coilmlist_��/coilmlist_��/*/*", PushText);


	$coilmlistX4=$coilmlistX-20;
	$coilmlistY4=$coilmlistY-8;
	CreateTexture("coilmlist_���o", 10102, $coilmlistX4, $coilmlistY4, "cg/sys/coil/mail/�R�C�����o2.png");//10130
	SetAlias("coilmlist_���o", "coilmlist_���o");
	Request("coilmlist_���o", AddRender);
	Fade("coilmlist_���o", 0, 0, null, true);
	Zoom("coilmlist_���o", 0, 1000, 0, Dxl1, true);


	CreateTexture("coilmlist_����", 10102, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ���o.png");//10130
	SetAlias("coilmlist_����", "coilmlist_����");
	Request("coilmlist_����", AddRender);
	Fade("coilmlist_����", 0, 0, null, true);
	SetVertex("coilmlist_����", 130, 0);
	Zoom("coilmlist_����", 0, 1200, 1000, null, false);



//	CreateProcess("coilmlist_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilNewPro");
//	SetAlias("coilmlist_�_�E�����[�h�v���Z�X", "coilmlist_�_�E�����[�h�v���Z�X");

	Move("coilmlist_��/*", 0, @0, @-317, null, false);
	Move("coilmlist_��/*/*", 0, @0, @-317, null, false);
	Move("coilmlist_��/*/*/*", 0, @0, @-317, null, true);


	Zoom("coilmlist_��/coilmlist_��", 0, 0, 1000, null, false);
	Move("coilmlist_��/coilmlist_��", 0, @0, @-100, null, false);

	Move("coilmlist_��/coilmlist_��/*/*", 0, @-300, @-100, null, false);
	Move("coilmlist_��/coilmlist_��/*", 0, @0, @-100, null, true);

	Fade("@coilmlist_�x�[�X�R", 0, 0, null, false);
	Fade("coilmlist_��/�x�[�X", 0, 750, null, true);

//	SetVertex("@coilmlist_�x�[�X�R", 168, 0);
//	Zoom("@coilmlist_�x�[�X�R", 0, 1000, 500, null, true);

	SetVertex("@coilmlist_�x�[�X", 168, 0);
	Zoom("@coilmlist_�x�[�X", 0, 1000, 1000, null, true);
	Fade("@coilmlist_�x�[�X", 0, 0, null, true);

	CreateSE("coilsound_mlist1","se����_�R�C��_�V�X�e���I�[�v��");
	CreateSE("coilsound_mlist2","se����_�R�C��_�V�X�e���N���[�Y");
}


..�����[���ꗗ�\��
function CoilMListFade(){
	MusicStart("coilsound_mlist1",0,700,0,1000,null,false);

	Zoom("@coilmlist_�x�[�X", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilmlist_���o*", 800, 0, null, false);

//	Fade("coilmlist_���o", 0, 350, null, false);
//	Zoom("coilmlist_���o", 200, 1500, 200, null, false);

//	Fade("coilmlist_��/�x�[�X�Q", 300, 500, null, false);
//	Fade("coilmlist_��/�x�[�X", 300, 1000, null, false);
//	Move("coilmlist_��/*/*", 300, @0, @36, Dxl1, false);
//	Move("coilmlist_��/*", 300, @0, @36, Dxl1, true);

	Fade("coilmlist_���o", 0, 350, null, false);
	Zoom("coilmlist_���o", 150, 1500, 200, null, false);

	Fade("coilmlist_��/�x�[�X�Q", 200, 500, null, false);
//	Fade("coilmlist_��/�x�[�X", 200, 1000, null, false);
	Move("coilmlist_��/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmlist_��/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmlist_��/*", 200, @0, @36, Dxl1, true);


//	WaitKey();
	$coilmlistON=true;
	CoilBlack();

	Fade("coilmlist_���o", 0, 1000, null, true);

	Fade("coilmlist_��/�x�[�X", 200, 1000, null, false);
	Fade("coilmlist_��/�x�[�X�Q", 200, 0, null, false);
	Fade("@coilmlist_�x�[�X�R", 200, 1000, null, false);

	Fade("coilmlist_���o", 500, 0, Axl2, false);
	Zoom("coilmlist_���o", 200, 1000, 1000, null, false);

	Move("coilmlist_��/*/*/*", 500, @0, @281, Dxl1, false);
	Move("coilmlist_��/*/*", 500, @0, @281, Dxl1, false);
	Move("coilmlist_��/*", 500, @0, @281, Dxl1, false);


	Zoom("coilmlist_��/coilmlist_��", 400, 1000, 1000, null, false);

	Move("coilmlist_��/coilmlist_��", 500, @0, @381, Dxl1, false);
	Move("coilmlist_��/coilmlist_��/*", 500, @0, @381, Dxl1, false);
	Move("coilmlist_��/coilmlist_��/*/*", 500, @300, @381, Dxl1, false);


//	Move("coilmlist_��/�}�X�N�Q", 500, @0, @-313, null, false);
	Move("coilmlist_��/�}�X�N�Q", 500, @0, @-315, null, false);

	Zoom("@coilmlist_�x�[�X�R", 500, 1000, 1200, Axl1, false);

//	Request("coilmlist_�_�E�����[�h�v���Z�X", Start);
}


..�����[���ǉ�
function CoilMailAdd2($CoilMail�ԍ�,$CoilMail�l��,$CoilMail����,$CoilMail�Y�t){

	$TempCoilMail=1;
	while($CoilMailCount>=$TempCoilMail){
		if(VariableValue($,"CoilMail�ԍ�"+$TempCoilMail)==$CoilMail�ԍ�){
			return;
		}
		$TempCoilMail++;
	}

	WaitAction("@coilmlist_�x�[�X�R", null);
//	WaitAction("@coilmlist_�x�[�X", null);

	$CoilMail�J��=false;

	$CoilMailCount++;

	VariableValue($,$CoilMail�ԍ�+"_num",$CoilMailCount);

//
	VariableValue($,$CoilMail�ԍ�+"_�l��",$CoilMail�l��);
	VariableValue($,$CoilMail�ԍ�+"_����",$CoilMail����);
	VariableValue($,$CoilMail�ԍ�+"_�Y�t",$CoilMail�Y�t);
	VariableValue($,$CoilMail�ԍ�+"_�J��",$CoilMail�J��);
//

	VariableValue($,"CoilMail�l��"+$CoilMailCount,$CoilMail�l��);
	VariableValue($,"CoilMail����"+$CoilMailCount,$CoilMail����);
	VariableValue($,"CoilMail�Y�t"+$CoilMailCount,$CoilMail�Y�t);
	VariableValue($,"CoilMail�J��"+$CoilMailCount,$CoilMail�J��);
	VariableValue($,"CoilMail�ԍ�"+$CoilMailCount,$CoilMail�ԍ�);


	$CoilTemp=$CoilMailCount;
	$CoilTempNum=VariableValue($,"CoilMail�ԍ�"+$CoilTemp);


	Position("@coilmlist_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�-42;

	//���������Ⴂ���Ȃ����C��
	$coiltempX=$CoilPreX+21;
	$coiltempY=$CoilPreY+28;
	$coiltempnut1="coilmlist_��/coilmlist_��/�`�F�b�N"+$CoilTempNum;
	CreateTexture($coiltempnut1, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�\��.png");//10090
	SetAlias($coiltempnut1, $coiltempnut1);
	Fade($coiltempnut1, 0, 0, null, false);

	//������
	SetFont("�l�r �S�V�b�N", 16, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$CoilPreX+61;
	$coiltempY=$CoilPreY+26;
	$coiltempnutW="coilmlist_��/coilmlist_��/�e�L�X�g��"+$CoilTempNum;
	CreateWindow($coiltempnutW, 10101, $coiltempX, $coiltempY, 182, 50, false);//10090//170
	SetAlias($coiltempnutW, $coiltempnutW);

	$coiltempnut2=$coiltempnutW+"/����"+$CoilTempNum;
	$coiltempimg=VariableValue($,"CoilMail����"+$CoilTemp);
	$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilMail����"+$CoilTemp));
	CreateText($coiltempnut2, 10101, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
	SetAlias($coiltempnut2, $coiltempnut2);
	Fade($coiltempnut2, 0, 0, null, false);
	Request($coiltempnut2, NoLog);

	//���l��
	SetFont("�l�r �S�V�b�N", 10, FFFFFF, 000000, MEDIUM, NULL);
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
	$coiltempX=$CoilPreX+61;
	$coiltempY=$CoilPreY+47;
	$coiltempnut3="coilmlist_��/coilmlist_��/�l��"+$CoilTempNum;
	$coiltempimg=VariableValue($,"CoilMail�l��"+$CoilTemp);
	CreateText($coiltempnut3, 10101, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
	SetAlias($coiltempnut3, $coiltempnut3);
	Fade($coiltempnut3, 0, 0, null, false);
	Request($coiltempnut3, NoLog);

	//���J��
	$coiltempX=$CoilPreX+260;
	$coiltempY=$CoilPreY+28;
	$coiltempnut4="coilmlist_��/coilmlist_��/�J��"+$CoilTempNum;
	$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ��ǃA�C�R��.png";
	CreateTexture($coiltempnut4, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
	SetAlias($coiltempnut4, $coiltempnut4);
	Fade($coiltempnut4, 0, 0, null, false);

	$coiltempnut="coilmlist_��/coilmlist_��/�J�����o"+$CoilTempNum;
	CreateTexture($coiltempnut, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, AddRender);
	Fade($coiltempnut, 0, 0, null, false);

	Request("coilmlist_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilmlist_�_�E�����[�h�v���Z�X", null);
	Fade($coilmlistpronut, 100, 0, null, false);

	$coilmlistpronut="@"+$coiltempnut;

	//���Y�t
	$coiltempX=$CoilPreX+287;
	$coiltempY=$CoilPreY+33;
	$coiltempnut5="coilmlist_��/coilmlist_��/�Y�t"+$CoilTempNum;

	if(VariableValue($,"CoilMail�Y�t"+$CoilTemp)){
		$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ�e���v�A�C�R��.png";
		CreateTexture($coiltempnut5, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
		SetAlias($coiltempnut5, $coiltempnut5);
		Fade($coiltempnut5, 0, 0, null, false);
	}

	//�����o
	$coiltempX=$CoilPreX+21-50;
	$coiltempY=$CoilPreY+28;
	$coiltempnut6="coilmlist_��/coilmlist_��/���o"+$CoilTempNum;
	CreateTexture($coiltempnut6, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/���[���V�K���o.png");//10090
	SetAlias($coiltempnut6, $coiltempnut6);
//	Request($coiltempnut6, AddRender);
//	Request($coiltempnut6, MulRender);
	Request($coiltempnut6, OverlayRender);
	Zoom($coiltempnut6, 0, 1500, 1000, null, false);


	Request("coilmlist_��/coilmlist_��/*", PushText);
	Request("coilmlist_��/coilmlist_��/*/*", PushText);


	CreateProcess("coilmlist_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilMListPro");
	SetAlias("coilmlist_�_�E�����[�h�v���Z�X", "coilmlist_�_�E�����[�h�v���Z�X");

	CreateSE("coilsound_mlist3","se����_�R�C��_�V�X�e�����[���ǉ�");
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

		Move("coilmlist_��/coilmlist_��/*", 200, @0, @42, Dxl1, false);
		Move("coilmlist_��/coilmlist_��/*/*", 200, @0, @42, Dxl1, true);

		$CoilMailSoon=false;
	}else if($CoilMailNow==($CoilMailCount-1)){
		Move("coilmlist_��/coilmlist_��/*", 150, @0, @42, Dxl1, false);
		Move("coilmlist_��/coilmlist_��/*/*", 150, @0, @42, Dxl1, true);
	
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

	Request("coilmlist_�_�E�����[�h�v���Z�X", Start);
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



..�����[���폜
function CoilMailSub2($���[�������Ώ�,$���[���ړ��b��){

		CoilMListMove($���[�������Ώ�,$���[���ړ��b��);
		WaitAction("@coilmlist_�I��", null);

		CoilMailSub3($���[�������Ώ�);
}

function CoilMailSub3($CoilMail�ԍ�){

	$TempCoilMailOK=false;

	$TempCoilMail=1;
	while($CoilMailCount>=$TempCoilMail){
		if(VariableValue($,"CoilMail�ԍ�"+$TempCoilMail)==$CoilMail�ԍ�){
			$TempCoilMailOK=true;
			break;
		}
		$TempCoilMail++;
	}
	if(!$TempCoilMailOK){
		return;
	}

	WaitAction("@coilmlist_�x�[�X�R", null);
//	WaitAction("@coilmlist_�x�[�X", null);

	//Message("�f�o�b�O�p�E�B���h�E","�f�o�b�O�p�ł�",YESNOCANCE,EXCLAMATION);

	$TempCoilMailCount1=VariableValue($,$CoilMail�ԍ�+"_num");
	$TempCoilMailCount2=$TempCoilMailCount1+1;

	$CoilTemp=$TempCoilMailCount1;
	$CoilTempNum=VariableValue($,"CoilMail�ԍ�"+$CoilTemp);

	$CoilMailCount--;
	while($CoilMailCount>=$TempCoilMailCount1){
		$CoilMail�l��=VariableValue($,"CoilMail�l��"+$TempCoilMailCount2);
		$CoilMail����=VariableValue($,"CoilMail����"+$TempCoilMailCount2);
		$CoilMail�Y�t=VariableValue($,"CoilMail�Y�t"+$TempCoilMailCount2);
		$CoilMail�J��=VariableValue($,"CoilMail�J��"+$TempCoilMailCount2);
		$CoilMail�ԍ�=VariableValue($,"CoilMail�ԍ�"+$TempCoilMailCount2);

		VariableValue($,$CoilMail�ԍ�+"_num",$TempCoilMailCount1);

		VariableValue($,"CoilMail�l��"+$TempCoilMailCount1,$CoilMail�l��);
		VariableValue($,"CoilMail����"+$TempCoilMailCount1,$CoilMail����);
		VariableValue($,"CoilMail�Y�t"+$TempCoilMailCount1,$CoilMail�Y�t);
		VariableValue($,"CoilMail�J��"+$TempCoilMailCount1,$CoilMail�J��);
		VariableValue($,"CoilMail�ԍ�"+$TempCoilMailCount1,$CoilMail�ԍ�);

		$TempCoilMailCount1++;
		$TempCoilMailCount2++;
	}


//����
//���Z���N�g�������ړ����ĊD�F�ɂ���B�����ĕ����B

	//���������Ⴂ���Ȃ����C��
	$coiltempnut1="coilmlist_��/coilmlist_��/�`�F�b�N"+$CoilTempNum;
	//������
	$coiltempnutW="coilmlist_��/coilmlist_��/�e�L�X�g��"+$CoilTempNum;
	$coiltempnut2=$coiltempnutW+"/����"+$CoilTempNum;
	//���l��
	$coiltempnut3="coilmlist_��/coilmlist_��/�l��"+$CoilTempNum;
	//���J��
	$coiltempnut4="coilmlist_��/coilmlist_��/�J��"+$CoilTempNum;
	$coiltempnut="coilmlist_��/coilmlist_��/�J�����o"+$CoilTempNum;
	$coilmlistpronut2="@"+$coiltempnut;
	//���Y�t
	$coiltempnut5="coilmlist_��/coilmlist_��/�Y�t"+$CoilTempNum;
	//�����o
	$coiltempnut6="coilmlist_��/coilmlist_��/���o"+$CoilTempNum;

	if($CoilTemp==($CoilMailCount+1)){
		Request("@coilmlist_�_�E�����[�h�v���Z�X", Stop);
		Delete("@coilmlist_�_�E�����[�h�v���Z�X");
	}

	Position($coiltempnut1,$X���W�l,$Y���W�l);

	CreateColor("coilmlist_��/coilmlist_��/coilmlist_�����F�R", 10110, $X���W�l, $Y���W�l, 298, 42, "41a4ae");
	SetAlias("coilmlist_��/coilmlist_��/coilmlist_�����F�R", "coilmlist_�����F�R");
	Request("coilmlist_��/coilmlist_��/coilmlist_�����F�R", AddRender);
	Fade("coilmlist_��/coilmlist_��/coilmlist_�����F�R", 0, 0, null, true);

	CreateColor("coilmlist_�����F�P", 10110, $X���W�l, $Y���W�l, 298, 42, "41a4ae");
	SetAlias("coilmlist_�����F�P", "coilmlist_�����F�P");
	Request("coilmlist_�����F�P", AddRender);
	Fade("coilmlist_�����F�P", 0, 0, null, true);

	CreateColor("coilmlist_�����F�Q", 10110, $X���W�l, $Y���W�l, 298, 42, "FFFFFF");
	SetAlias("coilmlist_�����F�Q", "coilmlist_�����F�Q");
	Request("coilmlist_�����F�Q", AddRender);
	Fade("coilmlist_�����F�Q", 0, 0, null, true);


	CreateWindow("coilmlist_��/coilmlist_��/coilmlist_������", 10110, $X���W�l, $Y���W�l, 298, 42, false);
	SetAlias("coilmlist_��/coilmlist_��/coilmlist_������", "coilmlist_��/coilmlist_��/coilmlist_������");

	Position("coilmlist_��",$X���W�l2,$Y���W�l2);
	CreateTexture("coilmlist_��/coilmlist_��/coilmlist_������/coilmlist_�����摜", 10110, $X���W�l2, $Y���W�l2, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�g.png");
	SetAlias("coilmlist_��/coilmlist_��/coilmlist_������/coilmlist_�����摜", "coilmlist_�����摜");
	SetTone("coilmlist_��/coilmlist_��/coilmlist_������/coilmlist_�����摜", Monochrome);
	Request("coilmlist_��/coilmlist_��/coilmlist_������/coilmlist_�����摜", AddRender);
	Fade("@coilmlist_�����摜", 0, 0, null, true);



	Move("@coilmlist_�I��", 0, $X���W�l, $Y���W�l, null, false);
	Fade("@coilmlist_�I��", 0, 0, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	CreateSE("coilsound_mlist3","se����_�R�C��_�V�X�e�����[���폜");
	MusicStart("coilsound_mlist3",0,700,0,1000,null,false);

//	Fade("@coilmlist_�I��", 300, 500, null, false);

	Fade("@coilmlist_�����F�R", 0, 300, null, false);
	Fade("@coilmlist_�����F�Q", 0, 200, null, true);

	Fade("@coilmlist_�����摜", 100, 500, null, true);

	Fade("@coilmlist_�����摜", 450, 0, null, false);

	Fade("@coilmlist_�����F�R", 300, 0, null, false);
	Zoom("@coilmlist_�����F�R", 300, 1000, 3000, null, false);

	Fade("@coilmlist_�����F�Q", 300, 100, null, false);
	Zoom("@coilmlist_�����F�Q", 300, 1000, 0, Axl2, false);

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

	Fade("@coilmlist_�����F�P", 300, 500, null, false);
	DrawTransition("@coilmlist_�����F�P", 300, 1000, 0, 100, null, "cg/data/mosaic_01_00_0.png", true);

	Delete("@coilmlist_�����F*");
	Delete("coilmlist_��/coilmlist_��/coilmlist_������");

	//�㏸
	$CoilTemp2=1;
	while($CoilTemp>$CoilTemp2){
		$CoilTempNum=VariableValue($,"CoilMail�ԍ�"+$CoilTemp2);

		//���������Ⴂ���Ȃ����C��
		$coiltempnut1="coilmlist_��/coilmlist_��/�`�F�b�N"+$CoilTempNum;
		//������
		$coiltempnutW="coilmlist_��/coilmlist_��/�e�L�X�g��"+$CoilTempNum;
		$coiltempnut2=$coiltempnutW+"/����"+$CoilTempNum;
		//���l��
		$coiltempnut3="coilmlist_��/coilmlist_��/�l��"+$CoilTempNum;
		//���J��
		$coiltempnut4="coilmlist_��/coilmlist_��/�J��"+$CoilTempNum;
		$coiltempnut="coilmlist_��/coilmlist_��/�J�����o"+$CoilTempNum;
		$coilmlistpronut2="@"+$coiltempnut;
		//���Y�t
		$coiltempnut5="coilmlist_��/coilmlist_��/�Y�t"+$CoilTempNum;
		//�����o
		$coiltempnut6="coilmlist_��/coilmlist_��/���o"+$CoilTempNum;
		
		Move($coiltempnutW, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut1, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut2, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut3, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut4, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut5, 200, @0, @-42, Dxl1, false);
		Move($coiltempnut6, 200, @0, @-42, Dxl1, false);
		Move($coilmlistpronut2, 200, @0, @-42, Dxl1, false);
		
		//CreateText("�e�L�X�g�P", 2000000, 50, 50, 700, 500, $coiltempnut1);
		//Message("�f�o�b�O�p�E�B���h�E","�f�o�b�O�p�ł�",YESNOCANCE,EXCLAMATION);
		
		$CoilTemp2++;
	}

	$CoilMailNow=$CoilMailNow-1;

	WaitAction($coiltempnut1, null);

	Fade("@coilmlist_�I��", 300, 500, null, false);
}



..�����[���ꗗ�ړ�
function CoilMListMove($CoilMail�ԍ�,$CoilMListTime){

	WaitAction("@coilmlist_�x�[�X�R", null);
//	WaitAction("@coilmlist_�x�[�X", null);

	Position("@coilmlist_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilmlist_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilmlist_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilmlist_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);

	$CoilMailNew=VariableValue($,$CoilMail�ԍ�+"_num");
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

	Position("@coilmlist_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilmlist_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilmlist_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilmlist_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);


	$CoilMailNew=$CoilMailCount-($CoilMListNum-1);//�ǂ̔ԍ��H
	$CoilMailNew2=$CoilMailNew;


	CoilMListMoveMacro();
}

function CoilMListMoveMacro(){
	$CoilMailTemp=$CoilMailNow-$CoilMailNew;
	$CoilMailMove=(-$CoilMailTemp)*42;
	$CoilMListTime2=$CoilMListTime/2;
	$CoilMListTime3=$CoilMListTime/5*2;
	$CoilMListTime4=$CoilMListTime/5*3;

	$CoilTempNum=VariableValue($,"CoilMail�ԍ�"+$CoilMailNew2);

	$coiltempnut="coilmlist_��/coilmlist_��/�`�F�b�N"+$CoilTempNum;
	Position($coiltempnut,$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX2=$X���W�l�i�[�ϐ�;
	$CoilPreY2=$Y���W�l�i�[�ϐ�;
	$CoilPreY2+=$CoilMailMove;


	CreateSE("coilsound_mlist3","se����_�R�C��_�V�X�e�����[���ړ�");
	MusicStart("coilsound_mlist3",0,700,0,1000,null,false);


	if($CoilMailMove==0){
		Move("coilmlist_��/coilmlist_��/*", $CoilMListTime, @0, @$CoilMailMove, Dxl1, false);
		Move("coilmlist_��/coilmlist_��/*/*", $CoilMListTime, @0, @$CoilMailMove, Dxl1, false);
		Move("@coilmlist_�I��", $CoilMListTime, $CoilPreX2, $CoilPreY2, Dxl1, false);

		Zoom("@coilmlist_�I��", $CoilMListTime4, 1200, 1200, Dxl1, false);
		Fade("@coilmlist_�I��", $CoilMListTime4, 100, null, true);

		Zoom("@coilmlist_�I��", $CoilMListTime3, 1000, 1000, Dxl1, false);
		Fade("@coilmlist_�I��", $CoilMListTime3, 500, Axl1, true);

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


		//�Y�[��
		$CoilMailZoom=2000*$CoilMailTemp;
		if($CoilMailZoom<0){$CoilMailZoom=-$CoilMailZoom;}
		if($CoilMailZoom>8000){
			$CoilMailZoom=8000;
		}

		Fade("@coilmlist_�I��", $CoilMListTime3, 100, null, false);

		Move("coilmlist_��/coilmlist_��/*", $CoilMListTime4, @0, @$CoilMailMove3, Axl1, false);
		Move("coilmlist_��/coilmlist_��/*/*", $CoilMListTime4, @0, @$CoilMailMove3, Axl1, false);

		Zoom("@coilmlist_�I��", $CoilMListTime3, 1200, $CoilMailZoom, Dxl1, false);
//		Move("@coilmlist_�I��", $CoilMListTime3, $CoilPreX2, $CoilMailMove2, Dxl3, false);
		Move("@coilmlist_�I��", $CoilMListTime4, $CoilPreX2, $CoilPreY2, Dxl1, false);

		WaitAction("coilmlist_��/coilmlist_��/*/*", null);


		Move("coilmlist_��/coilmlist_��/*", $CoilMListTime3, @0, @$CoilMailMove4, Dxl2, false);
		Move("coilmlist_��/coilmlist_��/*/*", $CoilMListTime3, @0, @$CoilMailMove4, Dxl2, false);
	
		Zoom("@coilmlist_�I��", $CoilMListTime3, 1000, 1000, Dxl1, false);
//		Move("@coilmlist_�I��", $CoilMListTime3, $CoilPreX2, $CoilPreY2, Axl1, false);
		Move("@coilmlist_�I��", 0, $CoilPreX2, $CoilPreY2, Dxl1, false);
		Fade("@coilmlist_�I��", $CoilMListTime3, 500, Axl1, true);
	}

	$CoilMailNow=$CoilMailNew;
}





..�����[���ꗗ���ǉ�
function CoilMListOnRead($CoilMail�ԍ�){

	$CoilMailTemp=VariableValue($,$CoilMail�ԍ�+"_num");
	VariableValue($,"CoilMail�J��"+$CoilMailTemp,true);
	VariableValue($,$CoilMail�ԍ�+"_�J��",true);
}



..�����[���ꗗ�t�F�[�h����
function CoilMListDelete(){

	Zoom("@coilmlist_��", 0, 1000, 1000, null, true);
	Zoom("coilmlist_��/�}�X�N�Q", 0, 1000, 1000, null, true);


	Position("@coilmlist_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilmlist_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilmlist_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilmlist_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);


	Request("coilmlist_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilmlist_�_�E�����[�h�v���Z�X", null);

	Fade("@coilmlist_���o*", 0, 0, null, false);
	Fade("@coilmlist_�x�[�X�R", 0, 1000, null, false);

	Zoom("coilmlist_���o", 0, 1500, 300, null, false);
	Fade("coilmlist_���o", 0, 250, null, true);

//	WaitKey();
	$coilmlistON=false;
	CoilBlack();

	MusicStart("coilsound_mlist1",0,700,0,1000,null,false);

	Zoom("coilmlist_����", 500, 1100, 0, null, false);
	Fade("coilmlist_����", 500, 1000, Dxl3, false);

	Fade("coilmlist_���o", 300, 1000, null, false);
	Zoom("coilmlist_���o", 400, 750, 0, Axl1, false);

//	Zoom("@coilmlist_�x�[�X�R", 50, 1000, 1500, null, false);
	Fade("@coilmlist_�x�[�X�R", 50, 0, null, false);
	Fade("@coilmlist_�x�[�X", 500, 500, null, false);

	Move("coilmlist_��/*/*", 500, @0, @-317, Dxl1, false);
	Move("coilmlist_��/*", 500, @0, @-317, Dxl1, false);

	Zoom("@coilmlist_�x�[�X�Q", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilmlist_�x�[�X", 500, 1000, 750, AxlAuto, false);

//	Fade("coilmlist_���o", 400, 0, Axl3, false);
//	Rotate("coilmlist_���o", 400, @-90, @0, @0, Axl3, false);


	Delete("coilmlist_�_�E�����[�h�v���Z�X");
	Request("coilmlist_��/*/*", Disused);
	Request("coilmlist_��/*", Disused);
	Request("coilmlist_���o", Disused);
	Request("coilmlist_����", Disused);
}


..�����[���Ăяo��
function CoilMailFade_MList($CoilMail�ԍ�,�b��){

	WaitAction("@coilmlist_�x�[�X�R", null);
//	WaitAction("@coilmlist_�x�[�X", null);


	$CoilMail�ԍ��Q=$CoilMail�ԍ�;
	$CoilMail�J�e=VariableValue($,$CoilMail�ԍ�+"_�J�e");

//////////////////////////////////////////////////////////////////////////////
	//���[���Z�b�g
	if($CoilMail�J�e==2){
		//CoilMailSet2($CoilMail�ԍ��Q,$coilmoveX, $coilmoveY);
		$coilmailtemp="coilmail2";
	}else{
		//CoilMailSet($CoilMail�ԍ��Q,$coilmoveX, $coilmoveY);
		$coilmailtemp="coilmail";
	}
	$coilmailtempnut=$coilmailtemp+"_��";
	Position($coilmailtempnut,$coilmoveX,$coilmoveY);

	//���e
	$coilmailtempnut0=$coilmailtemp+"*";
	$coilmailtempnut1=$coilmailtemp+"_��/*";
	$coilmailtempnut2=$coilmailtemp+"_��/*/*";
	$coilmailtempnut3=$coilmailtemp+"_��/*/*/*";

	//���x�[�X
	$coilmailbase1=$coilmailtemp+"_��/�x�[�X";
	$coilmailbase2=$coilmailtemp+"_��/�x�[�X�Q";
	$coilmailmask=$coilmailtemp+"_��/�}�X�N�Q";
	$coilmailbase3=$coilmailtemp+"_��/�}�X�N�Q/�x�[�X�R";

	//�����o
	$coiltemp���o=$coilmailtemp+"_���o";
	$coiltemp���o�F=$coilmailtemp+"_��/coilmail_���o�F";

	$coiltemp����=$coilmailtemp+"_��/������/����";
	$coiltemp�l��=$coilmailtemp+"_��/�l��";
	$coiltemp�Y�t=$coilmailtemp+"_��/�Y�t";
	$coiltemp�Y�t�Q=$coilmailtemp+"_��/�Y�t�_��";
	$coiltemp�\��=$coilmailtemp+"_��/�\��";
	$coiltemp�莆=$coilmailtemp+"_��/mail";
	$coiltemp�v��=$coilmailtemp+"_�_�E�����[�h�v���Z�X";

	if($CoilMail�J�e==2){
		$coiltemp�{��=$coilmail2_text;
	}else{
		$coiltemp�{��=$coilmail_text;
	}

	Zoom($coilmailbase1, 0, 1000, 1000, DxlAuto, false);
	Zoom($coiltemp���o, 0, 1000, 1000, null, false);

	Move($coilmailtempnut3, 0, @0, @295, Dxl1, false);
	Move($coilmailtempnut2, 0, @0, @295, Dxl1, false);
	Move($coilmailtempnut1, 0, @0, @295, Dxl1, false);
	Move($coilmailmask, 0, @0, @-257, null, false);

	Fade($coilmailtempnut0, 0, 0, null, true);
	Fade($coilmailtempnut1, 0, 0, null, true);
	Fade($coilmailtempnut2, 0, 0, null, true);
	Fade($coilmailtempnut3, 0, 0, null, true);

//////////////////////////////////////////////////////////////////////////////
	//�ړ�
	CoilMListMove($CoilMail�ԍ��Q,�b��);
//////////////////////////////////////////////////////////////////////////////

//	VariableValue($,$CoilMail�ԍ�+"_num",$CoilMailCount);

//	VariableValue($,$CoilMail�ԍ�+"_�l��",$CoilMail�l��);
//	VariableValue($,$CoilMail�ԍ�+"_����",$CoilMail����);
//	VariableValue($,$CoilMail�ԍ�+"_�Y�t",$CoilMail�Y�t);
//	VariableValue($,$CoilMail�ԍ�+"_�J��",$CoilMail�J��);

//	VariableValue($,"CoilMail�l��"+$CoilMailCount,$CoilMail�l��);
//	VariableValue($,"CoilMail����"+$CoilMailCount,$CoilMail����);
//	VariableValue($,"CoilMail�Y�t"+$CoilMailCount,$CoilMail�Y�t);
//	VariableValue($,"CoilMail�J��"+$CoilMailCount,$CoilMail�J��);
//	VariableValue($,"CoilMail�ԍ�"+$CoilMailCount,$CoilMail�ԍ�);

	$CoilTemp=VariableValue($,$CoilMail�ԍ�+"_num");
	$CoilTempNum=$CoilMail�ԍ�;

	//���������Ⴂ���Ȃ����C��
	$coiltempnut1="coilmlist_��/coilmlist_��/�`�F�b�N"+$CoilTempNum;
	Position($coiltempnut1,$coiltempX,$coiltempY);

	$coiltempnut="coilmlist_�ړ�"+$CoilTempNum;
	CreateWindow($coiltempnut, 150, $coiltempX, $coiltempY, 298, 42, false);
	SetAlias($coiltempnut, $coiltempnut);
	$coiltempnut0=$coiltempnut+"/coilmlist_��"+$CoilTempNum;
	$coiltempX2=$coiltempX-6;
	$coiltempY2=$coiltempY-6;
	CreateTexture($coiltempnut0, 10101, $coiltempX2, $coiltempY2, "cg/sys/coil/mail/�R�C���ړ����o.png");//10090
	SetAlias($coiltempnut0, $coiltempnut0);
	Request($coiltempnut0, AddRender);
//	Request($coiltempnut0, OverlayRender);
//	Request($coiltempnut0, SubRender);

/*
	$coiltempnut7="coilmlist_��/coilmlist_��/coilmlist_��"+$CoilTempNum;
	CreateTexture($coiltempnut7, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/�R�C���ړ����o.png");//10090
	SetAlias($coiltempnut7, $coiltempnut7);
//	Request($coiltempnut7, AddRender);
//	Request($coiltempnut7, OverlayRender);
	Request($coiltempnut7, SubRender);
*/
//�R�C�����[��_�ꗗ�G���^�[
//�R�C�����[��_�ꗗ�Z���N�g

	$coiltempnut1=$coiltempnut+"/�`�F�b�N"+$CoilTempNum;
	CreateTexture($coiltempnut1, 10101, $coiltempX, $coiltempY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�\��.png");//10090
	SetAlias($coiltempnut1, $coiltempnut1);

	//������
	$coiltempnut2="coilmlist_��/coilmlist_��/�e�L�X�g��"+$CoilTempNum;
	Position($coiltempnut2,$coiltempX,$coiltempY);

	SetFont("�l�r �S�V�b�N", 16, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempnut2=$coiltempnut+"/�e�L�X�g��"+$CoilTempNum;
	CreateWindow($coiltempnut2, 10101, $coiltempX, $coiltempY, 182, 50, false);//10090//170
	SetAlias($coiltempnut2, $coiltempnut2);

	$coiltempnut3=$coiltempnut2+"/����"+$CoilTempNum;
	$coiltempimg=VariableValue($,"CoilMail����"+$CoilTemp);
	$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilMail����"+$CoilTemp));
	CreateText($coiltempnut3, 10101, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
	SetAlias($coiltempnut3, $coiltempnut3);
	Request($coiltempnut3, NoLog);

	//���l��
	$coiltempnut4="coilmlist_��/coilmlist_��/�l��"+$CoilTempNum;
	Position($coiltempnut4,$coiltempX,$coiltempY);

	SetFont("�l�r �S�V�b�N", 10, FFFFFF, 000000, MEDIUM, NULL);
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
	$coiltempnut4=$coiltempnut+"/�l��"+$CoilTempNum;
	$coiltempimg=VariableValue($,"CoilMail�l��"+$CoilTemp);
	CreateText($coiltempnut4, 10101, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
	SetAlias($coiltempnut4, $coiltempnut4);
	Request($coiltempnut4, NoLog);
//		SetVertex($coiltempnut, 0, 0);

	//���J��
	$coiltempnut5="coilmlist_��/coilmlist_��/�J��"+$CoilTempNum;
	Position($coiltempnut5,$coiltempX,$coiltempY);

	$coiltempnut5=$coiltempnut+"/�J��"+$CoilTempNum;

	if(VariableValue($,"CoilMail�J��"+$CoilTemp)){
		$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ����ǃA�C�R��.png";
	}else{
		//$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ����ǃA�C�R��.png";
		$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ��ǃA�C�R��.png";
	}
	CreateTexture($coiltempnut5, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
	SetAlias($coiltempnut5, $coiltempnut5);

	//���Y�t
	$coiltempnut6="coilmlist_��/coilmlist_��/�Y�t"+$CoilTempNum;
	Position($coiltempnut6,$coiltempX,$coiltempY);

	$coiltempnut6=$coiltempnut+"/�Y�t"+$CoilTempNum;

	if(VariableValue($,"CoilMail�Y�t"+$CoilTemp)){
		$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ�e���v�A�C�R��.png";
		CreateTexture($coiltempnut6, 10101, $coiltempX, $coiltempY, $coiltempimg);//10090
		SetAlias($coiltempnut6, $coiltempnut6);
	}

	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	$coiltempnut8="coilmlist_��/coilmlist_��/coilmlist_����"+$CoilTempNum;
	CreateTexture($coiltempnut8, 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�G���^�[.png");//10010
	SetAlias($coiltempnut8, $coiltempnut8);
//	Request($coiltempnut8, AddRender);
	Fade($coiltempnut8, 0, 0, null, true);
	$coilmailnow=$coiltempnut8;

	$coiltempnut9="coilmlist_��/coilmlist_��/coilmlist_����Q"+$CoilTempNum;
	CreateTexture($coiltempnut9, 10100, $coilmlistX, $coilmlistY, "cg/sys/coil/mail/�R�C�����[��_�ꗗ�G���^�[.png");//10010
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

	Position("coilmlist_��/coilmlist_��/coilmlist_�I��",$X���W,$Y���W);
	Move($coiltempnut8, 0, $X���W, $Y���W, null, false);
	Move($coiltempnut9, 0, $X���W, $Y���W, null, false);

	$coilmoveX2=$coilmoveX-$X���W+52;
	$coilmoveY2=$coilmoveY-$Y���W+40;

////////////
	$coilmoveXA=$coilmoveX2/3;
	$coilmoveXB=$coilmoveX2/3*2;
	$coilmoveYA=$coilmoveY2-100;

//	SetBlur($coiltempnut0, true, 3, 500, 300, false);
//	SetBlur($coiltempnut1, true, 3, 500, 50, true);

//	WaitKey();

	CreateSE("coilsound_mlist4","se����_�R�C��_���쉹02");
	CreateSE("coilsound_mlist5","se����_�R�C��_�V�X�e�����[���W�J");

	MusicStart("coilsound_mlist4",0,700,0,1000,null,false);

	Fade($coiltempnut0, 0, 1000, null, false);
	Fade($coiltemp1, 0, 1000, null, false);
	Fade($coiltemp2, 0, 1000, null, true);

	Fade("coilmlist_��/coilmlist_��/coilmlist_�I��", 0, 0, null, false);
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
	Fade($coiltemp���o�F, 0, 1000, null, true);

	Move($coiltempnut0, 400, @-10, @20, Axl1, false);//�ړ�
	Move($coiltempnut1, 400, @-20, @-10, Axl1, false);//�`�F�b�N
	Move($coiltempnut3, 400, @0, @30, Axl1, false);//����
	Move($coiltempnut4, 400, @0, @-30, Axl1, false);//�l��
	Move($coiltempnut5, 400, @-20, @20, Axl1, false);//�J��
	Move($coiltempnut6, 400, @30, @-20, Axl1, false);//�Y�t

	Fade($coiltempnut0, 400, 0, null, false);
	Fade($coiltempnut1, 400, 0, null, false);
	Fade($coiltempnut3, 400, 0, null, false);
	Fade($coiltempnut4, 400, 0, null, false);
	Fade($coiltempnut5, 400, 0, null, false);
	Fade($coiltempnut6, 400, 0, null, false);

	Fade($coiltemp����, 400, 1000, null, false);
	Fade($coiltemp�l��, 400, 1000, null, false);
	Fade($coiltemp�Y�t, 400, 1000, null, false);
	Fade($coiltemp�\��, 400, 1000, null, false);
	Fade($coiltemp�莆, 400, 1000, null, false);

	Zoom($coilmailbase3, 500, 1000, 1200, Axl1, false);

	DrawTransition($coiltemp����, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition($coiltemp�l��, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition($coiltemp�\��, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	Fade($coiltemp���o�F, 500, 0, null, false);
	DrawTransition($coiltemp���o�F, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition($coiltemp�{��, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade($coiltemp�{��, 400, 1000, null, false);

	Fade($coilmailbase1, 200, 1000, null, false);
	Fade($coilmailbase2, 200, 0, null, false);
	Fade($coilmailbase3, 200, 1000, null, true);

	Fade($coilmailbase3, 200, 0, null, false);

	Request($coiltemp�v��, Start);

	WaitAction($coilmailbase3, null);



	Request("coilmlist_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilmlist_�_�E�����[�h�v���Z�X", null);
	$coiltemp�J��="coilmlist_��/coilmlist_��/�J�����o"+$CoilTempNum;
	Delete($coiltemp�J��);

	//���J��
	$coiltemp�J��="coilmlist_��/coilmlist_��/�J��"+$CoilTempNum;
	Position($coiltemp�J��,$X���W,$Y���W);

	$coiltempimg="cg/sys/coil/mail/�R�C�����[��_�ꗗ����ǃA�C�R��.png";
	CreateTexture($coiltemp�J��, 10101, $X���W, $Y���W, $coiltempimg);//10090
	SetAlias($coiltemp�J��, $coiltemp�J��);
//	WaitKey();


	//�ً}�ޔ��E�߂�
	if($LOCAL_read_text_color_change){
		#SYSTEM_read_text_color_change=$LOCAL_read_text_color_change;
	}
//////////////////////////////////////////////////////////////////////////////
	SetBacklog("�@",null,null);

}

..��NEW����̃��X�g�J��
function CoilMListFade_New(){

	Request("coilnew_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilnew_�_�E�����[�h�v���Z�X", null);
	Delete("coilnew_�_�E�����[�h�v���Z�X");

	Position("coilnew_��",$X���W1,$Y���W1);
	Position("coilmlist_��",$X���W2,$Y���W2);
	$X���W=$X���W1-$X���W2-38;
	$Y���W=$Y���W1-$Y���W2-25;

	Move("coilmlist*", 0, @$X���W, @$Y���W, null, false);
	Move("coilmlist_��/*", 0, @$X���W, @$Y���W, null, false);
	Move("coilmlist_��/*/*", 0, @$X���W, @$Y���W, null, false);
	Move("coilmlist_��/*/*/*", 0, @$X���W, @$Y���W, null, true);



	Zoom("coilmlist_��", 0, 1500, 1500, DxlAuto, false);
	Zoom("coilmlist_��/�}�X�N�Q", 0, 1500, 1500, DxlAuto, false);//������

	Zoom("@coilmlist_�x�[�X", 0, 850, 850, DxlAuto, false);
	Zoom("@coilmlist_�x�[�X�Q", 0, 750, 750, DxlAuto, false);
	Zoom("@coilmlist_�x�[�X�R", 0, 1050, 1050, DxlAuto, false);
	Move("@coilmlist_�x�[�X�R", 0, @-1, @0, Axl1, false);//������
	Fade("coilmlist_��/�x�[�X�Q", 0, 0, null, false);

	Fade("coilmlist_���o", 0, 0, null, false);
	Zoom("coilmlist_���o", 0, 1000, 1000, null, false);

	Fade("coilmlist_��/coilmlist_��/*", 0, 0, null, false);
	Fade("coilmlist_��/coilmlist_��/*/*", 0, 0, null, false);
	Zoom("coilmlist_��/coilmlist_��", 0, 1000, 1000, null, true);

//	Move("coilmlist_��/�}�X�N�Q", 0, @0, @36, null, true);//������

	Move("coilmlist_��/*/*/*", 0, @0, @317, Dxl1, false);
	Move("coilmlist_��/*/*", 0, @0, @317, Dxl1, false);
	Move("coilmlist_��/*", 0, @0, @317, Dxl1, true);

	Move("coilmlist_��/coilmlist_��", 0, @0, @100, Dxl1, false);
	Move("coilmlist_��/coilmlist_��/*", 0, @0, @100, Dxl1, false);
	Move("coilmlist_��/coilmlist_��/*/*", 0, @0, @100, Dxl1, true);


//////////////////////////////////////////////////////////////////////
	CreateSE("coilsound_mlist4","se����_�R�C��_�V�X�e�����X�g�W�J");
	MusicStart("coilsound_mlist4",0,700,0,1000,null,false);


	Zoom("coilnew_��", 0, 1500, 1500, Axl1, false);
	Zoom("coilnew_��/�}�X�N�Q", 0, 1500, 1500, Axl1, false);//������

	Move("coilnew_��/�}�X�N�Q", 0, @0, @203, null, true);//������
	Zoom("@coilnew_�x�[�X�R", 0, 1000, 1000, null, true);

	Fade("@coilnew_���o*", 0, 0, null, false);
	Fade("@coilnew_�x�[�X�Q", 0, 1000, null, false);
	Fade("@coilnew_�x�[�X�R", 0, 1000, null, true);

//	WaitKey();

//	Zoom("coilnew_����", 500, 1100, 0, null, false);
//	Fade("coilnew_����", 500, 1000, Dxl3, false);

//	Fade("coilnew_���o", 300, 1000, null, false);
//	Zoom("coilnew_���o", 400, 750, 0, Axl1, false);

	Move("coilnew_��/�}�X�N�Q", 500, @0, @100, null, false);//������//������

	Zoom("@coilnew_�x�[�X�R", 200, 1100, 1200, null, false);
	Fade("@coilnew_�x�[�X�R", 500, 0, null, false);
	Fade("@coilnew_�x�[�X�Q", 500, 0, null, false);
	Fade("@coilnew_�x�[�X", 500, 0, null, false);


//	Zoom("coilnew_��", 500, 1200, 1200, Axl1, false);
	Zoom("@coilnew_�x�[�X�Q", 500, 1200, 1200, Axl1, false);
	Zoom("@coilnew_�x�[�X", 500, 1200, 1200, Axl1, false);

	DrawTransition("@coilnew_�x�[�X�Q", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

//	Fade("coilnew_���o", 400, 0, Axl3, false);
//	Rotate("coilnew_���o", 400, @-90, @0, @0, Axl3, false);

////////////////////////////////
	Wait(100);
////////////////////////////////

//	WaitKey();
	$coilnewON=false;
	$coilmlistON=true;
	CoilBlack();

//	DrawTransition("coilmlist_��/�x�[�X", 600, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition("coilmlist_��/�x�[�X�Q", 600, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	Zoom("@coilmlist_�x�[�X", 500, 1000, 1000, DxlAuto, false);
	Zoom("@coilmlist_�x�[�X�Q", 500, 1000, 1000, DxlAuto, false);
	Fade("coilmlist_��/�x�[�X�Q", 200, 500, null, false);
	Wait(100);

	Move("coilmlist_��/�}�X�N�Q", 0, @0, @-315, null, false);//������
	Fade("coilmlist_��/�x�[�X", 300, 1000, null, false);

	Zoom("@coilmlist_�x�[�X�R", 600, 1010, 1010, Axl1, false);
	Fade("@coilmlist_�x�[�X�R", 200, 1000, null, true);
//	WaitKey();

	Move("coilmlist_��/�}�X�N�Q", 400, @0, @-100, null, false);//������//������

	Fade("coilmlist_��/�x�[�X�Q", 300, 0, null, false);

	Fade("coilmlist_��/coilmlist_��/*", 400, 1000, null, false);
	Fade("coilmlist_��/coilmlist_��/*/*", 400, 1000, null, false);
	Move("coilmlist_��/coilmlist_��/*/*", 400, @300, @0, Dxl1, false);

//	WaitKey();
	Fade("@coilmlist_�x�[�X�R", 400, 0, Axl2, false);

//	Move("@coilmlist_�x�[�X�R", 0, @1, @0, Axl1, false);//������

	Request("coilnew_��/*/*", Disused);
	Request("coilnew_��/*", Disused);
	Request("coilnew_���o", Disused);
	Request("coilnew_����", Disused);

}
















.�����[��
..�����[���Z�b�g�i10200�`10299�j
function CoilMailSet($CoilMail�ԍ�,$coilmailX, $coilmailY){

	WaitAction("@coilmlist_�x�[�X�R", null);
//	WaitAction("@coilmlist_�x�[�X", null);


	VariableValue($,$CoilMail�ԍ�+"_�J�e",1);

	CreateWindow("coilmail_��", 20000, $coilmailX, $coilmailY, 396, 576, false);
	SetAlias("coilmail_��", "coilmail_��");

	CreateTexture("coilmail_��/�x�[�X", 10200, $coilmailX, $coilmailY, "cg/sys/coil/mail/�R�C�����[��_���[���g.png");
	SetAlias("coilmail_��/�x�[�X", "coilmail_�x�[�X");
	CreateTexture("coilmail_��/�x�[�X�Q", 10206, $coilmailX, $coilmailY, "cg/sys/coil/mail/�R�C�����[��_���[���g.png");
	SetAlias("coilmail_��/�x�[�X�Q", "coilmail_�x�[�X�Q");
	SetTone("coilmail_��/�x�[�X�Q", Monochrome);

	CreateTexture("coilmail_��/��", 10206, $coilmailX, $coilmailY, "cg/sys/coil/mail/�R�C�����[��_���[���g_��.png");
	SetAlias("coilmail_��/��", "coilmail_��");
	Fade("coilmail_��/��", 0, 0, null, true);

//	CreateTexture("coilmail_��/���o�P", 10100, $coilmailX, $coilmailY, "cg/sys/coil/mail/�R�C�����[��_���M���o3.png");
//	SetAlias("coilmail_��/���o�P", "coilmail_���o�P");
//	Request("coilmail_��/���o�P", AddRender);
//	CreateTexture("coilmail_��/���o�Q", 10100, $coilmailX, $coilmailY, "cg/sys/coil/mail/�R�C�����[��_���M���o2.png");
//	SetAlias("coilmail_��/���o�Q", "coilmail_���o�Q");
//	Request("coilmail_��/���o�Q", OverlayRender);

	CreateMask("coilmail_��/�}�X�N�Q", 200, $coilmailX, $coilmailY, "cg/sys/coil/mail/�R�C�����o�g�����W3.png", false);
	SetAlias("coilmail_��/�}�X�N�Q", "coilmail_��/�}�X�N�Q");
	CreateTexture("coilmail_��/�}�X�N�Q/�x�[�X�R", 10200, $coilmailX, $coilmailY, "cg/sys/coil/mail/�R�C�����[��_���[���g.png");
	SetAlias("coilmail_��/�}�X�N�Q/�x�[�X�R", "coilmail_�x�[�X�R");
	Request("coilmail_��/�}�X�N�Q/�x�[�X�R", AddRender);


//	VariableValue($,$CoilMail�ԍ�+"_�l��");
//	VariableValue($,$CoilMail�ԍ�+"_����");
//	VariableValue($,$CoilMail�ԍ�+"_�Y�t");
//	VariableValue($,$CoilMail�ԍ�+"_�J��");


	$CoilPreX=$coilmailX;
	$CoilPreY=$coilmailY;

	//������
	SetFont("�l�r �S�V�b�N", 13, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$coilmailX+93;
	$coiltempY=$coilmailY+64;
	$coiltempnut2="coilmail_��/������";
	CreateWindow($coiltempnut2, 150, $coiltempX, $coiltempY, 170, 50, false);
	SetAlias($coiltempnut2, $coiltempnut2);

	$coiltempnut=$coiltempnut2+"/����";
	$coiltempimg=VariableValue($,$CoilMail�ԍ�+"_����");
	$temp=String("<SPAN size=0>%s</SPAN>",VariableValue($,$CoilMail�ԍ�+"_����"));
	CreateText($coiltempnut, 10200, $coiltempX, $coiltempY, Auto, Auto, $temp);
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, NoLog);
	$coiltempimg="�����y"+$coiltempimg+"�z";
	SetBacklog("�@",null,null);
	SetBacklog($coiltempimg,null,null);

	//���l��
	SetFont("�l�r �S�V�b�N", 13, FFFFFF, 000000, MEDIUM, NULL);
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
	$coiltempX=$CoilPreX+93;
	$coiltempY=$CoilPreY+37;
	$coiltempnut="coilmail_��/�l��";
	$coiltempimg=VariableValue($,$CoilMail�ԍ�+"_�l��");
	CreateText($coiltempnut, 10200, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, NoLog);
	$coiltempimg="���o�l�y"+$coiltempimg+"�z";
	SetBacklog($coiltempimg,null,null);

	//���Y�t
	$coiltempX=$CoilPreX+343;
	$coiltempY=$CoilPreY+26;
	$coiltempnut="coilmail_��/�Y�t";
	$coiltempnut2="coilmail_��/�Y�t�_��";
	$coiltempimg="cg/sys/coil/mail/�R�C�����[��_���[���e���v.png";

	if(VariableValue($,$CoilMail�ԍ�+"_�Y�t")){
		CreateTexture($coiltempnut, 10200, $coiltempX, $coiltempY, $coiltempimg);
		SetAlias($coiltempnut, $coiltempnut);
		CreateTexture($coiltempnut2, 10200, $coiltempX, $coiltempY, $coiltempimg);
		SetAlias($coiltempnut2, $coiltempnut2);
		Request($coiltempnut2, AddRender);

		CreateProcess("coilmail_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilMailPro");
		SetAlias("coilmail_�_�E�����[�h�v���Z�X", "coilmail_�_�E�����[�h�v���Z�X");
	}

	//���\��
	$coiltempX=$CoilPreX+29;
	$coiltempY=$CoilPreY+35;
	$coiltempnut="coilmail_��/�\��";
	$coiltempimg=VariableValue($,$CoilMail�ԍ�+"_�l��");

	if($coiltempimg=="�g��"||$coiltempimg=="�N���A"||$coiltempimg=="�H��"){
	}else{
		$coiltempimg="�f�t�H";
	}
	$coiltempimg="cg/sys/coil/mail/�R�C�����[��_���[��"+$coiltempimg+"�A�C�R��.png";
	CreateTexture($coiltempnut, 10200, $coiltempX, $coiltempY, $coiltempimg);
	SetAlias($coiltempnut, $coiltempnut);

	//���e�L�X�g
	SetFont("�l�r �S�V�b�N", 15, FFFFFF, 000000, MEDIUM, NULL);
	$coiltempX=$CoilPreX+32;
	$coiltempY=$CoilPreY+101;

	$coiltempnut2="coilmail_��/mail";
	CreateWindow($coiltempnut2, 10200, $coiltempX, $coiltempY, 350, 140, false);
	SetAlias($coiltempnut2, "mail");

	MailText();

	//�ً}�ޔ�
	$LOCAL_read_text_color_change=#SYSTEM_read_text_color_change;
	#SYSTEM_read_text_color_change=false;

	$coilmail_text="@"+$CoilMail�ԍ�;
//	LoadText($SYSTEM_present_process,$SYSTEM_present_preprocess,$SYSTEM_present_text,300,200,0,20);
	LoadText("MailText","@mail",$coilmail_text,350,300,-1,18);
	Fade($coilmail_text, 0, 0, null, false);
	Request($coilmail_text, Enter);
	Move($coilmail_text, 0, $coiltempX, $coiltempY, null, true);

//	Request($SYSTEM_present_text, Erase);
//	Request($SYSTEM_present_text, Lock);
//	Request($SYSTEM_present_text, Hideable);

	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilmail_��/*", PushText);
	Request("coilmail_��/*/*", PushText);
	Request($coilmail_text, PushText);

	//�����o
	$coilmail_V=ImageVertical($coilmail_text);
	CreateColor("coilmail_��/coilmail_���o�F", 10200, $coiltempX, $coiltempY, 350, $coilmail_V, "41a4ae");//WHITE
	SetAlias("coilmail_��/coilmail_���o�F", "coilmail_���o�F");
	Request("coilmail_��/coilmail_���o�F", AddRender);





	$coilmailX4=$coilmailX-20;
	$coilmailY4=$coilmailY-8;
	CreateTexture("coilmail_���o", 10205, $coilmailX4, $coilmailY4, "cg/sys/coil/mail/�R�C�����o3.png");
	SetAlias("coilmail_���o", "coilmail_���o");
	Request("coilmail_���o", AddRender);
	Fade("coilmail_���o", 0, 0, null, true);
	Zoom("coilmail_���o", 0, 1000, 0, Dxl1, true);


	CreateTexture("coilmail_����", 10205, $coilmailX, $coilmailY, "cg/sys/coil/mail/�R�C�����[��_�{�����o.png");
	SetAlias("coilmail_����", "coilmail_����");
	Request("coilmail_����", AddRender);
	Fade("coilmail_����", 0, 0, null, true);
	SetVertex("coilmail_����", 130, 0);
	Zoom("coilmail_����", 0, 1200, 1000, null, false);


//	CreateProcess("coilmail_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilNewPro");
//	SetAlias("coilmail_�_�E�����[�h�v���Z�X", "coilmail_�_�E�����[�h�v���Z�X");

	Move("coilmail_��/*", 0, @0, @-295, Dxl1, false);
	Move("coilmail_��/*/*", 0, @0, @-295, Dxl1, false);
	Move("coilmail_��/*/*/*", 0, @0, @-295, Dxl1, true);

	Fade("@coilmail_�x�[�X�R", 0, 0, null, false);
	Fade("coilmail_��/�x�[�X", 0, 750, null, true);

//	SetVertex("@coilmail_�x�[�X�R", 168, 0);
//	Zoom("@coilmail_�x�[�X�R", 0, 1000, 500, null, true);

	SetVertex("@coilmail_�x�[�X", 198, 0);
	Zoom("@coilmail_�x�[�X", 0, 1000, 1000, null, true);
	Fade("@coilmail_�x�[�X", 0, 0, null, true);

	//�J��
	$CoilMailTemp=VariableValue($,$CoilMail�ԍ�+"_num");
	VariableValue($,"CoilMail�J��"+$CoilMailTemp,true);

	CreateSE("coilsound_mail1","se����_�R�C��_�V�X�e���I�[�v��");
	CreateSE("coilsound_mail2","se����_�R�C��_�V�X�e���N���[�Y");
}


..�����[���\��
function CoilMailFade(){
	MusicStart("coilsound_mail1",0,700,0,1000,null,false);

	Zoom("@coilmail_�x�[�X", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilmail_���o*", 800, 0, null, false);

//	Fade("coilmail_���o", 0, 350, null, false);
//	Zoom("coilmail_���o", 200, 1500, 200, null, false);

//	Fade("coilmail_��/�x�[�X�Q", 300, 500, null, false);
//	Fade("coilmail_��/�x�[�X", 300, 1000, null, false);
//	Move("coilmail_��/*/*", 300, @0, @36, Dxl1, false);
//	Move("coilmail_��/*", 300, @0, @36, Dxl1, true);

	Fade("coilmail_���o", 0, 350, null, false);
	Zoom("coilmail_���o", 150, 1500, 200, null, false);

	Fade("coilmail_��/�x�[�X�Q", 200, 500, null, false);
//	Fade("coilmail_��/�x�[�X", 200, 1000, null, false);
	Move("coilmail_��/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmail_��/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmail_��/*", 200, @0, @36, Dxl1, true);


//	WaitKey();
	$coilmailON=true;
	CoilBlack();

	Fade("coilmail_���o", 0, 1000, null, true);

	DrawTransition("coilmail_��/coilmail_���o�F", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition($coilmail_text, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade($coilmail_text, 400, 1000, null, false);

	Fade("coilmail_��/�x�[�X", 200, 1000, null, false);
	Fade("coilmail_��/�x�[�X�Q", 200, 0, null, false);
	Fade("@coilmail_�x�[�X�R", 200, 1000, null, false);

	Fade("coilmail_���o", 500, 0, Axl2, false);
	Zoom("coilmail_���o", 200, 1000, 1000, null, false);

	Move("coilmail_��/*/*/*", 500, @0, @259, Dxl1, false);
	Move("coilmail_��/*/*", 500, @0, @259, Dxl1, false);
	Move("coilmail_��/*", 500, @0, @259, Dxl1, false);

//	Move("coilmail_��/�}�X�N�Q", 500, @0, @-313, null, false);
	Move("coilmail_��/�}�X�N�Q", 500, @0, @-293, null, false);

	Zoom("@coilmail_�x�[�X�R", 500, 1000, 1200, Axl1, false);

	Request("coilmail_�_�E�����[�h�v���Z�X", Start);

	//�ً}�ޔ��E�߂�
	if($LOCAL_read_text_color_change){
		#SYSTEM_read_text_color_change=$LOCAL_read_text_color_change;
	}

	SetBacklog("�@",null,null);
}




..�����[���\���v���Z�X�i�Y�t����j
function CoilMailPro(){
	WaitAction("@coilmail_��/*", null);

	while(1){
		Fade("@coilmail_��/�Y�t�_��", 700, 1000, Axl1, true);
		Fade("@coilmail_��/�Y�t�_��", 400, 32, null, true);
	}
}




..�����[���\���t�F�[�h����
function CoilMailDelete(){

	Position("@coilmail_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilmail_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilmail_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilmail_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);


	Request("coilmail_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilmail_�_�E�����[�h�v���Z�X", null);

	Fade("@coilmail_���o*", 0, 0, null, false);
	Fade("@coilmail_�x�[�X�R", 0, 1000, null, false);

	Zoom("coilmail_���o", 0, 1500, 300, null, false);
	Fade("coilmail_���o", 0, 250, null, true);

//	WaitKey();
	$coilmailON=false;
	CoilBlack();

	MusicStart("coilsound_mail2",0,700,0,1000,null,false);

	Zoom("coilmail_����", 500, 1100, 0, null, false);
	Fade("coilmail_����", 500, 1000, Dxl3, false);

	Fade("coilmail_���o", 300, 1000, null, false);
	Zoom("coilmail_���o", 400, 750, 0, Axl1, false);

//	Zoom("@coilmail_�x�[�X�R", 50, 1000, 1500, null, false);
	Fade("@coilmail_�x�[�X�R", 50, 0, null, false);
	Fade("@coilmail_�x�[�X", 500, 500, null, false);

	Move("coilmail_��/*/*", 500, @0, @-295, Dxl1, false);
	Move("coilmail_��/*", 500, @0, @-295, Dxl1, false);

	Zoom("@coilmail_�x�[�X�Q", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilmail_�x�[�X", 500, 1000, 750, AxlAuto, false);

//	Fade("coilmail_���o", 400, 0, Axl3, false);
//	Rotate("coilmail_���o", 400, @-90, @0, @0, Axl3, false);

	Fade($coilmailnow, 500, 0, null, false);

	Delete("coilmail_�_�E�����[�h�v���Z�X");
	Request("coilmail_��/*/*", Disused);
	Request("coilmail_��/*", Disused);
	Request("coilmail_���o", Disused);
	Request("coilmail_����", Disused);
	Request($coilmailnow, Disused);
}




.�����[��2
..�����[���Z�b�g
function CoilMailSet2($CoilMail�ԍ�,$coilmail2X, $coilmail2Y){

	VariableValue($,$CoilMail�ԍ�+"_�J�e",2);

	CreateWindow("coilmail2_��", 20000, $coilmail2X, $coilmail2Y, 396, 576, false);
	SetAlias("coilmail2_��", "coilmail2_��");

	CreateTexture("coilmail2_��/�x�[�X", 10210, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/�R�C�����[��_���[���g.png");
	SetAlias("coilmail2_��/�x�[�X", "coilmail2_�x�[�X");
	CreateTexture("coilmail2_��/�x�[�X�Q", 10216, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/�R�C�����[��_���[���g.png");
	SetAlias("coilmail2_��/�x�[�X�Q", "coilmail2_�x�[�X�Q");
	SetTone("coilmail2_��/�x�[�X�Q", Monochrome);

	CreateTexture("coilmail2_��/��", 10216, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/�R�C�����[��_���[���g_��.png");
	SetAlias("coilmail2_��/��", "coilmail2_��");
	Fade("coilmail2_��/��", 0, 0, null, true);

//	CreateTexture("coilmail2_��/���o�P", 10100, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/�R�C�����[��_���M���o3.png");
//	SetAlias("coilmail2_��/���o�P", "coilmail2_���o�P");
//	Request("coilmail2_��/���o�P", AddRender);
//	CreateTexture("coilmail2_��/���o�Q", 10100, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/�R�C�����[��_���M���o2.png");
//	SetAlias("coilmail2_��/���o�Q", "coilmail2_���o�Q");
//	Request("coilmail2_��/���o�Q", OverlayRender);

	CreateMask("coilmail2_��/�}�X�N�Q", 200, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/�R�C�����o�g�����W3.png", false);
	SetAlias("coilmail2_��/�}�X�N�Q", "coilmail2_��/�}�X�N�Q");
	CreateTexture("coilmail2_��/�}�X�N�Q/�x�[�X�R", 10210, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/�R�C�����[��_���[���g.png");
	SetAlias("coilmail2_��/�}�X�N�Q/�x�[�X�R", "coilmail2_�x�[�X�R");
	Request("coilmail2_��/�}�X�N�Q/�x�[�X�R", AddRender);


//	VariableValue($,$CoilMail�ԍ�+"_�l��");
//	VariableValue($,$CoilMail�ԍ�+"_����");
//	VariableValue($,$CoilMail�ԍ�+"_�Y�t");
//	VariableValue($,$CoilMail�ԍ�+"_�J��");


	$CoilPreX=$coilmail2X;
	$CoilPreY=$coilmail2Y;

	//������
	SetFont("�l�r �S�V�b�N", 13, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-2;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$coilmail2X+93;
	$coiltempY=$coilmail2Y+64;
	$coiltempnut2="coilmail2_��/������";
	CreateWindow($coiltempnut2, 150, $coiltempX, $coiltempY, 170, 50, false);
	SetAlias($coiltempnut2, $coiltempnut2);

	$coiltempnut=$coiltempnut2+"/����";
	$coiltempimg=VariableValue($,$CoilMail�ԍ�+"_����");
	$temp=String("<SPAN size=0>%s</SPAN>",VariableValue($,$CoilMail�ԍ�+"_����"));
	CreateText($coiltempnut, 10210, $coiltempX, $coiltempY, Auto, Auto, $temp);
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, NoLog);
	$coiltempimg="�����y"+$coiltempimg+"�z";
	SetBacklog("�@",null,null);
	SetBacklog($coiltempimg,null,null);

	//���l��
	SetFont("�l�r �S�V�b�N", 13, FFFFFF, 000000, MEDIUM, NULL);
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;
	$coiltempX=$CoilPreX+93;
	$coiltempY=$CoilPreY+37;
	$coiltempnut="coilmail2_��/�l��";
	$coiltempimg=VariableValue($,$CoilMail�ԍ�+"_�l��");
	CreateText($coiltempnut, 10210, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);
	SetAlias($coiltempnut, $coiltempnut);
	Request($coiltempnut, NoLog);
	$coiltempimg="���o�l�y"+$coiltempimg+"�z";
	SetBacklog("�@",null,null);
	SetBacklog($coiltempimg,null,null);

	//���Y�t
	$coiltempX=$CoilPreX+343;
	$coiltempY=$CoilPreY+26;
	$coiltempnut="coilmail2_��/�Y�t";
	$coiltempnut2="coilmail2_��/�Y�t�_��";
	$coiltempimg="cg/sys/coil/mail/�R�C�����[��_���[���e���v.png";

	if(VariableValue($,$CoilMail�ԍ�+"_�Y�t")){
		CreateTexture($coiltempnut, 10210, $coiltempX, $coiltempY, $coiltempimg);
		SetAlias($coiltempnut, $coiltempnut);
		CreateTexture($coiltempnut2, 10210, $coiltempX, $coiltempY, $coiltempimg);
		SetAlias($coiltempnut2, $coiltempnut2);
		Request($coiltempnut2, AddRender);

		CreateProcess("coilmail2_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilMailPro2");
		SetAlias("coilmail2_�_�E�����[�h�v���Z�X", "coilmail2_�_�E�����[�h�v���Z�X");
	}

	//���\��
	$coiltempX=$CoilPreX+29;
	$coiltempY=$CoilPreY+35;
	$coiltempnut="coilmail2_��/�\��";
	$coiltempimg=VariableValue($,$CoilMail�ԍ�+"_�l��");

	if($coiltempimg=="�g��"||$coiltempimg=="�N���A"||$coiltempimg=="�H��"){
	}else{
		$coiltempimg="�f�t�H";
	}
	$coiltempimg="cg/sys/coil/mail/�R�C�����[��_���[��"+$coiltempimg+"�A�C�R��.png";
	CreateTexture($coiltempnut, 10210, $coiltempX, $coiltempY, $coiltempimg);
	SetAlias($coiltempnut, $coiltempnut);

	//���e�L�X�g
	SetFont("�l�r �S�V�b�N", 15, FFFFFF, 000000, MEDIUM, NULL);
	$coiltempX=$CoilPreX+32;
	$coiltempY=$CoilPreY+101;

	$coiltempnut2="coilmail2_��/mail";
	CreateWindow($coiltempnut2, 10210, $coiltempX, $coiltempY, 350, 140, false);
	SetAlias($coiltempnut2, "mail");

	MailText();

	//�ً}�ޔ�
	$LOCAL_read_text_color_change=#SYSTEM_read_text_color_change;
	#SYSTEM_read_text_color_change=false;

	$coilmail2_text="@"+$CoilMail�ԍ�;
//	LoadText($SYSTEM_present_process,$SYSTEM_present_preprocess,$SYSTEM_present_text,300,200,0,20);
	LoadText("MailText","@mail",$coilmail2_text,350,300,-3,18);
	Fade($coilmail2_text, 0, 0, null, false);
	Request($coilmail2_text, Enter);
	Move($coilmail2_text, 0, $coiltempX, $coiltempY, null, true);

//	Request($SYSTEM_present_text, Erase);
//	Request($SYSTEM_present_text, Lock);
//	Request($SYSTEM_present_text, Hideable);

	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilmail2_��/*", PushText);
	Request("coilmail2_��/*/*", PushText);
	Request($coilmail2_text, PushText);

	//�����o
	$coilmail2_V=ImageVertical($coilmail_text);
	CreateColor("coilmail2_��/coilmail2_���o�F", 10210, $coiltempX, $coiltempY, 350, $coilmail2_V, "41a4ae");//WHITE
	SetAlias("coilmail2_��/coilmail2_���o�F", "coilmail2_���o�F");
	Request("coilmail2_��/coilmail2_���o�F", AddRender);



	$coilmail2X4=$coilmail2X-20;
	$coilmail2Y4=$coilmail2Y-8;
	CreateTexture("coilmail2_���o", 10215, $coilmail2X4, $coilmail2Y4, "cg/sys/coil/mail/�R�C�����o3.png");
	SetAlias("coilmail2_���o", "coilmail2_���o");
	Request("coilmail2_���o", AddRender);
	Fade("coilmail2_���o", 0, 0, null, true);
	Zoom("coilmail2_���o", 0, 1000, 0, Dxl1, true);


	CreateTexture("coilmail2_����", 10215, $coilmail2X, $coilmail2Y, "cg/sys/coil/mail/�R�C�����[��_�{�����o.png");
	SetAlias("coilmail2_����", "coilmail2_����");
	Request("coilmail2_����", AddRender);
	Fade("coilmail2_����", 0, 0, null, true);
	SetVertex("coilmail2_����", 130, 0);
	Zoom("coilmail2_����", 0, 1200, 1000, null, false);


//	CreateProcess("coilmail2_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilNewPro");
//	SetAlias("coilmail2_�_�E�����[�h�v���Z�X", "coilmail2_�_�E�����[�h�v���Z�X");

	Move("coilmail2_��/*", 0, @0, @-295, Dxl1, false);
	Move("coilmail2_��/*/*", 0, @0, @-295, Dxl1, false);
	Move("coilmail2_��/*/*/*", 0, @0, @-295, Dxl1, true);

	Fade("@coilmail2_�x�[�X�R", 0, 0, null, false);
	Fade("coilmail2_��/�x�[�X", 0, 750, null, true);

//	SetVertex("@coilmail2_�x�[�X�R", 168, 0);
//	Zoom("@coilmail2_�x�[�X�R", 0, 1000, 500, null, true);

	SetVertex("@coilmail2_�x�[�X", 198, 0);
	Zoom("@coilmail2_�x�[�X", 0, 1000, 1000, null, true);
	Fade("@coilmail2_�x�[�X", 0, 0, null, true);

	//�J��
	$CoilMailTemp=VariableValue($,$CoilMail�ԍ�+"_num");
	VariableValue($,"CoilMail�J��"+$CoilMailTemp,true);

	CreateSE("coilsound2_mail1","se����_�R�C��_�V�X�e���I�[�v��");
	CreateSE("coilsound2_mail2","se����_�R�C��_�V�X�e���N���[�Y");
}


..�����[���\��
function CoilMailFade2(){
	MusicStart("coilsound2_mail1",0,700,0,1000,null,false);

	Zoom("@coilmail2_�x�[�X", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilmail2_���o*", 800, 0, null, false);

//	Fade("coilmail2_���o", 0, 350, null, false);
//	Zoom("coilmail2_���o", 200, 1500, 200, null, false);

//	Fade("coilmail2_��/�x�[�X�Q", 300, 500, null, false);
//	Fade("coilmail2_��/�x�[�X", 300, 1000, null, false);
//	Move("coilmail2_��/*/*", 300, @0, @36, Dxl1, false);
//	Move("coilmail2_��/*", 300, @0, @36, Dxl1, true);

	Fade("coilmail2_���o", 0, 350, null, false);
	Zoom("coilmail2_���o", 150, 1500, 200, null, false);

	Fade("coilmail2_��/�x�[�X�Q", 200, 500, null, false);
//	Fade("coilmail2_��/�x�[�X", 200, 1000, null, false);
	Move("coilmail2_��/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmail2_��/*/*", 200, @0, @36, Dxl1, false);
	Move("coilmail2_��/*", 200, @0, @36, Dxl1, true);


//	WaitKey();
	$coilmail2ON=true;
	CoilBlack();

	Fade("coilmail2_���o", 0, 1000, null, true);

	DrawTransition("coilmail2_��/coilmail2_���o�F", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition($coilmail2_text, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade($coilmail2_text, 400, 1000, null, false);

	Fade("coilmail2_��/�x�[�X", 200, 1000, null, false);
	Fade("coilmail2_��/�x�[�X�Q", 200, 0, null, false);
	Fade("@coilmail2_�x�[�X�R", 200, 1000, null, false);

	Fade("coilmail2_���o", 500, 0, Axl2, false);
	Zoom("coilmail2_���o", 200, 1000, 1000, null, false);

	Move("coilmail2_��/*/*/*", 500, @0, @259, Dxl1, false);
	Move("coilmail2_��/*/*", 500, @0, @259, Dxl1, false);
	Move("coilmail2_��/*", 500, @0, @259, Dxl1, false);

//	Move("coilmail2_��/�}�X�N�Q", 500, @0, @-313, null, false);
	Move("coilmail2_��/�}�X�N�Q", 500, @0, @-293, null, false);

	Zoom("@coilmail2_�x�[�X�R", 500, 1000, 1200, Axl1, false);

	Request("coilmail2_�_�E�����[�h�v���Z�X", Start);

	//�ً}�ޔ��E�߂�
	if($LOCAL_read_text_color_change){
		#SYSTEM_read_text_color_change=$LOCAL_read_text_color_change;
	}

	SetBacklog("�@",null,null);
}




..�����[���\���v���Z�X�i�Y�t����j
function CoilMailPro2(){
	WaitAction("@coilmail2_��/*", null);

	while(1){
		Fade("@coilmail2_��/�Y�t�_��", 700, 1000, Axl1, true);
		Fade("@coilmail2_��/�Y�t�_��", 400, 32, null, true);
	}
}




..�����[���\���t�F�[�h����
function CoilMailDelete2(){

	Position("@coilmail2_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilmail2_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilmail2_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilmail2_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);


	Request("coilmail2_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilmail2_�_�E�����[�h�v���Z�X", null);

	Fade("@coilmail2_���o*", 0, 0, null, false);
	Fade("@coilmail2_�x�[�X�R", 0, 1000, null, false);

	Zoom("coilmail2_���o", 0, 1500, 300, null, false);
	Fade("coilmail2_���o", 0, 250, null, true);

//	WaitKey();
	$coilmail2ON=false;
	CoilBlack();

	MusicStart("coilsound2_mail2",0,700,0,1000,null,false);

	Zoom("coilmail2_����", 500, 1100, 0, null, false);
	Fade("coilmail2_����", 500, 1000, Dxl3, false);

	Fade("coilmail2_���o", 300, 1000, null, false);
	Zoom("coilmail2_���o", 400, 750, 0, Axl1, false);

//	Zoom("@coilmail2_�x�[�X�R", 50, 1000, 1500, null, false);
	Fade("@coilmail2_�x�[�X�R", 50, 0, null, false);
	Fade("@coilmail2_�x�[�X", 500, 500, null, false);

	Move("coilmail2_��/*/*", 500, @0, @-295, Dxl1, false);
	Move("coilmail2_��/*", 500, @0, @-295, Dxl1, false);

	Zoom("@coilmail2_�x�[�X�Q", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilmail2_�x�[�X", 500, 1000, 750, AxlAuto, false);

//	Fade("coilmail2_���o", 400, 0, Axl3, false);
//	Rotate("coilmail2_���o", 400, @-90, @0, @0, Axl3, false);

	Fade($coilmail2now, 500, 0, null, false);

	Delete("coilmail2_�_�E�����[�h�v���Z�X");
	Request("coilmail2_��/*/*", Disused);
	Request("coilmail2_��/*", Disused);
	Request("coilmail2_���o", Disused);
	Request("coilmail2_����", Disused);
	Request($coilmail2now, Disused);
}









.���Q�[���_�E�����[�h���I
..���D��x�P�i10900�`10909�j
function CoilDownSet($coildownX,$coildownY){

	$CoilDownNum=1;

	$CoilDownSetPri=10900;
	CoilDownSetBase();
}

..���D��x�Q�i10900�`10909�j
function CoilDownSetPri($coildownX,$coildownY,$CoilDownSetPri){
	$CoilDownNum=2;

	CoilDownSetBase();
}



..����`�i10900�`10909�j
function CoilDownSetBase(){
//382
//159

	CreateWindow("coildown_��", 20000, $coildownX, $coildownY, 260, 576, false);
	SetAlias("coildown_��", "coildown_��");

	$CoilDownSetPriTemp=$CoilDownSetPri+9;
	CreateTexture("coildown_��/�x�[�X", $CoilDownSetPri, $coildownX, $coildownY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g.png");//10400
	SetAlias("coildown_��/�x�[�X", "coildown_�x�[�X");
	CreateTexture("coildown_��/�x�[�X�Q", $CoilDownSetPriTemp, $coildownX, $coildownY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g.png");//10900
	SetAlias("coildown_��/�x�[�X�Q", "coildown_�x�[�X�Q");
	SetTone("coildown_��/�x�[�X�Q", Monochrome);

	$CoilDownSetPriTemp=$CoilDownSetPri+9;
	CreateTexture("coildown_��/��", $CoilDownSetPriTemp, $coildownX, $coildownY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g_��.png");//10900
	SetAlias("coildown_��/��", "coildown_��");
	Fade("coildown_��/��", 0, 0, null, true);

//	CreateTexture("coildown_��/�x�[�X�R", 10100, $coildownX, $coildownY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g.png");
//	SetAlias("coildown_��/�x�[�X�R", "coildown_�x�[�X�R");
//	Request("coildown_��/�x�[�X�R", AddRender);

	$CoilDownSetPriTemp=$CoilDownSetPri+5;
	CreateMask("coildown_��/�}�X�N�Q", 200, $coildownX, $coildownY, "cg/sys/coil/window/�R�C�����o�g�����W.png", false);
	SetAlias("coildown_��/�}�X�N�Q", "coildown_��/�}�X�N�Q");
	CreateTexture("coildown_��/�}�X�N�Q/�x�[�X�R", $CoilDownSetPriTemp, $coildownX, $coildownY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g.png");//10500
	SetAlias("coildown_��/�}�X�N�Q/�x�[�X�R", "coildown_�x�[�X�R");
	Request("coildown_��/�}�X�N�Q/�x�[�X�R", AddRender);


	$CoilDownSetPriTemp=$CoilDownSetPri+1;
	$coildownX2=$coildownX+28;
	$coildownY2=$coildownY+63;
	CreateTexture("coildown_��/�g", $CoilDownSetPriTemp, $coildownX2, $coildownY2, "cg/sys/coil/window/�R�C�����[��_�Q�[�W�g.png");//10410
	SetAlias("coildown_��/�g", "coildown_�g");
	CreateTexture("coildown_��/���[�h", $CoilDownSetPriTemp, $coildownX2, $coildownY2, "cg/sys/coil/window/�R�C�����[��_�Q�[�W���[�h2.png");//10420
	SetAlias("coildown_��/���[�h", "coildown_���[�h");

	CreateWindow("coildown_��/�}�X�N", 20000, $coildownX, $coildownY, 260, 144, false);
	SetAlias("coildown_��/�}�X�N", "coildown_��/�}�X�N");
	CreateTexture("coildown_��/�}�X�N/�o�[", $CoilDownSetPriTemp, $coildownX2, $coildownY2, "cg/sys/coil/window/�R�C�����[��_�Q�[�W�o�[2.png");//10420
	SetAlias("coildown_��/�}�X�N/�o�[", "coildown_�o�[");

	$coildownX3=$coildownX+54;
	$coildownY3=$coildownY+44;
	CreateTexture("coildown_��/�_�E�����[�h", $CoilDownSetPri, $coildownX3, $coildownY3, "cg/sys/coil/window/�R�C�����[��_�C���X�g�\��DOWNLOADING.png");//10400
	SetAlias("coildown_��/�_�E�����[�h", "coildown_�_�E�����[�h");
	CreateTexture("coildown_��/�R���v���[�g", $CoilDownSetPri, $coildownX3, $coildownY3, "cg/sys/coil/window/�R�C�����[��_�C���X�g�\��COMPLETED.png");//10400
	SetAlias("coildown_��/�R���v���[�g", "coildown_�R���v���[�g");
	CreateTexture("coildown_��/�R���v���[�g�Q", $CoilDownSetPri, $coildownX3, $coildownY3, "cg/sys/coil/window/�R�C�����[��_�C���X�g�\��COMPLETED.png");//10400
	SetAlias("coildown_��/�R���v���[�g�Q", "coildown_�R���v���[�g�Q");
	Request("coildown_��/�R���v���[�g�Q", AddRender);

	$CoilDownSetPriTemp=$CoilDownSetPri+4;
	$coildownX4=$coildownX-20;
	$coildownY4=$coildownY-8;
	CreateTexture("coildown_���o", $CoilDownSetPriTemp, $coildownX4, $coildownY4, "cg/sys/coil/window/�R�C�����o.png");//10430
	SetAlias("coildown_���o", "coildown_���o");
	Request("coildown_���o", AddRender);
	Fade("coildown_���o", 0, 0, null, true);
	Zoom("coildown_���o", 0, 1000, 0, Dxl1, true);

	$CoilDownSetPriTemp=$CoilDownSetPri+6;
	CreateTexture("coildown_����", $CoilDownSetPriTemp, $coildownX, $coildownY, "cg/sys/coil/window/�R�C�����[��_���M���o.png");//10530
	SetAlias("coildown_����", "coildown_����");
	Request("coildown_����", AddRender);
	Fade("coildown_����", 0, 0, null, true);
	SetVertex("coildown_����", 130, 0);
	Zoom("coildown_����", 0, 1200, 1000, null, false);


	Move("coildown_��/�}�X�N", 0, @-260, @0, Dxl1, true);
	Move("coildown_��/*", 0, @0, @-159, Dxl1, false);
	Move("coildown_��/*/*", 0, @0, @-159, Dxl1, true);

	SetVertex("coildown_��/�_�E�����[�h", 75, 20);
	Zoom("coildown_��/�_�E�����[�h", 0, 1000, 5000, null, false);
//	Rotate("coildown_��/�_�E�����[�h", 0, @0, @30, @0, null, true);

	Fade("coildown_��/�g", 0, 0, null, false);
	Fade("coildown_��/���[�h", 0, 0, null, false);
	Fade("coildown_��/�_�E�����[�h", 0, 0, null, false);
	Fade("coildown_��/�R���v���[�g", 0, 0, null, false);
	Fade("coildown_��/�R���v���[�g�Q", 0, 0, null, false);

	Fade("@coildown_�x�[�X�R", 0, 0, null, false);
	Fade("coildown_��/�x�[�X", 0, 750, null, true);

	CreateSE("coilsound_down1","se����_�R�C��_�V�X�e���I�[�v��");
	CreateSE("coilsound_down2","se����_�R�C��_�V�X�e���N���[�Y");
	CreateSE("coilsound_down3","se����_�R�C��_�Q�[�W���܂�01L");
	CreateSE("coilsound_down4","se����_�R�C��_�V�X�e���A���[�g");
}



..���_�E�����[�h�\��
function CoilDownFade(){
	MusicStart("coilsound_down1",0,700,0,1000,null,false);

	Fade("coildown_���o", 0, 350, null, false);
	Zoom("coildown_���o", 200, 1500, 200, null, false);

	Fade("coildown_��/�x�[�X�Q", 300, 500, null, false);
	Fade("coildown_��/�x�[�X", 300, 200, null, false);
	Move("coildown_��/*/*", 300, @0, @35, Dxl1, false);
	Move("coildown_��/*", 300, @0, @35, Dxl1, true);

//	WaitKey();
	if($CoilDownNum==2){
		$coildownpriON=true;
	}else{
		$coildownON=true;
	}

	CoilBlack();

	Fade("coildown_���o", 0, 1000, null, true);

	Fade("coildown_��/�_�E�����[�h", 0, 500, null, false);
	Zoom("coildown_��/�_�E�����[�h", 400, 1000, 1000, Axl2, false);
	Rotate("coildown_��/�_�E�����[�h", 500, 0, 0, 0, Axl2, false);

	Fade("coildown_��/�x�[�X", 200, 1000, null, false);
	Fade("coildown_��/�x�[�X�Q", 200, 0, null, false);
	Fade("@coildown_�x�[�X�R", 200, 1000, null, false);

	Fade("coildown_���o", 400, 0, Axl2, false);
	Zoom("coildown_���o", 200, 1000, 1000, null, false);

	Move("coildown_��/*/*", 500, @0, @124, Dxl1, false);
	Move("coildown_��/*", 500, @0, @124, Dxl1, false);

//	Move("coildown_��/�}�X�N�Q", 500, @0, @-130, AxlAuto, false);
//	Move("coildown_��/�}�X�N�Q", 500, @0, @-155, null, false);
	Move("coildown_��/�}�X�N�Q", 500, @0, @-155, null, false);

	Zoom("@coildown_�x�[�X�R", 500, 1000, 1200, Axl1, false);
//	WaitAction("@coildown_�x�[�X�R", null);

//	Fade("@coildown_�x�[�X�R", 100, 0, null, false);

}








..���_�E�����[�h�J�n
function CoilDownStart(�b��){

	WaitAction("@coildown_�x�[�X�R", null);

	CreateProcess("coildown_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilDownPro");
	SetAlias("coildown_�_�E�����[�h�v���Z�X", "coildown_�_�E�����[�h�v���Z�X");

	SetVertex("coildown_��/�g", 99, 33);
	SetVertex("coildown_��/���[�h", 99, 33);

	Zoom("coildown_��/�g", 0, 1000, 0, null, true);
	Zoom("coildown_��/���[�h", 0, 1000, 0, null, true);

	MusicStart("coilsound_down3",0,700,0,1000,null,true);

	Zoom("coildown_��/�g", 200, 1000, 1000, Dxl1, false);
	Zoom("coildown_��/���[�h", 200, 1000, 1000, Dxl1, false);

	Fade("coildown_��/�g", 0, 1000, null, false);
	Fade("coildown_��/���[�h", 0, 1000, null, false);
	WaitAction("coildown_��/���[�h", null);

	Fade("coildown_��/�}�X�N/�o�[", 0, 500, null, true);

	Move("coildown_��/�}�X�N", �b��, @260, @0, Dxl1, false);

//�_�łƌ�
	Request("coildown_�_�E�����[�h�v���Z�X", Start);
}

..���_�E�����[�h�I��
function CoilDownComp(){
	WaitAction("coildown_��/�}�X�N", null);

	Request("coildown_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coildown_�_�E�����[�h�v���Z�X", null);

	SetVolumeEX("coilsound_down3", 100, 0, null);
	MusicStart("coilsound_down4",0,700,0,1000,null,false);

	Fade("coildown_��/�}�X�N/�o�[", 0, 1000, null, false);

	Fade("coildown_��/�R���v���[�g�Q", 0, 700, null, false);
	Fade("coildown_��/�_�E�����[�h", 0, 0, null, false);
	Fade("coildown_��/�R���v���[�g", 0, 1000, null, true);

	Fade("coildown_��/�R���v���[�g�Q", 300, 0, null, false);
}


..���_�E�����[�h�v���Z�X
function CoilDownPro(){
	while(1){
		Fade("@coildown_�_�E�����[�h", 0, 1000, null, true);
		Fade("@coildown_�_�E�����[�h", 100, 300, null, true);
//		Wait(100);
		Fade("@coildown_�_�E�����[�h", 0, 1000, null, true);
		Fade("@coildown_�_�E�����[�h", 100, 300, null, true);
//		Wait(100);
	}
}



..���_�E�����[�h����
function CoilDownDelete(){

	Move("coildown_��/�}�X�N�Q", 0, @0, @203, null, true);
	Zoom("@coildown_�x�[�X�R", 0, 1000, 1000, null, true);

	Fade("@coildown_���o*", 0, 0, null, false);
	Fade("@coildown_�x�[�X�R", 0, 1000, null, false);

	Zoom("coildown_���o", 0, 1500, 300, null, false);
	Fade("coildown_���o", 0, 250, null, true);

//	WaitKey();
	if($CoilDownNum==2){
		$coildownpriON=false;
	}else{
		$coildownON=false;
	}
	CoilBlack();

	MusicStart("coilsound_down2",0,700,0,1000,null,false);

	Zoom("coildown_����", 500, 1100, 0, null, false);
	Fade("coildown_����", 500, 1000, Dxl3, false);

	Fade("coildown_���o", 300, 1000, null, false);
	Zoom("coildown_���o", 400, 750, 0, Axl1, false);

//	Zoom("@coildown_�x�[�X�R", 50, 1000, 1500, null, false);
	Fade("@coildown_�x�[�X�R", 50, 0, null, false);
	Fade("@coildown_�x�[�X", 500, 500, null, false);

	Move("coildown_��/*/*", 500, @0, @-207, Dxl1, false);
	Move("coildown_��/*", 500, @0, @-207, Dxl1, false);

	Zoom("@coildown_�x�[�X�Q", 500, 1000, 750, AxlAuto, false);
	Zoom("@coildown_�x�[�X", 500, 1000, 750, AxlAuto, false);

//	Fade("coildown_���o", 400, 0, Axl3, false);
//	Rotate("coildown_���o", 400, @-90, @0, @0, Axl3, false);


	Delete("coildown_�_�E�����[�h�v���Z�X");
	Request("coildown_��/*/*", Disused);
	Request("coildown_��/*", Disused);
	Request("coildown_���o", Disused);

}



..�����[�������DOWN�Ăяo��
function CoilDownFade_Mail(){

//�����[���{���i�Y�t����j�ˉ摜�\���̑J��
	Request("coilmail_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilmail_�_�E�����[�h�v���Z�X", null);

//	$coiltempnut="coilmail_��/�Y�t";
//	$coiltempnut2="coilmail_��/�Y�t�_��";

	Position("coilmail_��/�Y�t",$X�Y�t���W,$Y�Y�t���W);
	CreateTexture("coildown_�Y�t�_��", 10709, $X�Y�t���W, $Y�Y�t���W, "cg/sys/coil/mail/�R�C�����[��_���[���e���v.png");
	SetAlias("coildown_�Y�t�_��", "coildown_�Y�t�_��");
	Request("coildown_�Y�t�_��", AddRender);
	SetBlur("coildown_�Y�t�_��", true, 2, 200, 50, true);

	CreateColor("coildown_�Y�t���o�P", 10709, $X�Y�t���W, $Y�Y�t���W, 43, 41, "41a4ae");
	SetAlias("coildown_�Y�t���o�P", "coildown_�Y�t���o");
	Request("coildown_�Y�t���o�P", AddRender);
	Fade("coildown_�Y�t���o�P", 0, 0, null, true);

	CreateColor("coildown_�Y�t���o�Q", 10709, $X�Y�t���W, $Y�Y�t���W, 43, 41, "WHITE");
	SetAlias("coildown_�Y�t���o�Q", "coildown_�Y�t���o");
	Request("coildown_�Y�t���o�Q", AddRender);
	Fade("coildown_�Y�t���o�Q", 0, 0, null, true);


	//588,280 500,201
	Position("coildown_��",$X���W�l,$Y���W�l);
	$X���W�l+=108;
	$Y���W�l-=21;

	if($X�Y�t���W>$X���W�l){
		$X���W�l�Q=$X�Y�t���W-(($X�Y�t���W-$X���W�l)/3);
		$X���W�l�R=$X�Y�t���W-(($X�Y�t���W-$X���W�l)/3*2);
	}else{
		$X���W�l�Q=$X�Y�t���W+(($X���W�l-$X�Y�t���W)/3);
		$X���W�l�R=$X�Y�t���W+(($X���W�l-$X�Y�t���W)/3*2);
	}
	$Y���W�l�Q=$Y���W�l+100;


//////////////////////////////////////////////////////////

	CreateSE("coilsound_down5","se����_�R�C��_�Q�[�W���܂�02L");
	CreateSE("coilsound_down6","se����_�R�C��_�V�X�e���I�[�v��");

	MusicStart("coilsound_down5",0,700,0,1000,null,false);

//////////////////////////////////////////////////////////



	Fade("coilmail_��/�Y�t�_��", 200, 0, null, false);

//	Zoom("coildown_�Y�t*", 700, 2000, 2000, Dxl2, false);
	BezierMove("coildown_�Y�t*", 500, (@0,@0){$X���W�l�Q,$Y���W�l�Q}{$X���W�l�R,$Y���W�l�Q}($X���W�l,$Y���W�l), Dxl1, false);
//	Move("coildown_�Y�t*", 500, $X���W�l, $Y���W�l, Dxl1, false);

	DrawTransition("coildown_�Y�t���o�P", 400, 0, 1000, 100, Dxl1, "cg/data/mosaic_01_00_0.png", false);

	Rotate("coildown_�Y�t���o�Q", 200, 0, 3600, 0, null, false);

	Fade("coildown_�Y�t�_��", 200, 0, Axl2, false);
	Fade("coildown_�Y�t���o�P", 200, 1000, null, false);
	Fade("coildown_�Y�t���o�Q", 200, 500, null, true);

	Fade("coildown_�Y�t���o�Q", 200, 0, null, false);

	Zoom("coildown_�Y�t*", 400, 10000, 50, Axl2, false);
	Rotate("coildown_�Y�t*", 200, 0, @160, 0, Dxl1, true);
	Rotate("coildown_�Y�t*", 200, 0, 0, 0, Dxl1, false);

//	Wait(100);
//	WaitKey();
////////////////////////////////////////

	Fade("coildown_�Y�t*", 300, 0, null, false);


	Fade("coildown_���o", 0, 350, null, false);
	Zoom("coildown_���o", 200, 1500, 200, null, false);

	Fade("coildown_��/�x�[�X�Q", 300, 500, null, false);
	Fade("coildown_��/�x�[�X", 300, 200, null, false);
	Move("coildown_��/*/*", 300, @0, @35, Dxl1, false);
	Move("coildown_��/*", 300, @0, @35, Dxl1, true);

//	WaitKey();
	if($CoilDownNum==2){
		$coildownpriON=true;
	}else{
		$coildownON=true;
	}
	CoilBlack();

	MusicStart("coilsound_down6",0,700,0,1000,null,false);

	Fade("coildown_���o", 0, 1000, null, true);

	Fade("coildown_��/�_�E�����[�h", 0, 500, null, false);
	Zoom("coildown_��/�_�E�����[�h", 400, 1000, 1000, Axl2, false);
	Rotate("coildown_��/�_�E�����[�h", 500, 0, 0, 0, Axl2, false);

	Fade("coildown_��/�x�[�X", 200, 1000, null, false);
	Fade("coildown_��/�x�[�X�Q", 200, 0, null, false);
	Fade("@coildown_�x�[�X�R", 200, 1000, null, false);

	Fade("coildown_���o", 400, 0, Axl2, false);
	Zoom("coildown_���o", 200, 1000, 1000, null, false);

	Move("coildown_��/*/*", 500, @0, @124, Dxl1, false);
	Move("coildown_��/*", 500, @0, @124, Dxl1, false);

//	Move("coildown_��/�}�X�N�Q", 500, @0, @-130, AxlAuto, false);
//	Move("coildown_��/�}�X�N�Q", 500, @0, @-155, null, false);
	Move("coildown_��/�}�X�N�Q", 500, @0, @-155, null, false);

	Zoom("@coildown_�x�[�X�R", 500, 1000, 1200, Axl1, false);
//	WaitAction("@coildown_�x�[�X�R", null);

//	Fade("@coildown_�x�[�X�R", 100, 0, null, false);
}







.����񂫂��߂�ĂȂ�
..���D��x�P�i10900�`10909�j
function CoilRenSet($coilrenX,$coilrenY){

	$CoilRenNum=1;

	$CoilRenSetPri=10900;
	CoilRenSetBase();
}

..���D��x�Q�i10900�`10909�j�������������Ⴞ��
function CoilRenSetPri($coilrenX,$coilrenY,$CoilRenSetPri){
	$CoilRenNum=2;

	CoilRenSetBase();
}



..����`�i10900�`10909�j
function CoilRenSetBase(){
//382
//159

	CreateWindow("coilren_��", 20000, $coilrenX, $coilrenY, 260, 576, false);
	SetAlias("coilren_��", "coilren_��");

	$CoilRenSetPriTemp=$CoilRenSetPri+9;
	CreateTexture("coilren_��/�x�[�X", $CoilRenSetPri, $coilrenX, $coilrenY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g.png");//10400
	SetAlias("coilren_��/�x�[�X", "coilren_�x�[�X");
	CreateTexture("coilren_��/�x�[�X�Q", $CoilRenSetPriTemp, $coilrenX, $coilrenY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g.png");//10900
	SetAlias("coilren_��/�x�[�X�Q", "coilren_�x�[�X�Q");
	SetTone("coilren_��/�x�[�X�Q", Monochrome);

	$CoilRenSetPriTemp=$CoilRenSetPri+9;
	CreateTexture("coilren_��/��", $CoilRenSetPriTemp, $coilrenX, $coilrenY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g_��.png");//10900
	SetAlias("coilren_��/��", "coilren_��");
	Fade("coilren_��/��", 0, 0, null, true);

//	CreateTexture("coilren_��/�x�[�X�R", 10100, $coilrenX, $coilrenY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g.png");
//	SetAlias("coilren_��/�x�[�X�R", "coilren_�x�[�X�R");
//	Request("coilren_��/�x�[�X�R", AddRender);

	$CoilRenSetPriTemp=$CoilRenSetPri+5;
	CreateMask("coilren_��/�}�X�N�Q", 200, $coilrenX, $coilrenY, "cg/sys/coil/window/�R�C�����o�g�����W.png", false);
	SetAlias("coilren_��/�}�X�N�Q", "coilren_��/�}�X�N�Q");
	CreateTexture("coilren_��/�}�X�N�Q/�x�[�X�R", $CoilRenSetPriTemp, $coilrenX, $coilrenY, "cg/sys/coil/window/�R�C�����[��_�C���X�g�g.png");//10500
	SetAlias("coilren_��/�}�X�N�Q/�x�[�X�R", "coilren_�x�[�X�R");
	Request("coilren_��/�}�X�N�Q/�x�[�X�R", AddRender);

/*
	$CoilRenSetPriTemp=$CoilRenSetPri+1;
	$coilrenX2=$coilrenX+28;
	$coilrenY2=$coilrenY+63;
	CreateTexture("coilren_��/�g", $CoilRenSetPriTemp, $coilrenX2, $coilrenY2, "cg/sys/coil/window/�R�C�����[��_�Q�[�W�g.png");//10410
	SetAlias("coilren_��/�g", "coilren_�g");
	CreateTexture("coilren_��/���[�h", $CoilRenSetPriTemp, $coilrenX2, $coilrenY2, "cg/sys/coil/window/�R�C�����[��_�Q�[�W���[�h2.png");//10420
	SetAlias("coilren_��/���[�h", "coilren_���[�h");

	CreateWindow("coilren_��/�}�X�N", 20000, $coilrenX, $coilrenY, 260, 144, false);
	SetAlias("coilren_��/�}�X�N", "coilren_��/�}�X�N");
	CreateTexture("coilren_��/�}�X�N/�o�[", $CoilRenSetPriTemp, $coilrenX2, $coilrenY2, "cg/sys/coil/window/�R�C�����[��_�Q�[�W�o�[2.png");//10420
	SetAlias("coilren_��/�}�X�N/�o�[", "coilren_�o�[");
*/

	$coilrenX3=$coilrenX+54-15;
	$coilrenY3=$coilrenY+44;
	CreateTexture("coilren_��/�_�E�����[�h", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/�R�C�����[��_�A�[�����C�g00.png");//10400
	SetAlias("coilren_��/�_�E�����[�h", "coilren_�_�E�����[�h");

	CreateTexture("coilren_��/�_�E�����P", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/�R�C�����[��_�A�[�����C�g01.png");//10400
	SetAlias("coilren_��/�_�E�����P", "coilren_�_�E�����P");
	CreateTexture("coilren_��/�_�E�����Q", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/�R�C�����[��_�A�[�����C�g02.png");//10400
	SetAlias("coilren_��/�_�E�����Q", "coilren_�_�E�����Q");
	CreateTexture("coilren_��/�_�E�����R", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/�R�C�����[��_�A�[�����C�g03.png");//10400
	SetAlias("coilren_��/�_�E�����R", "coilren_�_�E�����R");
	Request("coilren_��/�_�E����*", Erase);

	CreateTexture("coilren_��/�R���v���[�g", $CoilRenSetPri, $coilrenX3, $coilrenY3, "cg/sys/coil/window/�R�C�����[��_�A�[�����C�g00.png");//10400
	SetAlias("coilren_��/�R���v���[�g", "coilren_�R���v���[�g");
	Request("coilren_��/�R���v���[�g", AddRender);




	$CoilRenSetPriTemp=$CoilRenSetPri+4;
	$coilrenX4=$coilrenX-20;
	$coilrenY4=$coilrenY-8;
	CreateTexture("coilren_���o", $CoilRenSetPriTemp, $coilrenX4, $coilrenY4, "cg/sys/coil/window/�R�C�����o.png");//10430
	SetAlias("coilren_���o", "coilren_���o");
	Request("coilren_���o", AddRender);
	Fade("coilren_���o", 0, 0, null, true);
	Zoom("coilren_���o", 0, 1000, 0, Dxl1, true);

	$CoilRenSetPriTemp=$CoilRenSetPri+6;
	CreateTexture("coilren_����", $CoilRenSetPriTemp, $coilrenX, $coilrenY, "cg/sys/coil/window/�R�C�����[��_���M���o.png");//10530
	SetAlias("coilren_����", "coilren_����");
	Request("coilren_����", AddRender);
	Fade("coilren_����", 0, 0, null, true);
	SetVertex("coilren_����", 130, 0);
	Zoom("coilren_����", 0, 1200, 1000, null, false);


	Move("coilren_��/�}�X�N", 0, @-260, @0, Dxl1, true);
	Move("coilren_��/*", 0, @0, @-159, Dxl1, false);
	Move("coilren_��/*/*", 0, @0, @-159, Dxl1, true);

	SetVertex("coilren_��/�_�E�����[�h", 75, 20);
	Zoom("coilren_��/�_�E�����[�h", 0, 1000, 2000, null, false);///////////////////////
//	Rotate("coilren_��/�_�E�����[�h", 0, @0, @30, @0, null, true);

	Fade("coilren_��/�g", 0, 0, null, false);
	Fade("coilren_��/���[�h", 0, 0, null, false);
	Fade("coilren_��/�_�E�����[�h", 0, 0, null, false);
	Fade("coilren_��/�R���v���[�g", 0, 0, null, false);
	Fade("coilren_��/�R���v���[�g�Q", 0, 0, null, false);

	Fade("@coilren_�x�[�X�R", 0, 0, null, false);
	Fade("coilren_��/�x�[�X", 0, 750, null, true);

	CreateSE("coilsound_down1","se����_�R�C��_�V�X�e���I�[�v��");
	CreateSE("coilsound_down2","se����_�R�C��_�V�X�e���N���[�Y");
	CreateSE("coilsound_down3","se����_�R�C��_�Q�[�W���܂�03L");//se����_�R�C��_�Q�[�W���܂�01L.ogg
	CreateSE("coilsound_down4","se����_�R�C��_�V�X�e���A���[�g");
}



..���_�E�����[�h�\��
function CoilRenFade(){
	MusicStart("coilsound_down1",0,700,0,1000,null,false);

	Fade("coilren_���o", 0, 350, null, false);
	Zoom("coilren_���o", 200, 1500, 200, null, false);

	Fade("coilren_��/�x�[�X�Q", 300, 500, null, false);
	Fade("coilren_��/�x�[�X", 300, 200, null, false);
	Move("coilren_��/*/*", 300, @0, @35, Dxl1, false);
	Move("coilren_��/*", 300, @0, @35, Dxl1, true);

//	WaitKey();
	if($CoilRenNum==2){
		$coilrenpriON=true;
	}else{
		$coilrenON=true;
	}

	CoilBlack();

	Fade("coilren_���o", 0, 1000, null, true);

	Fade("coilren_��/�_�E�����[�h", 0, 300, null, false);//////////////////////////
	Zoom("coilren_��/�_�E�����[�h", 400, 1000, 1000, Axl2, false);
	Rotate("coilren_��/�_�E�����[�h", 500, 0, 0, 0, Axl2, false);

	Fade("coilren_��/�x�[�X", 200, 1000, null, false);
	Fade("coilren_��/�x�[�X�Q", 200, 0, null, false);
	Fade("@coilren_�x�[�X�R", 200, 1000, null, false);

	Fade("coilren_���o", 400, 0, Axl2, false);
	Zoom("coilren_���o", 200, 1000, 1000, null, false);

	Move("coilren_��/*/*", 500, @0, @124, Dxl1, false);
	Move("coilren_��/*", 500, @0, @124, Dxl1, false);

//	Move("coilren_��/�}�X�N�Q", 500, @0, @-130, AxlAuto, false);
//	Move("coilren_��/�}�X�N�Q", 500, @0, @-155, null, false);
	Move("coilren_��/�}�X�N�Q", 500, @0, @-155, null, false);

	Zoom("@coilren_�x�[�X�R", 500, 1000, 1200, Axl1, false);
//	WaitAction("@coilren_�x�[�X�R", null);

//	Fade("@coilren_�x�[�X�R", 100, 0, null, false);

}







..���_�E�����[�h�J�n
function CoilRenStart(){

	WaitAction("@coilren_�x�[�X�R", null);

	Fade("coilren_��/�_�E����*", 0, 600, null, true);

	CreateProcess("coilren_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilRenPro");
	SetAlias("coilren_�_�E�����[�h�v���Z�X", "coilren_�_�E�����[�h�v���Z�X");

//�_�łƌ�
	MusicStart("coilsound_down3",0,400,0,1500,null,true);

	Request("coilren_�_�E�����[�h�v���Z�X", Start);
}

..���_�E�����[�h�I��
function CoilRenComp(){
	Request("coilren_�_�E�����[�h�v���Z�X", Stop);
	//�����b�N�ݒu
	LockVideo(false);
	WaitAction("coilren_�_�E�����[�h�v���Z�X", null);
	//�����b�N�ݒu
	LockVideo(false);

	SetVolumeEX("coilsound_down3", 100, 0, null);
	MusicStart("coilsound_down4",0,700,0,1000,null,false);

	Fade("@coilren_��/�_�E����*", 0, 0, null, false);
	Fade("coilren_��/�R���v���[�g", 0, 700, null, false);
	Fade("coilren_��/�_�E�����[�h", 0, 1000, null, true);

	Fade("coilren_��/�R���v���[�g", 300, 0, null, false);
}


..���_�E�����[�h�v���Z�X
function CoilRenPro(){
	while(1){
		//�����b�N�ݒu
		LockVideo(true);
		Request("@coilren_��/�_�E�����R", Erase);
		Request("@coilren_��/�_�E�����P", Enter);
		//�����b�N�ݒu
		LockVideo(false);
		Wait(300);

		//�����b�N�ݒu
		LockVideo(true);
		Request("@coilren_��/�_�E�����P", Erase);
		Request("@coilren_��/�_�E�����Q", Enter);
		//�����b�N�ݒu
		LockVideo(false);
		Wait(300);

		//�����b�N�ݒu
		LockVideo(true);
		Request("@coilren_��/�_�E�����Q", Erase);
		Request("@coilren_��/�_�E�����R", Enter);
		//�����b�N�ݒu
		LockVideo(false);
		Wait(300);


//		Fade("@coilren_��/�_�E�����R", 32, 0, null, false);
//		Fade("@coilren_��/�_�E�����P", 0, 1000, null, true);
//		Fade("@coilren_��/�_�E�����P", 300, 500, null, true);

//		Fade("@coilren_��/�_�E�����P", 32, 0, null, false);
//		Fade("@coilren_��/�_�E�����Q", 0, 1000, null, true);
//		Fade("@coilren_��/�_�E�����Q", 300, 500, null, true);

//		Fade("@coilren_��/�_�E�����Q", 32, 0, null, false);
//		Fade("@coilren_��/�_�E�����R", 0, 1000, null, true);
//		Fade("@coilren_��/�_�E�����R", 300, 500, null, true);
	}
}



..���_�E�����[�h����
function CoilRenDelete(){

	Move("coilren_��/�}�X�N�Q", 0, @0, @203, null, true);
	Zoom("@coilren_�x�[�X�R", 0, 1000, 1000, null, true);

	Fade("@coilren_���o*", 0, 0, null, false);
	Fade("@coilren_�x�[�X�R", 0, 1000, null, false);

	Zoom("coilren_���o", 0, 1500, 300, null, false);
	Fade("coilren_���o", 0, 250, null, true);

//	WaitKey();
	if($CoilRenNum==2){
		$coilrenpriON=false;
	}else{
		$coilrenON=false;
	}
	CoilBlack();

	MusicStart("coilsound_down2",0,700,0,1000,null,false);

	Zoom("coilren_����", 500, 1100, 0, null, false);
	Fade("coilren_����", 500, 1000, Dxl3, false);

	Fade("coilren_���o", 300, 1000, null, false);
	Zoom("coilren_���o", 400, 750, 0, Axl1, false);

//	Zoom("@coilren_�x�[�X�R", 50, 1000, 1500, null, false);
	Fade("@coilren_�x�[�X�R", 50, 0, null, false);
	Fade("@coilren_�x�[�X", 500, 500, null, false);

	Move("coilren_��/*/*", 500, @0, @-207, Dxl1, false);
	Move("coilren_��/*", 500, @0, @-207, Dxl1, false);

	Zoom("@coilren_�x�[�X�Q", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilren_�x�[�X", 500, 1000, 750, AxlAuto, false);

//	Fade("coilren_���o", 400, 0, Axl3, false);
//	Rotate("coilren_���o", 400, @-90, @0, @0, Axl3, false);


	Delete("coilren_�_�E�����[�h�v���Z�X");
	Request("coilren_��/*/*", Disused);
	Request("coilren_��/*", Disused);
	Request("coilren_���o", Disused);

}
















.���摜�\��
..����`�i10700�`10799�j
function CoilPictSet($coilpictX,$coilpictY,$coilpictNut){
//382
//159
	$coilpictNumPre0="����";
	$coilpictNumPre1="����";
	$coilpictNumPre2="����";
	$coilpictNumPre3="����";

	CreateWindow("coilpict_��", 20000, $coilpictX, $coilpictY, 418, 403, false);
	SetAlias("coilpict_��", "coilpict_��");

	CreateTexture("coilpict_��/�x�[�X", 10700, $coilpictX, $coilpictY, "cg/sys/coil/mail/�R�C�����[��_�摜.png");//10400
	SetAlias("coilpict_��/�x�[�X", "coilpict_�x�[�X");
	CreateTexture("coilpict_��/�x�[�X�Q", 10709, $coilpictX, $coilpictY, "cg/sys/coil/mail/�R�C�����[��_�摜.png");//10900
	SetAlias("coilpict_��/�x�[�X�Q", "coilpict_�x�[�X�Q");
	SetTone("coilpict_��/�x�[�X�Q", Monochrome);

	CreateTexture("coilpict_��/��", 10709, $coilpictX, $coilpictY, "cg/sys/coil/mail/�R�C�����[��_�摜_��.png");//10900
	SetAlias("coilpict_��/��", "coilpict_��");
	Fade("coilpict_��/��", 0, 0, null, true);

//	CreateTexture("coilpict_��/�x�[�X�R", 10100, $coilpictX, $coilpictY, "cg/sys/coil/mail/�R�C�����[��_�摜.png");
//	SetAlias("coilpict_��/�x�[�X�R", "coilpict_�x�[�X�R");
//	Request("coilpict_��/�x�[�X�R", AddRender);

	CreateMask("coilpict_��/�}�X�N�Q", 200, $coilpictX, $coilpictY, "cg/sys/coil/mail/�R�C�����o�g�����W4.png", false);
	SetAlias("coilpict_��/�}�X�N�Q", "coilpict_��/�}�X�N�Q");
	CreateTexture("coilpict_��/�}�X�N�Q/�x�[�X�R", 10705, $coilpictX, $coilpictY, "cg/sys/coil/mail/�R�C�����[��_�摜.png");//10500
	SetAlias("coilpict_��/�}�X�N�Q/�x�[�X�R", "coilpict_�x�[�X�R");
	Request("coilpict_��/�}�X�N�Q/�x�[�X�R", AddRender);


	//���g
	$coilpictX6=$coilpictX+13;
	$coilpictY6=$coilpictY+29;
	CreateWindow("coilpict_��/coilpict_��", 20000, $coilpictX6, $coilpictY6, 393, 348, false);
	SetAlias("coilpict_��/coilpict_��", "coilpict_��");

	if(Strstr($coilpictNut,"ngs") || Strstr($coilpictCon,"mpg")){
		if(#SYSTEM_sound_se){$coilpictVol=#SYSTEM_sound_volume_se*0.50;
		}else{$coilpictVol=0;}
		if(Strstr($coilpictNut,"loop")){
			CreateMovie("coilpict_��/coilpict_��/coilpict_�G", 10700, $coilpictX6, $coilpictY6, true, false, $coilpictNut,$coilpictVol);//10400
		}else{
			CreateMovie("coilpict_��/coilpict_��/coilpict_�G", 10700, $coilpictX6, $coilpictY6, false, false, $coilpictNut,$coilpictVol);//10400
		}
	}else{
		CreateTexture("coilpict_��/coilpict_��/coilpict_�G", 10700, $coilpictX6, $coilpictY6, $coilpictNut);//10400
	}
	SetAlias("coilpict_��/coilpict_��/coilpict_�G", "coilpict_�G");
	Fade("coilpict_��/coilpict_��/coilpict_�G", 0, 0, null, true);
	Request("coilpict_��/coilpict_��/coilpict_�G", Stop);

	$coilpict_imgH=ImageHorizon("coilpict_��/coilpict_��/coilpict_�G");
	$coilpict_imgV=ImageVertical("coilpict_��/coilpict_��/coilpict_�G");
	$coilpict_imgH_half=(393-$coilpict_imgH)/2;
	$coilpict_imgV_half=(348-$coilpict_imgV)/2;
	Move("coilpict_��/coilpict_��/coilpict_�G", 0, @$coilpict_imgH_half, @$coilpict_imgV_half, null, true);

	$coilpictX7=$coilpictX6+$coilpict_imgH_half;
	$coilpictY7=$coilpictY6+$coilpict_imgV_half;

	if(Strstr($coilpictNut, "ngs") || Strstr($coilpictCon, "mpg")){
		CreateWindow("coilpict_��/coilpict_��/coilpict_�e", 10700, $coilpictX6, $coilpictY6, 393, 348, false);//10400
	}else{
		CreateStencil("coilpict_��/coilpict_��/coilpict_�e", 10700, $coilpictX7, $coilpictY7, 128, $coilpictNut, false);//10400
	}
	SetAlias("coilpict_��/coilpict_��/coilpict_�e", "coilpict_�e");
	CreateColor("coilpict_��/coilpict_��/coilpict_�e/coilpict_���o�F", 10700, $coilpictX7, $coilpictY7, $coilpict_imgH, $coilpict_imgV, "41a4ae");//10400
	SetAlias("coilpict_��/coilpict_��/coilpict_�e/coilpict_���o�F", "coilpict_���o�F");
	Request("coilpict_��/coilpict_��/coilpict_�e/coilpict_���o�F", AddRender);

//	CreateColor("coilpict_��/coilpict_���o�F", 10700, $coilpictX6, $coilpictY6, $coilpict_imgH, $coilpict_imgV, "41a4ae");//WHITE
//	SetAlias("coilpict_��/coilpict_���o�F", "coilpict_���o�F");
//	Request("coilpict_��/coilpict_���o�F", AddRender);
//	Move("coilpict_��/coilpict_���o�F", 0, @$coilpict_imgH_half, @$coilpict_imgV_half, null, true);

	$coilpictX4=$coilpictX-20;
	$coilpictY4=$coilpictY-8;
	CreateTexture("coilpict_���o", 10701, $coilpictX4, $coilpictY4, "cg/sys/coil/mail/�R�C�����o4.png");//10430
	SetAlias("coilpict_���o", "coilpict_���o");
	Request("coilpict_���o", AddRender);
	Fade("coilpict_���o", 0, 0, null, true);
	Zoom("coilpict_���o", 0, 1000, 0, Dxl1, true);

	CreateTexture("coilpict_����", 10706, $coilpictX, $coilpictY, "cg/sys/coil/mail/�R�C�����[��_�摜���o.png");//10530
	SetAlias("coilpict_����", "coilpict_����");
	Request("coilpict_����", AddRender);
	Fade("coilpict_����", 0, 0, null, true);
	SetVertex("coilpict_����", 209, 0);
	Zoom("coilpict_����", 0, 1200, 1000, null, false);

	//�O���b�h
	$�n�}=Strstr($coilpictNut, "ef�}�b�v�{��_�m�C�Y_�n�}");
	if(!$�n�}){$�n�}=Strstr($coilpictNut, "�ɓ��S�i");}

	if($�n�}){
		CreateTexture("coilpict_��/coilpict_��/�}�[�J�[", 10700, $coilpictX6, $coilpictY6, "cg/ef/ef�}�b�v�{��_�m�C�Y_�}�[�J�[.png");
		SetAlias("coilpict_��/coilpict_��/�}�[�J�[", "coilpict_�}�[�J�[");
		$coilpict_imgH2=ImageHorizon("coilpict_��/coilpict_��/�}�[�J�[");
		$coilpict_imgV2=ImageVertical("coilpict_��/coilpict_��/�}�[�J�[");
		$coilpict_imgH2_half=(393-$coilpict_imgH2)/2;
		$coilpict_imgV2_half=(348-$coilpict_imgV2)/2;
		Move("coilpict_��/coilpict_��/�}�[�J�[", 0, @$coilpict_imgH2_half, @$coilpict_imgV2_half, null, true);
		Fade("coilpict_��/coilpict_��/�}�[�J�[", 0, 0, null, false);
		Request("coilpict_��/coilpict_��/�}�[�J�[", AddRender);

		CreateTexture("coilpict_��/coilpict_��/�O���b�h", 10700, $coilpictX6, $coilpictY6, "cg/ef/ef�}�b�v�{��_�m�C�Y_�O���b�h.png");
		SetAlias("coilpict_��/coilpict_��/�O���b�h", "coilpict_�O���b�h");
		$coilpict_imgH2=ImageHorizon("coilpict_��/coilpict_��/�O���b�h");
		$coilpict_imgV2=ImageVertical("coilpict_��/coilpict_��/�O���b�h");
		$coilpict_imgH2_half=(393-$coilpict_imgH2)/2;
		$coilpict_imgV2_half=(348-$coilpict_imgV2)/2;
		Move("coilpict_��/coilpict_��/�O���b�h", 0, @$coilpict_imgH2_half, @$coilpict_imgV2_half, null, true);

		CreateColor("coilpict_��/coilpict_��/�n�}�F", 10700, $coilpictX6, $coilpictY6, 88, 88, "41a4ae");
		SetAlias("coilpict_��/coilpict_��/�n�}�F", "coilpict_�n�}�F");
		Fade("coilpict_��/coilpict_��/�n�}�F", 0, 0, null, false);
		Request("coilpict_��/coilpict_��/�n�}�F", AddRender);

		Zoom("coilpict_��/coilpict_��/�O���b�h",0,300,300,null,true);

		Request("coilpict_��/coilpict_��/coilpict_�G", Smoothing);
		Request("coilpict_��/coilpict_��/�O���b�h", Smoothing);
	}


	Move("coilpict_��/*/*/*/*", 0, @0, @-418, Dxl1, false);
	Move("coilpict_��/*/*/*", 0, @0, @-418, Dxl1, false);
	Move("coilpict_��/*/*", 0, @0, @-418, Dxl1, false);
	Move("coilpict_��/*", 0, @0, @-418, Dxl1, false);

	Fade("@coilpict_�x�[�X�R", 0, 0, null, false);
	Fade("coilpict_��/�x�[�X", 0, 750, null, true);

//	SetVertex("@coilpict_�x�[�X", 209, 0);
//	Zoom("@coilpict_�x�[�X", 0, 1000, 1000, null, true);
//	Fade("@coilpict_�x�[�X", 0, 0, null, true);

	CreateSE("coilsound_pict1","se����_�R�C��_�V�X�e���I�[�v��");
	CreateSE("coilsound_pict2","se����_�R�C��_�V�X�e���N���[�Y");
}






..���O���b�h�_��
function CoilPictIconFade(X���W�l,Y���W�l){

	CreateProcess("coilpict_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilPictPro");
	SetAlias("coilpict_�_�E�����[�h�v���Z�X", "coilpict_�_�E�����[�h�v���Z�X");

	Move("@coilpict_�}�[�J�[", 0, X���W�l, Y���W�l, null, true);

	Position("@coilpict_�}�[�J�[",$coilpictGX,$coilpictGY);
	$coilpictGX-=50;
	$coilpictGY-=50;
	Move("@coilpict_�n�}�F", 0, $coilpictGX, $coilpictGY, null, true);

	Request("coilpict_�_�E�����[�h�v���Z�X", Start);
}

function CoilPictPro(){
	while(1){
		Fade("@coilpict_�}�[�J�[", 300, 500, null, true);
		Fade("@coilpict_�}�[�J�[", 500, 0, null, true);
	}
}

function CoilPictIconGo(�b��,X���W�l,Y���W�l,X�ړ��l,Y�ړ��l,�g�嗦H,�g�嗦V){

	Fade("@coilpict_�n�}�F", 0, 500, null, true);
	Request("@coilpict_�}�[�J�[", Erase);

	Move("@coilpict_�}�[�J�[", 0, X���W�l, Y���W�l, null, true);

	Position("@coilpict_�}�[�J�[",$coilpictGX,$coilpictGY);
	$coilpictGX-=50;
	$coilpictGY-=50;
	Move("@coilpict_�n�}�F", �b��, $coilpictGX, $coilpictGY, AxlDxl, false);
	Zoom("@coilpict_�n�}�F", 200, 2000, 2000, AxlDxl, false);
	Fade("@coilpict_�n�}�F", 200, 0, null, false);

	//���E�Y�[���i���̉摜�ɑ΂��āj�wCoilPictZO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x//�����i�b�g�̎w��́u�����v
	CoilPictZO("����",�b��,�g�嗦H,�g�嗦V,AxlDxl,false);
	//���E���[�u�i���̉摜�ɑ΂��āj�wCoilPictMO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x
	CoilPictMO("����",�b��,X�ړ��l,Y�ړ��l,AxlDxl,true);

	Request("@coilpict_�}�[�J�[", Enter);
}

function CoilPictIconGo2("�i�b�g��",�b��,X���W�l,Y���W�l,X�ړ��l,Y�ړ��l,�g�嗦H,�g�嗦V){

	Fade("@coilpict_�n�}�F", 0, 500, null, true);
	Request("@coilpict_�}�[�J�[", Erase);

	Move("@coilpict_�}�[�J�[", 0, X���W�l, Y���W�l, null, true);

	Position("@coilpict_�}�[�J�[",$coilpictGX,$coilpictGY);
	$coilpictGX-=50;
	$coilpictGY-=50;
	Move("@coilpict_�n�}�F", �b��, $coilpictGX, $coilpictGY, AxlDxl, false);
	Zoom("@coilpict_�n�}�F", 200, 2000, 2000, AxlDxl, false);
	Fade("@coilpict_�n�}�F", 200, 0, null, false);

	//���E�Y�[���i���̉摜�ɑ΂��āj�wCoilPictZO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x//�����i�b�g�̎w��́u�����v
	CoilPictZO("�i�b�g��",�b��,�g�嗦H,�g�嗦V,AxlDxl,false);
	//���E���[�u�i���̉摜�ɑ΂��āj�wCoilPictMO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x
	CoilPictMO("�i�b�g��",�b��,X�ړ��l,Y�ړ��l,AxlDxl,true);

	Request("@coilpict_�}�[�J�[", Enter);
}









..���摜�Q�ȍ~
function CoilPictCon($coilpictNum,$coilpictCon){
	Position("coilpict_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$coilpictX6=$X���W�l�i�[�ϐ�+13;
	$coilpictY6=$Y���W�l�i�[�ϐ�+29;

	$coilpictNum="�ǉ�"+$coilpictNum;

	$coilpictNum0="coilpict_��/"+$coilpictNum;
	$coilpictNum1="coilpict_��/"+$coilpictNum+"/coilpict_�e";
	$coilpictNum2="coilpict_��/"+$coilpictNum+"/coilpict_�e/coilpict_���o�F";
	$coilpictNum3="coilpict_��/"+$coilpictNum+"/coilpict_�G";

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



	//�O���b�h
	$�n�}=Strstr($coilpictCon, "ef�}�b�v�{��_�m�C�Y_�n�}");
	if(!$�n�}){$�n�}=Strstr($coilpictCon, "�ɓ��S�i");}

	if($�n�}){
		$coilpictNum4="coilpict_��/"+$coilpictNum+"/coilpict_�}�[�J�[";
		$coilpictNum5="coilpict_��/"+$coilpictNum+"/coilpict_�O���b�h";
		$coilpictNum6="coilpict_��/"+$coilpictNum+"/coilpict_�F";

		CreateTexture($coilpictNum4, 10700, $coilpictX6, $coilpictY6, "cg/ef/ef�}�b�v�{��_�m�C�Y_�}�[�J�[.png");
		SetAlias($coilpictNum4, "coilpict_�}�[�J�[");
		$coilpict_imgH2=ImageHorizon($coilpictNum4);
		$coilpict_imgV2=ImageVertical($coilpictNum4);
		$coilpict_imgH2_half=(393-$coilpict_imgH2)/2;
		$coilpict_imgV2_half=(348-$coilpict_imgV2)/2;
		Move($coilpictNum4, 0, @$coilpict_imgH2_half, @$coilpict_imgV2_half, null, true);
		Fade($coilpictNum4, 0, 0, null, false);
		Request($coilpictNum4, AddRender);

		CreateTexture($coilpictNum5, 10700, $coilpictX6, $coilpictY6, "cg/ef/ef�}�b�v�{��_�m�C�Y_�O���b�h.png");
		SetAlias($coilpictNum5, "coilpict_�O���b�h");
		$coilpict_imgH2=ImageHorizon($coilpictNum5);
		$coilpict_imgV2=ImageVertical($coilpictNum5);
		$coilpict_imgH2_half=(393-$coilpict_imgH2)/2;
		$coilpict_imgV2_half=(348-$coilpict_imgV2)/2;
		Move($coilpictNum5, 0, @$coilpict_imgH2_half, @$coilpict_imgV2_half, null, true);

		CreateColor($coilpictNum6, 10700, $coilpictX6, $coilpictY6, 88, 88, "41a4ae");
		SetAlias($coilpictNum6, "coilpict_�n�}�F");
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




..�����[�r�[�I���ҋ@
function CoilPictWait(){

	WaitAction("@coilpict_�G", null);
	WaitAction($coilpictNum3, null);
}

function CoilPictWaitTime($coilpictNum,$coilpictWait){

	$CoilPictWaitSkipOn=false;

	$������=Strstr($coilpictNum, "����");
	if($������){
		$coilpictNumFlag=$coilpictNum;
		$coilpictNum3="coilpict_��/coilpict_��/coilpict_�G";
	}else{
		$coilpictNumFlag=$coilpictNum;
		$coilpictNum3="coilpict_��/�ǉ�"+$coilpictNum+"/coilpict_�G";
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

	$������=Strstr($coilpictNum, "����");
	if($������){
		$coilpictNumFlag=$coilpictNum;
		$coilpictNum3="coilpict_��/coilpict_��/coilpict_�G";
	}else{
		$coilpictNumFlag=$coilpictNum;
		$coilpictNum3="coilpict_��/�ǉ�"+$coilpictNum+"/coilpict_�G";
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
















..���摜�ړ�
function CoilPictMO($coilpictNum,�b��,�lX,�lY,�e���|,�҂�){
	if($coilpictNum=="����"){
		$coilpictNum1="coilpict_��/coilpict_��/coilpict_�e";
		$coilpictNum2="coilpict_��/coilpict_��/coilpict_�e/coilpict_���o�F";
		$coilpictNum3="coilpict_��/coilpict_��/coilpict_�G";
	}else{
		$coilpictNum="�ǉ�"+$coilpictNum;

		$coilpictNum1="coilpict_��/"+$coilpictNum+"/coilpict_�e";
		$coilpictNum2="coilpict_��/"+$coilpictNum+"/coilpict_�e/coilpict_���o�F";
		$coilpictNum3="coilpict_��/"+$coilpictNum+"/coilpict_�G";
	}

	if(Strstr($coilpictNut, "ngs") || Strstr($coilpictCon, "mpg")){

	}else{
		Move($coilpictNum1, �b��, �lX, �lY, �e���|, false);
	}
	Move($coilpictNum2, �b��, �lX, �lY, �e���|, false);
	Move($coilpictNum3, �b��, �lX, �lY, �e���|, �҂�);
}

..���摜�J�N�V���N
function CoilPictZO($coilpictNum,�b��,$ZO�lX,$ZO�lY,�e���|,�҂�){
	if($coilpictNum=="����"){
		$coilpictNum1="coilpict_��/coilpict_��/coilpict_�e";
		$coilpictNum2="coilpict_��/coilpict_��/coilpict_�e/coilpict_���o�F";
		$coilpictNum3="coilpict_��/coilpict_��/coilpict_�G";

		if($�n�}){
			$ZO�lX2=1000+(300-$ZO�lX);
			$ZO�lY2=1000+(300-$ZO�lY);
			Zoom("coilpict_��/coilpict_��/�O���b�h",�b��,$ZO�lX2,$ZO�lY2,�e���|,false);
		}
	}else{
		$coilpictNum="�ǉ�"+$coilpictNum;

		$coilpictNum1="coilpict_��/"+$coilpictNum+"/coilpict_�e";
		$coilpictNum2="coilpict_��/"+$coilpictNum+"/coilpict_�e/coilpict_���o�F";
		$coilpictNum3="coilpict_��/"+$coilpictNum+"/coilpict_�G";

		$coilpictNum5="coilpict_��/"+$coilpictNum+"/coilpict_�O���b�h";

		if($�n�}){
			$ZO�lX2=1000+(300-$ZO�lX);
			$ZO�lY2=1000+(300-$ZO�lY);
			Zoom($coilpictNum5,�b��,$ZO�lX2,$ZO�lY2,�e���|,false);
		}
	}

	if(Strstr($coilpictNut, "ngs")){

	}else{
		Zoom($coilpictNum1, �b��, $ZO�lX, $ZO�lY, �e���|, false);
	}
	Zoom($coilpictNum2, �b��, $ZO�lX, $ZO�lY, �e���|, false);
	Zoom($coilpictNum3, �b��, $ZO�lX, $ZO�lY, �e���|, �҂�);
}




..���摜�\���̂Q�ڈȍ~
function CoilPictFadeCon($coilpictNum){
	CreateSE("coilsound_pict4","se����_�R�C��_�V�X�e���摜�؂�ւ�");

	$coilpictNum="�ǉ�"+$coilpictNum;

	//�p��
	$coilpictNumPre0="coilpict_��/"+$coilpictNumPre;
	$coilpictNumPre1="coilpict_��/"+$coilpictNumPre+"/coilpict_�e";
	$coilpictNumPre2="coilpict_��/"+$coilpictNumPre+"/coilpict_�e/coilpict_���o�F";
	$coilpictNumPre3="coilpict_��/"+$coilpictNumPre+"/coilpict_�G";
	$coilpictNum0="coilpict_��/"+$coilpictNum;
	$coilpictNum1="coilpict_��/"+$coilpictNum+"/coilpict_�e";
	$coilpictNum2="coilpict_��/"+$coilpictNum+"/coilpict_�e/coilpict_���o�F";
	$coilpictNum3="coilpict_��/"+$coilpictNum+"/coilpict_�G";

	SetVertex($coilpictNumPre0, 196, 348);

	Position("@coilpict_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�-418;

	Fade("@coilpict_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilpict_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilpict_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);


	Fade($coilpictNum1, 0, 1000, null, false);
	Fade($coilpictNum2, 0, 1000, null, false);
//	Fade($coilpictNum3, 0, 750, null, false);

	Request($coilpictNum3, Play);

	//==================
	//Fade("coilpict_��/�x�[�X�Q", 200, 500, null, false);
	MusicStart("coilsound_pict4",0,700,0,1000,null,false);

	Fade($coilpictNum2, 500, 0, null, false);
	Fade($coilpictNum3, 400, 750, null, false);
	DrawTransition($coilpictNum2, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition($coilpictNum3, 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	Zoom($coilpictNumPre0, 500, 1000, 0, null, false);
	Zoom($coilpictNum0, 500, 1000, 1000, null, false);

	//WaitKey();
	//Fade("coilpict_��/�x�[�X�Q", 200, 0, null, false);

	Fade("@coilpict_�x�[�X�R", 200, 1000, null, false);
	Zoom("@coilpict_�x�[�X�R", 500, 1000, 1200, Axl1, false);
	Move("coilpict_��/�}�X�N�Q", 500, @0, @-418, null, false);

	Request($coilpictNumPre0, Disused);

	//�L��
	$coilpictNumPre=$coilpictNum;
}


..���摜�����ؑ�
function CoilPictFadeChan($coilpictNum){
	$coilpictNum="�ǉ�"+$coilpictNum;

	//�p��
	$coilpictNumPre0="coilpict_��/"+$coilpictNumPre;
	$coilpictNumPre1="coilpict_��/"+$coilpictNumPre+"/coilpict_�e";
	$coilpictNumPre2="coilpict_��/"+$coilpictNumPre+"/coilpict_�e/coilpict_���o�F";
	$coilpictNumPre3="coilpict_��/"+$coilpictNumPre+"/coilpict_�G";
	$coilpictNum0="coilpict_��/"+$coilpictNum;
	$coilpictNum1="coilpict_��/"+$coilpictNum+"/coilpict_�e";
	$coilpictNum2="coilpict_��/"+$coilpictNum+"/coilpict_�e/coilpict_���o�F";
	$coilpictNum3="coilpict_��/"+$coilpictNum+"/coilpict_�G";

	SetVertex($coilpictNumPre0, 196, 348);

	Position("@coilpict_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�-(418+418);

	Fade("@coilpict_�x�[�X�R", 0, 1000, null, false);
	Zoom("@coilpict_�x�[�X�R", 0, 1000, 1200, Axl1, false);
	Move("coilpict_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);

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

	//�L��
	$coilpictNumPre=$coilpictNum;
}


..���摜�\��
function CoilPictFade(){
	MusicStart("coilsound_pict1",0,700,0,1000,null,false);

//	$tekitou=MilliTime();

	Zoom("@coilpict_�x�[�X", 800, 1000, 1000, DxlAuto, false);

	Fade("@coilpict_���o*", 800, 0, null, false);

//	Fade("coilpict_���o", 0, 350, null, false);
//	Zoom("coilpict_���o", 200, 1500, 200, null, false);

//	Fade("coilpict_��/�x�[�X�Q", 300, 500, null, false);
//	Fade("coilpict_��/�x�[�X", 300, 1000, null, false);
//	Move("coilpict_��/*/*", 300, @0, @36, Dxl1, false);
//	Move("coilpict_��/*", 300, @0, @36, Dxl1, true);

	Fade("coilpict_���o", 0, 350, null, false);
	Zoom("coilpict_���o", 150, 1500, 200, null, false);

	Fade("coilpict_��/�x�[�X�Q", 200, 500, null, false);
//	Fade("coilpict_��/�x�[�X", 200, 1000, null, false);
	Move("coilpict_��/*/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilpict_��/*/*/*", 200, @0, @36, Dxl1, false);
	Move("coilpict_��/*/*", 200, @0, @36, Dxl1, false);
	Move("coilpict_��/*", 200, @0, @36, Dxl1, false);

	Move("coilpict_��/�ǉ�*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*/*", 0, @0, @0, Dxl1, false);
	WaitMove("coilpict_��/*", null);

//	Message("�f�o�b�O�p�E�B���h�E",String("%d",MilliTime()-$tekitou));

//	WaitKey();
	$coilpictON=true;
	CoilBlack();

	Request("coilpict_��/coilpict_��/coilpict_�G", Play);

	Fade("coilpict_���o", 0, 1000, null, true);

	DrawTransition("@coilpict_���o�F", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition("coilpict_��/coilpict_��/coilpict_�G", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade("coilpict_��/coilpict_��/coilpict_�G", 400, 750, null, false);//����

	Fade("coilpict_��/�x�[�X", 200, 1000, null, false);
	Fade("coilpict_��/�x�[�X�Q", 200, 0, null, false);
	Fade("@coilpict_�x�[�X�R", 200, 1000, null, false);

	Fade("coilpict_���o", 500, 0, Axl2, false);
	Zoom("coilpict_���o", 200, 1000, 1000, null, false);

	Move("coilpict_��/*/*/*/*", 500, @0, @382, Dxl1, false);
	Move("coilpict_��/*/*/*", 500, @0, @382, Dxl1, false);
	Move("coilpict_��/*/*", 500, @0, @382, Dxl1, false);
	Move("coilpict_��/*", 500, @0, @382, Dxl1, false);

	Move("coilpict_��/�ǉ�*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*/*", 0, @0, @0, Dxl1, false);


	Move("coilpict_��/�}�X�N�Q", 500, @0, @-418, null, false);

	Zoom("@coilpict_�x�[�X�R", 500, 1000, 1200, Axl1, false);

//	Request("coilpict_�_�E�����[�h�v���Z�X", Start);

	//�L��
	$coilpictNumPre="coilpict_��";
}



..���摜�t�F�[�h����
function CoilPictDelete(){

	Position("@coilpict_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilpict_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilpict_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilpict_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);


//	Request("coilpict_�_�E�����[�h�v���Z�X", Stop);
//	WaitAction("coilpict_�_�E�����[�h�v���Z�X", null);

	Fade("@coilpict_���o*", 0, 0, null, false);
	Fade("@coilpict_�x�[�X�R", 0, 1000, null, false);

	Zoom("coilpict_���o", 0, 1500, 300, null, false);
	Fade("coilpict_���o", 0, 250, null, true);

//	WaitKey();
	$coilpictON=false;
	CoilBlack();

	MusicStart("coilsound_pict2",0,700,0,1000,null,false);

	Zoom("coilpict_����", 500, 1100, 0, null, false);
	Fade("coilpict_����", 500, 1000, Dxl3, false);

	Fade("coilpict_���o", 300, 1000, null, false);
	Zoom("coilpict_���o", 400, 750, 0, Axl1, false);

//	Zoom("@coilpict_�x�[�X�R", 50, 1000, 1500, null, false);
	Fade("@coilpict_�x�[�X�R", 50, 0, null, false);
	Fade("@coilpict_�x�[�X", 500, 500, null, false);

	Move("coilpict_��/*/*", 500, @0, @-418, Dxl1, false);
	Move("coilpict_��/*", 500, @0, @-418, Dxl1, false);

	Zoom("@coilpict_��/coilpict_��", 500, 1000, 500, AxlAuto, false);//����

	Zoom("@coilpict_�x�[�X�Q", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilpict_�x�[�X", 500, 1000, 750, AxlAuto, false);

//	Fade("coilpict_���o", 400, 0, Axl3, false);
//	Rotate("coilpict_���o", 400, @-90, @0, @0, Axl3, false);


	Delete("coilpict_�_�E�����[�h�v���Z�X");
//	Request("coilpict_��/*/*/*", Disused);
	Request("coilpict_��/*/*", Disused);
	Request("coilpict_��/*", Disused);
	Request("coilpict_���o", Disused);
	Request("coilpict_����", Disused);
}


..���摜���[������̌Ăяo��
function CoilPictFade_Mail(){

//�����[���{���i�Y�t����j�ˉ摜�\���̑J��
	Request("coilmail_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilmail_�_�E�����[�h�v���Z�X", null);

//	$coiltempnut="coilmail_��/�Y�t";
//	$coiltempnut2="coilmail_��/�Y�t�_��";

	Position("coilmail_��/�Y�t",$X�Y�t���W,$Y�Y�t���W);
	CreateTexture("coilpict_�Y�t�_��", 10709, $X�Y�t���W, $Y�Y�t���W, "cg/sys/coil/mail/�R�C�����[��_���[���e���v.png");
	SetAlias("coilpict_�Y�t�_��", "coilpict_�Y�t�_��");
	Request("coilpict_�Y�t�_��", AddRender);
	SetBlur("coilpict_�Y�t�_��", true, 2, 200, 50, true);
	Fade("coilpict_�Y�t�_��", 0, 0, null, true);

	CreateColor("coilpict_�Y�t���o�P", 10709, $X�Y�t���W, $Y�Y�t���W, 43, 41, "41a4ae");
	SetAlias("coilpict_�Y�t���o�P", "coilpict_�Y�t���o");
	Request("coilpict_�Y�t���o�P", AddRender);
	Fade("coilpict_�Y�t���o�P", 0, 0, null, true);

	CreateColor("coilpict_�Y�t���o�Q", 10709, $X�Y�t���W, $Y�Y�t���W, 43, 41, "WHITE");
	SetAlias("coilpict_�Y�t���o�Q", "coilpict_�Y�t���o");
	Request("coilpict_�Y�t���o�Q", AddRender);
	Fade("coilpict_�Y�t���o�Q", 0, 0, null, true);


	//588,280 500,201
	Position("coilpict_��",$X���W�l,$Y���W�l);
	$X���W�l+=188;
	$Y���W�l+=181;

	if($X�Y�t���W>$X���W�l){
		$X���W�l�Q=$X�Y�t���W-(($X�Y�t���W-$X���W�l)/3);
		$X���W�l�R=$X�Y�t���W-(($X�Y�t���W-$X���W�l)/3*2);
	}else{
		$X���W�l�Q=$X�Y�t���W+(($X���W�l-$X�Y�t���W)/3);
		$X���W�l�R=$X�Y�t���W+(($X���W�l-$X�Y�t���W)/3*2);
	}
	$Y���W�l�Q=$Y���W�l+100;



	Position("coilpict_��",$X���o���W,$Y���o���W);
	$X���o���W+=180;
	$Y���o���W-=5;
	CreateTexture("coilpict_��/coilpict_�F���P", 10706, $X���o���W, $Y���o���W, "cg/sys/coil/mail/�R�C�����[��_�摜�o��1.png");//10530
	SetAlias("coilpict_��/coilpict_�F���P", "coilpict_��/coilpict_�F���P");
	Request("coilpict_��/coilpict_�F���P", AddRender);
	Fade("coilpict_��/coilpict_�F���P", 0, 0, null, true);
	SetVertex("coilpict_��/coilpict_�F���P", 0, 205);
	Zoom("coilpict_��/coilpict_�F���P", 0, 4000, 1000, null, false);
//	$X���o���W-=30;
//	$Y���o���W-=181;
	CreateTexture("coilpict_��/coilpict_�F���Q", 10706, $X���o���W, $Y���o���W, "cg/sys/coil/mail/�R�C�����[��_�摜�o��2.png");//10530
	SetAlias("coilpict_��/coilpict_�F���Q", "coilpict_��/coilpict_�F���Q");
	Request("coilpict_��/coilpict_�F���Q", AddRender);
	Fade("coilpict_��/coilpict_�F���Q", 0, 0, null, true);
	SetVertex("coilpict_��/coilpict_�F���Q", 57, 205);
	Zoom("coilpict_��/coilpict_�F���Q", 0, 4000, 1000, null, false);


//////////////////////////////////////////////////////////
//	Fade("coilpict_���o", 0, 0, null, false);
//	Zoom("coilpict_���o", 0, 1000, 1000, null, true);

	Rotate("coilpict_��", 0, 90, 0, 0, null, true);
	Rotate("coilpict_��/*", 0, 90, 0, 0, null, true);
	Rotate("coilpict_��/*/*", 0, 90, 0, 0, null, true);

	Zoom("coilpict_��", 0, 0, 1000, Dxl2, true);
	Fade("coilpict_��/�x�[�X�Q", 0, 500, null, true);

	Zoom("@coilpict_��", 0, 0, 1000, Dxl2, true);//������


	Move("coilpict_��/*/*/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_��/*/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_��/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_��/*", 0, @0, @418, Dxl1, false);

	Move("coilpict_��/�ǉ�*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*/*", 0, @0, @0, Dxl1, false);
	WaitMove("coilpict_��/*", null);

	Move("coilpict_��/coilpict_�F��*", 0, $X���o���W, $Y���o���W, Axl1, true);
	Move("coilpict_��/coilpict_�F���P", 0, @-200, @0, Dxl1, false);
	Move("coilpict_��/coilpict_�F���Q", 0, @200, @0, Dxl1, false);

//	WaitKey();
//////////////////////////////////////////////////////////

	Position("coilpict_��",$X���o���W�P,$Y���o���W�P);
	CreateMask("�}�X�N�R", 200, $X���o���W�P, $Y���o���W�P, "cg/sys/coil/mail/�R�C�����[��_�摜�}�X�N.png", false);
	SetAlias("�}�X�N�R", "�}�X�N�R");

	$X���o���W=$X���o���W�P+20;
	$Y���o���W=$Y���o���W�P-50;
	CreateColor("�}�X�N�R/coilpict_���ʂP", 10706, $X���o���W, $Y���o���W, 300, 600, "41a4ae");
	SetAlias("�}�X�N�R/coilpict_���ʂP", "�}�X�N�R/coilpict_���ʂP");
	Request("�}�X�N�R/coilpict_���ʂP", AddRender);

	$X���o���W=$X���o���W�P+120;
	$Y���o���W=$Y���o���W�P+0;
	CreateColor("�}�X�N�R/coilpict_���ʂQ", 10706, $X���o���W, $Y���o���W, 200, 200, "41a5ae");
	SetAlias("�}�X�N�R/coilpict_���ʂQ", "�}�X�N�R/coilpict_���ʂQ");
	Request("�}�X�N�R/coilpict_���ʂQ", AddRender);

	$X���o���W=$X���o���W�P+190;
	$Y���o���W=$Y���o���W�P+100;
	CreateColor("�}�X�N�R/coilpict_���ʂR", 10706, $X���o���W, $Y���o���W, 300, 400, "41a4ae");
	SetAlias("�}�X�N�R/coilpict_���ʂR", "�}�X�N�R/coilpict_���ʂR");
	Request("�}�X�N�R/coilpict_���ʂR", AddRender);

	$X���o���W=$X���o���W�P+310;
	$Y���o���W=$Y���o���W�P+0;
	CreateColor("�}�X�N�R/coilpict_���ʂS", 10706, $X���o���W, $Y���o���W, 60, 500, "41a5ae");
	SetAlias("�}�X�N�R/coilpict_���ʂS", "�}�X�N�R/coilpict_���ʂS");
	Request("�}�X�N�R/coilpict_���ʂS", AddRender);

	$X���o���W=$X���o���W�P+330;
	$Y���o���W=$Y���o���W�P-0;
	CreateColor("�}�X�N�R/coilpict_���ʂT", 10706, $X���o���W, $Y���o���W, 100, 100, "41a4ae");
	SetAlias("�}�X�N�R/coilpict_���ʂT", "�}�X�N�R/coilpict_���ʂT");
	Request("�}�X�N�R/coilpict_���ʂT", AddRender);

	$X���o���W=$X���o���W�P+0;
	$Y���o���W=$Y���o���W�P+0;
	CreateColor("�}�X�N�R/coilpict_���ʂU", 10706, $X���o���W, $Y���o���W, 250, 150, "41a6ae");//41a6ae
	SetAlias("�}�X�N�R/coilpict_���ʂU", "�}�X�N�R/coilpict_���ʂU");
	Request("�}�X�N�R/coilpict_���ʂU", AddRender);

	$X���o���W=$X���o���W�P+30;
	$Y���o���W=$Y���o���W�P-60;
	CreateColor("�}�X�N�R/coilpict_���ʂV", 10706, $X���o���W, $Y���o���W, 200, 150, "AAAAAA");
	SetAlias("�}�X�N�R/coilpict_���ʂV", "�}�X�N�R/coilpict_���ʂV");
	Request("�}�X�N�R/coilpict_���ʂV", AddRender);

	$X���o���W=$X���o���W�P+110;
	$Y���o���W=$Y���o���W�P+10;
	CreateColor("�}�X�N�R/coilpict_���ʂW", 10706, $X���o���W, $Y���o���W, 100, 50, "AAAAAA");
	SetAlias("�}�X�N�R/coilpict_���ʂW", "�}�X�N�R/coilpict_���ʂW");
	Request("�}�X�N�R/coilpict_���ʂW", AddRender);

	$X���o���W=$X���o���W�P+200;
	$Y���o���W=$Y���o���W�P+110;
	CreateColor("�}�X�N�R/coilpict_���ʂX", 10706, $X���o���W, $Y���o���W, 200, 300, "AAAAAA");
	SetAlias("�}�X�N�R/coilpict_���ʂX", "�}�X�N�R/coilpict_���ʂX");
	Request("�}�X�N�R/coilpict_���ʂX", AddRender);

	Zoom("�}�X�N�R/coilpict_����*", 0, 0, 0, Dxl2, true);


	CreateSE("coilsound_pict6","se����_�R�C��_���쉹01");
	CreateSE("coilsound_pict7","se����_�R�C��_�Q�[�W���܂�02L");
	CreateSE("coilsound_pict8","se����_�R�C��_�V�X�e���摜�W�J");

	MusicStart("coilsound_pict6",0,700,0,1000,null,false);
	MusicStart("coilsound_pict7",300,700,0,1000,null,false);

	Fade("coilpict_�Y�t�_��", 0, 1000, null, false);
	Fade("coilpict_��/coilpict_�F���P", 0, 1000, null, false);
	Fade("coilpict_��/coilpict_�F���Q", 0, 1000, null, false);

	Fade("coilmail_��/�Y�t�_��", 200, 0, null, false);

	//Move("coilpict_�Y�t*", 500, $X���W�l, $Y���W�l, Dxl1, true);
	BezierMove("coilpict_�Y�t*", 500, (@0,@0){$X���W�l�Q,$Y���W�l�Q}{$X���W�l�R,$Y���W�l�Q}($X���W�l,$Y���W�l), Dxl1, true);

	DrawTransition("coilpict_�Y�t���o�P", 400, 0, 1000, 100, Dxl1, "cg/data/mosaic_01_00_0.png", false);

	Rotate("coilpict_�Y�t���o�Q", 200, 3600, 0, 0, null, false);

	Fade("coilpict_�Y�t�_��", 200, 0, Axl2, false);
	Fade("coilpict_�Y�t���o�P", 200, 1000, null, false);
	Fade("coilpict_�Y�t���o�Q", 200, 500, null, true);


	Zoom("�}�X�N�R/coilpict_����*", 700, 1000, 1000, null, false);
	Fade("�}�X�N�R/coilpict_����*", 700, 0, null, false);
	Request("�}�X�N�R/coilpict_����*", Disused);

	Fade("coilpict_�Y�t���o�Q", 200, 0, null, false);

	Zoom("coilpict_�Y�t*", 400, 50, 10000, Axl2, false);
	Rotate("coilpict_�Y�t*", 200, @160, 0, 0, Dxl1, true);
	Rotate("coilpict_�Y�t*", 200, 0, 0, 0, Dxl1, false);


	Fade("coilpict_���o", 0, 350, null, false);//
	Zoom("coilpict_���o", 150, 1500, 200, null, false);//

	Wait(100);

//	WaitKey();
////////////////////////////////////////
	$coilpictON=true;
	CoilBlack();

	SetVolumeEX("coilsound_pict7", 100, 0, null);
	MusicStart("coilsound_pict8",0,700,0,1000,null,false);

	Request("coilpict_��/coilpict_��/coilpict_�G", Play);

	Fade("coilpict_�Y�t*", 50, 0, null, true);

	Zoom("coilpict_��/coilpict_�F��*", 500, 1000, 1000, Axl3, false);
	Fade("coilpict_��/coilpict_�F��*", 500, 0, Axl3, false);
	Move("coilpict_��/coilpict_�F���P", 500, @-100, @0, Axl1, false);
	Move("coilpict_��/coilpict_�F���Q", 500, @100, @0, Axl1, false);


	Fade("@coilpict_���o*", 600, 0, null, false);

	Fade("coilpict_���o", 150, 0, null, false);//
	Zoom("coilpict_���o", 500, 1000, 1000, null, false);//

	Zoom("coilpict_��/coilpict_��", 600, 1000, 1000, Dxl1, false);//������
	Zoom("coilpict_��", 600, 1000, 1000, Dxl1, false);

	Rotate("coilpict_��", 500, 0, 0, 0, Dxl2, false);
	Rotate("coilpict_��/*", 500, 0, 0, 0, Dxl2, false);
	Rotate("coilpict_��/*/*", 500, 0, 0, 0, Dxl2, false);

	Move("coilpict_��/�}�X�N�Q", 500, @0, @-800, null, false);//������


	Zoom("@coilpict_�x�[�X", 500, 1000, 1000, DxlAuto, false);

	DrawTransition("@coilpict_���o�F", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition("coilpict_��/coilpict_��/coilpict_�G", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade("coilpict_��/coilpict_��/coilpict_�G", 400, 750, null, false);//����

	Fade("coilpict_��/�x�[�X", 200, 1000, null, false);
	Fade("coilpict_��/�x�[�X�Q", 300, 0, null, false);
	Fade("@coilpict_�x�[�X�R", 200, 1000, null, false);

	Zoom("@coilpict_�x�[�X�R", 500, 1000, 1200, Axl1, false);

//	Request("coilpict_�_�E�����[�h�v���Z�X", Start);

	//�L��
	$coilpictNumPre="coilpict_��";

}





..���摜���[��DL����̌Ăяo��
function CoilPictFade_Down(){

	Position("coilpict_��",$X���W1,$Y���W1);
	Position("coildown_��",$X���W2,$Y���W2);
	$X���W=$X���W1-$X���W2+79;
	$Y���W=$Y���W1-$Y���W2+120;

	$X���W��=$X���W;
	$Y���W��=$Y���W;

	if($X���W>200){$X���W=200;}
	if($Y���W>200){$Y���W=200;}
	if($X���W<-200){$X���W=-200;}
	if($Y���W<-200){$Y���W=-200;}

//////////////////////////////////////////////////////////////////////


	//588,280 500,201
	Position("coilpict_��",$X���W�l,$Y���W�l);
	$X���W�l+=188;
	$Y���W�l+=190;

	if($X�Y�t���W>$X���W�l){
		$X���W�l�Q=$X�Y�t���W-(($X�Y�t���W-$X���W�l)/3);
		$X���W�l�R=$X�Y�t���W-(($X�Y�t���W-$X���W�l)/3*2);
	}else{
		$X���W�l�Q=$X�Y�t���W+(($X���W�l-$X�Y�t���W)/3);
		$X���W�l�R=$X�Y�t���W+(($X���W�l-$X�Y�t���W)/3*2);
	}
	$Y���W�l�Q=$Y���W�l+100;


	Position("coilpict_��",$X���o���W,$Y���o���W);
	$X���o���W+=180;
	$Y���o���W-=5;
	CreateTexture("coilpict_��/coilpict_�F���P", 10706, $X���o���W, $Y���o���W, "cg/sys/coil/mail/�R�C�����[��_�摜�o��1.png");//10530
	SetAlias("coilpict_��/coilpict_�F���P", "coilpict_��/coilpict_�F���P");
	Request("coilpict_��/coilpict_�F���P", AddRender);
	Fade("coilpict_��/coilpict_�F���P", 0, 0, null, true);
	SetVertex("coilpict_��/coilpict_�F���P", 0, 205);
	Zoom("coilpict_��/coilpict_�F���P", 0, 4000, 1000, null, false);
//	$X���o���W-=30;
//	$Y���o���W-=181;
	CreateTexture("coilpict_��/coilpict_�F���Q", 10706, $X���o���W, $Y���o���W, "cg/sys/coil/mail/�R�C�����[��_�摜�o��2.png");//10530
	SetAlias("coilpict_��/coilpict_�F���Q", "coilpict_��/coilpict_�F���Q");
	Request("coilpict_��/coilpict_�F���Q", AddRender);
	Fade("coilpict_��/coilpict_�F���Q", 0, 0, null, true);
	SetVertex("coilpict_��/coilpict_�F���Q", 57, 205);
	Zoom("coilpict_��/coilpict_�F���Q", 0, 4000, 1000, null, false);

//	Fade("coilpict_��/coilpict_�F���P", 0, 1000, null, false);
//	Fade("coilpict_��/coilpict_�F���Q", 0, 1000, null, false);


//////////////////////////////////////////////////////////
	Request("@coilpict_��", Smoothing);

	Rotate("coilpict_��", 0, 60, 0, 0, null, true);
	Rotate("coilpict_��/*", 0, 60, 0, 0, null, true);
	Rotate("coilpict_��/*/*", 0, 60, 0, 0, null, true);

	Zoom("coilpict_��", 0, 300, 100, Dxl2, true);
	Fade("coilpict_��/�x�[�X", 0, 0, null, true);
	Fade("coilpict_��/�x�[�X�Q", 0, 0, null, true);

	Zoom("@coilpict_��", 0, 0, 1000, Dxl2, true);//������


	Fade("coilpict_���o", 0, 0, null, false);
	Zoom("coilpict_���o", 0, 1000, 1000, null, true);

	Move("coilpict_��/*/*/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_��/*/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_��/*/*", 0, @0, @418, Dxl1, false);
	Move("coilpict_��/*", 0, @0, @418, Dxl1, false);

	Move("coilpict_��/�ǉ�*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*/*", 0, @0, @0, Dxl1, false);
	WaitMove("coilpict_��/*", null);


	Move("coilpict_��/coilpict_�F��*", 0, $X���o���W, $Y���o���W, Axl1, true);
	Move("coilpict_��/coilpict_�F���P", 0, @-200, @0, Dxl1, false);
	Move("coilpict_��/coilpict_�F���Q", 0, @200, @0, Dxl1, true);

	Fade("coilpict_��/coilpict_�F��*", 0, 0, null, true);


//	WaitKey();
//////////////////////////////////////////////////////////

	Position("coilpict_��",$X���o���W�P,$Y���o���W�P);
	CreateMask("�}�X�N�R", 200, $X���o���W�P, $Y���o���W�P, "cg/sys/coil/mail/�R�C�����[��_�摜�}�X�N.png", false);
	SetAlias("�}�X�N�R", "�}�X�N�R");

	$X���o���W=$X���o���W�P+20;
	$Y���o���W=$Y���o���W�P-50;
	CreateColor("�}�X�N�R/coilpict_���ʂP", 10706, $X���o���W, $Y���o���W, 300, 600, "41a4ae");
	SetAlias("�}�X�N�R/coilpict_���ʂP", "�}�X�N�R/coilpict_���ʂP");
	Request("�}�X�N�R/coilpict_���ʂP", AddRender);

	$X���o���W=$X���o���W�P+120;
	$Y���o���W=$Y���o���W�P+0;
	CreateColor("�}�X�N�R/coilpict_���ʂQ", 10706, $X���o���W, $Y���o���W, 200, 200, "41a5ae");
	SetAlias("�}�X�N�R/coilpict_���ʂQ", "�}�X�N�R/coilpict_���ʂQ");
	Request("�}�X�N�R/coilpict_���ʂQ", AddRender);

	$X���o���W=$X���o���W�P+190;
	$Y���o���W=$Y���o���W�P+100;
	CreateColor("�}�X�N�R/coilpict_���ʂR", 10706, $X���o���W, $Y���o���W, 300, 400, "41a4ae");
	SetAlias("�}�X�N�R/coilpict_���ʂR", "�}�X�N�R/coilpict_���ʂR");
	Request("�}�X�N�R/coilpict_���ʂR", AddRender);

	$X���o���W=$X���o���W�P+310;
	$Y���o���W=$Y���o���W�P+0;
	CreateColor("�}�X�N�R/coilpict_���ʂS", 10706, $X���o���W, $Y���o���W, 60, 500, "41a5ae");
	SetAlias("�}�X�N�R/coilpict_���ʂS", "�}�X�N�R/coilpict_���ʂS");
	Request("�}�X�N�R/coilpict_���ʂS", AddRender);

	$X���o���W=$X���o���W�P+330;
	$Y���o���W=$Y���o���W�P-0;
	CreateColor("�}�X�N�R/coilpict_���ʂT", 10706, $X���o���W, $Y���o���W, 100, 100, "41a4ae");
	SetAlias("�}�X�N�R/coilpict_���ʂT", "�}�X�N�R/coilpict_���ʂT");
	Request("�}�X�N�R/coilpict_���ʂT", AddRender);

	$X���o���W=$X���o���W�P+0;
	$Y���o���W=$Y���o���W�P+0;
	CreateColor("�}�X�N�R/coilpict_���ʂU", 10706, $X���o���W, $Y���o���W, 250, 150, "41a6ae");//41a6ae
	SetAlias("�}�X�N�R/coilpict_���ʂU", "�}�X�N�R/coilpict_���ʂU");
	Request("�}�X�N�R/coilpict_���ʂU", AddRender);

	$X���o���W=$X���o���W�P+30;
	$Y���o���W=$Y���o���W�P-60;
	CreateColor("�}�X�N�R/coilpict_���ʂV", 10706, $X���o���W, $Y���o���W, 200, 150, "AAAAAA");
	SetAlias("�}�X�N�R/coilpict_���ʂV", "�}�X�N�R/coilpict_���ʂV");
	Request("�}�X�N�R/coilpict_���ʂV", AddRender);

	$X���o���W=$X���o���W�P+110;
	$Y���o���W=$Y���o���W�P+10;
	CreateColor("�}�X�N�R/coilpict_���ʂW", 10706, $X���o���W, $Y���o���W, 100, 50, "AAAAAA");
	SetAlias("�}�X�N�R/coilpict_���ʂW", "�}�X�N�R/coilpict_���ʂW");
	Request("�}�X�N�R/coilpict_���ʂW", AddRender);

	$X���o���W=$X���o���W�P+200;
	$Y���o���W=$Y���o���W�P+110;
	CreateColor("�}�X�N�R/coilpict_���ʂX", 10706, $X���o���W, $Y���o���W, 200, 300, "AAAAAA");
	SetAlias("�}�X�N�R/coilpict_���ʂX", "�}�X�N�R/coilpict_���ʂX");
	Request("�}�X�N�R/coilpict_���ʂX", AddRender);

	Zoom("�}�X�N�R/coilpict_����*", 0, 0, 0, Dxl2, true);


	$X���W��=-$X���W��;
	$Y���W��=-$Y���W��;

	$X���W���P=$X���W��+100;
	$X���W���Q=$X���W��-100;
	$Y���W���R=$Y���W��-800;

	Move("coilpict_*", 0, @$X���W��, @$Y���W��, null, false);//������
	Move("coilpict_*/*", 0, @$X���W��, @$Y���W��, null, false);//������
	Move("coilpict_*/*/*", 0, @$X���W��, @$Y���W��, null, false);//������

	Move("coilpict_��/�ǉ�*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*/*", 0, @0, @0, Dxl1, false);

	WaitMove("coilpict_��/*", null);
	WaitMove("coilpict_��/*/*", null);
	WaitMove("coilpict_��/*/*/*", null);


	CreateSE("coilsound_pict8","se����_�R�C��_�V�X�e���摜�W�J");
//////////////////////////////////////////////////////////////////////

	Zoom("coildown_��", 0, 1500, 1500, Axl1, false);
	Zoom("coildown_��/�}�X�N�Q", 0, 1500, 1500, Axl1, false);//������

	Move("coildown_��/�}�X�N�Q", 0, @0, @203, null, true);//������
	Zoom("@coildown_�x�[�X�R", 0, 1000, 1000, null, true);

	Fade("@coildown_���o*", 0, 0, null, false);
	Fade("@coildown_�x�[�X�Q", 0, 1000, null, false);
	Fade("@coildown_�x�[�X�R", 0, 1000, null, true);

//	WaitKey();
	MusicStart("coilsound_pict8",0,700,0,1000,null,false);

	Zoom("coildown_��", 0, 3000, 3000, Dxl1, false);
	Zoom("@coildown_�x�[�X�R", 200, 1200, 1200, Dxl2, false);//1200, 1700,

	Fade("@coildown_�x�[�X�R", 500, 0, null, false);
	Fade("@coildown_�x�[�X�Q", 500, 0, null, false);
	Fade("@coildown_�x�[�X", 500, 0, null, false);

	Fade("@coildown_*", 500, 0, null, false);
	Fade("@coildown_*/*", 500, 0, null, false);
	Fade("@coildown_*/*/*", 500, 0, null, false);

	Zoom("@coildown_�x�[�X�Q", 500, 1600, 2600, Axl1, false);
	Zoom("@coildown_�x�[�X", 500, 1600, 2600, Axl1, false);

	DrawTransition("@coildown_�x�[�X", 500, 1000, 0, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	DrawTransition("@coildown_�x�[�X�R", 500, 1000, 0, 100, Dxl1, "cg/data/mosaic_01_00_0.png", false);

	Wait(100);

	Move("coildown_*", 500, @$X���W, @$Y���W, Axl1, false);
	Move("coildown_*/*", 500, @$X���W, @$Y���W, Axl1, false);
	Move("coildown_*/*/*", 500, @$X���W, @$Y���W, Axl1, false);

	Move("coilpict_��/�ǉ�*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*/*", 0, @0, @0, Dxl1, false);

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

	Request("coilpict_��/coilpict_��/coilpict_�G", Play);

	Move("coilpict_*", 500, @$X���W��, @$Y���W��, Dxl1, false);//������
	Move("coilpict_*/*", 500, @$X���W��, @$Y���W��, Dxl1, false);//������
	Move("coilpict_*/*/*", 500, @$X���W��, @$Y���W��, Dxl1, false);//������

	Move("coilpict_��/�ǉ�*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*", 0, @0, @0, Dxl1, false);
	Move("coilpict_��/�ǉ�*/*/*", 0, @0, @0, Dxl1, false);

	Move("coilpict_��/coilpict_�F���P", 500, @$X���W���Q, @$Y���W��, Axl1, false);
	Move("coilpict_��/coilpict_�F���Q", 500, @$X���W���P, @$Y���W��, Axl1, false);
	Move("coilpict_��/�}�X�N�Q", 500, @$X���W��, @$Y���W���R, null, false);//������
//	Move("coilpict_��/coilpict_�F���P", 500, @-100, @0, Axl1, false);
//	Move("coilpict_��/coilpict_�F���Q", 500, @100, @0, Axl1, false);
//	Move("coilpict_��/�}�X�N�Q", 500, @0, @-800, null, false);//������


	Fade("coilpict_��/�x�[�X�Q", 0, 1000, null, false);
	Fade("coilpict_��/coilpict_�F��*", 0, 1000, null, true);
	DrawTransition("coilpict_��/�x�[�X�Q", 600, 0, 1000, 100, null, "cg/data/left.png", false);
	DrawTransition("coilpict_��/coilpict_�F��*", 600, 0, 1000, 100, null, "cg/data/left.png", false);

	Zoom("coilpict_��/coilpict_�F��*", 500, 1000, 1000, Axl3, false);
	Fade("coilpict_��/coilpict_�F��*", 500, 0, Axl3, false);

	Fade("coilpict_��/�x�[�X", 500, 1000, null, false);

	Zoom("�}�X�N�R/coilpict_����*", 700, 1000, 1000, null, false);
	Fade("�}�X�N�R/coilpict_����*", 700, 0, null, false);
	Request("�}�X�N�R/coilpict_����*", Disused);

	Fade("@coilpict_���o*", 600, 0, null, false);

	Zoom("coilpict_��/coilpict_��", 600, 1000, 1000, Dxl1, false);//������
	Zoom("coilpict_��", 600, 1000, 1000, Dxl1, false);

	Rotate("coilpict_��", 600, 0, 0, 0, Dxl1, false);
	Rotate("coilpict_��/*", 600, 0, 0, 0, Dxl1, false);
	Rotate("coilpict_��/*/*", 600, 0, 0, 0, Dxl1, false);

	Zoom("@coilpict_�x�[�X", 500, 1000, 1000, DxlAuto, false);

	DrawTransition("@coilpict_���o�F", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);

	DrawTransition("coilpict_��/coilpict_��/coilpict_�G", 500, 0, 1000, 100, Axl1, "cg/data/mosaic_01_00_0.png", false);
	Fade("coilpict_��/coilpict_��/coilpict_�G", 400, 750, null, false);//����

	Fade("coilpict_��/�x�[�X", 200, 1000, null, false);
	Fade("coilpict_��/�x�[�X�Q", 300, 0, null, false);
	Fade("@coilpict_�x�[�X�R", 200, 1000, null, false);

	Zoom("@coilpict_�x�[�X�R", 500, 1000, 1200, Axl1, false);

	//�L��
	$coilpictNumPre="coilpict_��";
}



































//���v���Z�X�i�Z�C�j

//�����M�A���M�A�ʐM�G���[
//�����M�����i�P�V�[���̂݁j

//���m�C�Y�̉��
//�������e�i���X




.���d�b�w��{�Z�b�g�x============================================================================================
..������ǉ��}�N��
function CoilReceAdd($CoilRece�ԍ�,$CoilRece�l��,$CoilRece�ʘb){

	$TempCoilRece=1;
	while($CoilReceCount>=$TempCoilRece){
		if(VariableValue($,"CoilRece�ԍ�"+$TempCoilRece)==$CoilRece�ԍ�){
			return;
		}
		$TempCoilRece++;
	}

	$CoilReceCount++;

	VariableValue($,$CoilRece�ԍ�+"_num",$CoilReceCount);

	VariableValue($,$CoilRece�ԍ�+"_�l��",$CoilRece�l��);
	VariableValue($,$CoilRece�ԍ�+"_�ʘb",$CoilRece�ʘb);

	VariableValue($,"CoilRece�l��"+$CoilReceCount,$CoilRece�l��);
	VariableValue($,"CoilRece�ʘb"+$CoilReceCount,$CoilRece�ʘb);
	VariableValue($,"CoilRece�ԍ�"+$CoilReceCount,$CoilRece�ԍ�);
}

..���d�b����{�Z�b�g�i10050�j
function CoilPhoneBase(){

	CreateWindow("coilphone_��", 20000, $coilphoneX, $coilphoneY, 287, 360, false);
	SetAlias("coilphone_��", "coilphone_��");

	CreateTexture("coilphone_��/�x�[�X", 10050, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/�R�C���d�b�g.png");//10000
	SetAlias("coilphone_��/�x�[�X", "coilphone_�x�[�X");
	CreateTexture("coilphone_��/�x�[�X�Q", 10059, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/�R�C���d�b�g.png");//10500
	SetAlias("coilphone_��/�x�[�X�Q", "coilphone_�x�[�X�Q");
	SetTone("coilphone_��/�x�[�X�Q", Monochrome);

	CreateTexture("coilphone_��/��", 10059, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/�R�C���d�b�g_��.png");//10500
	SetAlias("coilphone_��/��", "coilphone_��");
	Fade("coilphone_��/��", 0, 0, null, true);

	CreateMask("coilphone_��/�}�X�N�Q", 200, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/�R�C�����o�g�����W.png", false);
	SetAlias("coilphone_��/�}�X�N�Q", "coilphone_��/�}�X�N�Q");
	CreateTexture("coilphone_��/�}�X�N�Q/�x�[�X�R", 10055, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/�R�C���d�b�g.png");//10100
	SetAlias("coilphone_��/�}�X�N�Q/�x�[�X�R", "coilphone_�x�[�X�R");
	Request("coilphone_��/�}�X�N�Q/�x�[�X�R", AddRender);

	$coilphoneX4=$coilphoneX-20;
	$coilphoneY4=$coilphoneY-8;
	CreateTexture("coilphone_���o", 10052, $coilphoneX4, $coilphoneY4, "cg/sys/coil/phone/�R�C�����o.png");//10130
	SetAlias("coilphone_���o", "coilphone_���o");
	Request("coilphone_���o", AddRender);
	Fade("coilphone_���o", 0, 0, null, true);
	Zoom("coilphone_���o", 0, 1000, 0, Dxl1, true);

	CreateTexture("coilphone_����", 10052, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/�R�C���d�b�g_���o.png");//10130
	SetAlias("coilphone_����", "coilphone_����");
	Request("coilphone_����", AddRender);
	Fade("coilphone_����", 0, 0, null, true);
	SetVertex("coilphone_����", 130, 0);
	Zoom("coilphone_����", 0, 1200, 1000, null, false);

	$coilphoneX5=$coilphoneX+25;
	$coilphoneY5=$coilphoneY+294;
	CreateTexture("coilphone_��/���M�J�n", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/�R�C���d�b�{�^��CALL.png");//10130
	SetAlias("coilphone_��/���M�J�n", "coilphone_���M�J�n");
	Request("coilphone_��/���M�J�n", Smoothing);

	CreateTexture("coilphone_��/���M�v���J�n", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/�R�C���d�b�{�^��CALL.png");//10130
	SetAlias("coilphone_��/���M�v���J�n", "coilphone_���M�v���J�n");
	Request("coilphone_��/���M�v���J�n", AddRender);

	CreateTexture("coilphone_��/���M�I��", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/�R�C���d�b�{�^��ENDCALL.png");//10130
	SetAlias("coilphone_��/���M�I��", "coilphone_���M�I��");
	Request("coilphone_��/���M�I��", Smoothing);

	CreateTexture("coilphone_��/���M�v���I��", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/�R�C���d�b�{�^��ENDCALL.png");//10130
	SetAlias("coilphone_��/���M�v���I��", "coilphone_���M�v���I��");
	Request("coilphone_��/���M�v���I��", AddRender);

	CreateTexture("coilphone_��/���M���o", 10052, $coilphoneX5, $coilphoneY5, "cg/sys/coil/phone/�R�C���d�b�{�^��.png");//10130
	SetAlias("coilphone_��/���M���o", "coilphone_���M���o");
	Request("coilphone_��/���M���o", AddRender);
	Fade("coilphone_��/���M���o", 0, 0, null, false);


	$coilphoneX6=$coilphoneX+12;
	$coilphoneY6=$coilphoneY+56;
	CreateWindow("coilphone_��/coilphone_��", 20000, $coilphoneX6, $coilphoneY6, 263, 233, false);
	SetAlias("coilphone_��/coilphone_��", "coilphone_��");


	CreateProcess("coilphone_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilRacePro_Call");
	SetAlias("coilphone_�_�E�����[�h�v���Z�X", "coilphone_�_�E�����[�h�v���Z�X");

	CreateSE("coilsound_phone1","se����_�R�C��_�V�X�e���I�[�v��");
	CreateSE("coilsound_phone2","se����_�R�C��_�V�X�e���N���[�Y");
}


..���d�b�t�F�[�h����
function CoilPhoneDelete(){

	Zoom("@coilphone_��", 0, 1000, 1000, null, true);
	Zoom("coilphone_��/�}�X�N�Q", 0, 1000, 1000, null, true);


	Position("@coilphone_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilphone_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilphone_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilphone_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);


	Request("coilphone_*", Stop);
	Request("coilphone_rece_�_�E�����[�h�v���Z�X", Stop);
	Request("coilphone_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilphone_rece_�_�E�����[�h�v���Z�X", null);
	WaitAction("coilphone_�_�E�����[�h�v���Z�X", null);

	Fade("@coilphone_�x�[�X�R", 0, 1000, null, false);

	Zoom("coilphone_���o", 0, 1500, 300, null, false);
	Fade("coilphone_���o", 0, 250, null, true);

//	WaitKey();
	$coilphoneNOW="����";
	$coilphoneON=false;
	CoilBlack();

	MusicStart("coilsound_phone2",0,700,0,1000,null,false);

//	Fade("@coilphone_���M�v���J�n", 200, 0, null, false);
	Fade("@coilphone_���M*", 300, 0, null, false);
	Zoom("@coilphone_���M*", 300, 0, 0, Dxl1, false);


	Zoom("coilphone_����", 500, 1100, 0, null, false);
	Fade("coilphone_����", 500, 1000, Dxl3, false);

	Fade("coilphone_���o", 300, 1000, null, false);
	Zoom("coilphone_���o", 400, 750, 0, Axl1, false);

//	Zoom("@coilphone_�x�[�X�R", 50, 1000, 1500, null, false);
	Fade("@coilphone_�x�[�X�R", 50, 0, null, false);
	Fade("@coilphone_�x�[�X", 500, 500, null, false);

	Move("coilphone_��/*/*", 500, @0, @-375, Dxl1, false);
	Move("coilphone_��/*", 500, @0, @-375, Dxl1, false);

	Zoom("@coilphone_�x�[�X�Q", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilphone_�x�[�X", 500, 1000, 750, AxlAuto, false);

//	Fade("coilphone_���o", 400, 0, Axl3, false);
//	Rotate("coilphone_���o", 400, @-90, @0, @0, Axl3, false);


	Delete("coilphone_miss_�_�E�����[�h�v���Z�X");
	Delete("coilphone_call_�_�E�����[�h�v���Z�X");
	Delete("coilphone_call_�_�E�����[�h�v���Z�X*");
	Delete("coilphone_rece_�_�E�����[�h�v���Z�X");
	Delete("coilphone_�_�E�����[�h�v���Z�X");
	Request("coilphone_��/*/*", Disused);
	Request("coilphone_��/*", Disused);
	Request("coilphone_���o", Disused);
	Request("coilphone_����", Disused);


	$CoilPhone=false;
}



.���d�b�w�����M�Z�b�g�x
..���d�b���M�Z�b�g�i10050�j
function CoilPhone_IncallSet($coilphoneX,$coilphoneY,$CoilRece�Ǘ��ԍ�,$CoilRece�Ǘ��l��,$CoilRece�Ǘ��ʘb){

	$coilphoneName="���M";
	CoilPhone_CallBase();
}

..���d�b���M�Z�b�g�i10050�j
function CoilPhone_OutcallSet($coilphoneX,$coilphoneY,$CoilRece�Ǘ��ԍ�,$CoilRece�Ǘ��l��,$CoilRece�Ǘ��ʘb){

	$coilphoneName="���M";
	CoilPhone_CallBase();
}

..���d�b�R�[����{
function CoilPhone_CallBase(){

	if($coilphoneName=="���M"){
		CoilReceAdd($CoilRece�Ǘ��ԍ�,$CoilRece�Ǘ��l��,$CoilRece�Ǘ��ʘb);
	}

	if(!$CoilPhone){
		CoilPhoneBase();
	}else{
		Position("coilphone_��",$coilphoneX,$coilphoneY);
	}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	if($coilphoneName=="���M"){
		$coilphone_callnut1="coilphone_��/coilphone_call_��ޒ��M";
		$coilphone_callnut1a="coilphone_call_��ޒ��M";
		$coilphone_callimg1="cg/sys/coil/phone/�R�C���d�b�\��_IC.png";
		$coilphone_callnut2="coilphone_��/coilphone_��/�l�����M";
		$coilphone_callnut3="coilphone_��/coilphone_��/�g���M";
		$coilphone_callnut3_a="coilphone_��/coilphone_��/���o�g";
		$coilphone_callnut4w="coilphone_��/coilphone_��/��";
		$coilphone_callnut5="coilphone_��/coilphone_��/�f�t�H���M";

		$coilphone_callnut6="coilphone_��/coilphone_��/�ʘb���M";
		$coilphone_callnut6a="coilphone_��/coilphone_��/�\�����M�P";
		$coilphone_callnut6b="coilphone_��/coilphone_��/�\�����M�Q";
		$coilphone_callnut6c="coilphone_��/coilphone_��/�\�����M�R";
		$coilphone_callimg6a="cg/sys/coil/phone/�\��IC 01.png";
		$coilphone_callimg6b="cg/sys/coil/phone/�\��IC 02.png";
		$coilphone_callimg6c="cg/sys/coil/phone/�\��IC 03.png";

		$coilphone_callpro="CoilCallPro1";

	}else{
		$coilphone_callnut1="coilphone_��/coilphone_call_��ޔ��M";
		$coilphone_callnut1a="coilphone_call_��ޔ��M";
		$coilphone_callimg1="cg/sys/coil/phone/�R�C���d�b�\��_OC.png";
		$coilphone_callnut2="coilphone_��/coilphone_��/�l�����M";
		$coilphone_callnut3="coilphone_��/coilphone_��/�g���M";
		$coilphone_callnut3_a="coilphone_��/coilphone_��/���o�g";
		$coilphone_callnut4w="coilphone_��/coilphone_��/��";
		$coilphone_callnut5="coilphone_��/coilphone_��/�f�t�H���M";

		$coilphone_callnut6="coilphone_��/coilphone_��/�ʘb���M";
		$coilphone_callnut6a="coilphone_��/coilphone_��/�\�����M�P";
		$coilphone_callnut6b="coilphone_��/coilphone_��/�\�����M�Q";
		$coilphone_callnut6c="coilphone_��/coilphone_��/�\�����M�R";
		$coilphone_callimg6a="cg/sys/coil/phone/�\��OC 01.png";
		$coilphone_callimg6b="cg/sys/coil/phone/�\��OC 02.png";
		$coilphone_callimg6c="cg/sys/coil/phone/�\��OC 03.png";

		$coilphone_callpro="CoilCallPro2";
	}

	CreateProcess("coilphone_call_�_�E�����[�h�v���Z�X", 150, 0, 0, $coilphone_callpro);
	SetAlias("coilphone_call_�_�E�����[�h�v���Z�X", "coilphone_call_�_�E�����[�h�v���Z�X");

	CreateProcess("coilphone_call_�_�E�����[�h�v���Z�X�Q", 150, 0, 0, "CoilCallProMoni");
	SetAlias("coilphone_call_�_�E�����[�h�v���Z�X�Q", "coilphone_call_�_�E�����[�h�v���Z�X�Q");

	CreateProcess("coilphone_call_�_�E�����[�h�v���Z�X�R", 150, 0, 0, "CoilCallProTalk");
	SetAlias("coilphone_call_�_�E�����[�h�v���Z�X�R", "coilphone_call_�_�E�����[�h�v���Z�X�R");


	//�����
	$coilphone_callX1=$coilphoneX+64+3;
	$coilphone_callY1=$coilphoneY+18;
	CreateTexture($coilphone_callnut1, 10051, $coilphone_callX1, $coilphone_callY1, $coilphone_callimg1);
	SetAlias($coilphone_callnut1, $coilphone_callnut1a);

	//���l��
	SetFont("�l�r �S�V�b�N", 25, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$coilphoneX;
	$coiltempY=$coilphoneY+186;
	$coiltempimg=$CoilRece�Ǘ��l��;
	$temp=String("<SPAN size=-2>%s</SPAN>",$CoilRece�Ǘ��l��);
	CreateText($coilphone_callnut2, 10051, Center, $coiltempY, Auto, Auto, $temp);//10090
	SetAlias($coilphone_callnut2, $coilphone_callnut2);
	Request($coilphone_callnut2, NoLog);

/*
	$������=Strlen($coiltempimg);
	if($������<=3){$temphmin=158;}
	else if($������<=4){$temphmin=162;}
	else if($������<=5){$temphmin=165;}
	else if($������<=6){$temphmin=166;}
	else if($������<=7){$temphmin=169;}
	else if($������<=8){$temphmin=171;}
	else{$temphmin=173;}//9
*/
$temphmin=159;
	$temph=$coiltempX+$temphmin-512;
	Move($coilphone_callnut2, 0, @$temph, @0, null, true);

	//���g
	$coiltempX=$coilphoneX+83+3;
	$coiltempY=$coilphoneY+77;
	CreateTexture($coilphone_callnut3, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�t�F�[�X.png");
	SetAlias($coilphone_callnut3, $coilphone_callnut3);

	//����f�t�H
	$coiltempX=$coilphoneX+83+3;
	$coiltempY=$coilphoneY+77;
	CreateTexture($coilphone_callnut5, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b_�f�t�H���g�A�C�R��.png");
	SetAlias($coilphone_callnut5, $coilphone_callnut5);

	//���瑋
	$coiltempX=$coilphoneX+83+7+3;
	$coiltempY=$coilphoneY+77+7;
	CreateWindow($coilphone_callnut4w, 10051, $coiltempX, $coiltempY, 98, 98, false);
	SetAlias($coilphone_callnut4w, $coilphone_callnut4w);

	//���A�j���[�V����
	$coiltempX=$coilphoneX+115;
	$coiltempY=$coilphoneY+218;
	CreateTexture($coilphone_callnut6, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�\��.png");
	SetAlias($coilphone_callnut6, $coilphone_callnut6);

	CreateTexture($coilphone_callnut3_a, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�\��.png");
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
	Fade("coilphone_��/coilphone_��/�\��*", 0, 0, null, false);


	Request("coilphone_��/coilphone_��/*", PushText);
	Request("coilphone_��/coilphone_��/*/*", PushText);


	$coilphoneX6=$coilphoneX+12;
	$coilphoneY6=$coilphoneY+56;
	CreateWindow("coilphone_��/coilphone_call_��", 20000, $coilphoneX6, $coilphoneY6, 263, 233, false);
	SetAlias("coilphone_��/coilphone_call_��", "coilphone_call_��");

	CreateColor("coilphone_��/coilphone_call_��/���o�F�P", 10052, $coilphoneX, $coilphoneY, 300, 1, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone_��/coilphone_call_��/���o�F�P", "coilphone_call_���o�F�P");
	Request("coilphone_��/coilphone_call_��/���o�F�P", AddRender);
	CreateColor("coilphone_��/coilphone_call_��/���o�F�Q", 10052, $coilphoneX, $coilphoneY, 300, 200, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone_��/coilphone_call_��/���o�F�Q", "coilphone_call_���o�F�Q");
	Request("coilphone_��/coilphone_call_��/���o�F�Q", AddRender);
	Fade("@coilphone_call_���o�F�Q", 0, 0, null, true);

	//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//����
	if(!$CoilPhone){
		Move("coilphone_��/*", 0, @0, @-375, null, false);
		Move("coilphone_��/*/*", 0, @0, @-375, null, false);
		Move("coilphone_��/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone_���M�I��", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone_���M�J�n", 0, 0, 0, Dxl1, false);
	
		Fade("@coilphone_���M�J�n", 0, 0, null, true);
		Fade("@coilphone_���M�I��", 0, 0, null, true);
		Fade("@coilphone_���M�v��*", 0, 0, null, true);

		Fade("@coilphone_��/coilphone_��/�g*", 0, 0, null, false);

		Fade("@coilphone_�x�[�X�R", 0, 0, null, false);
		Fade("coilphone_��/�x�[�X", 0, 750, null, true);
	
		SetVertex("@coilphone_�x�[�X", 143, 0);
		Zoom("@coilphone_�x�[�X", 0, 1200, 1000, null, true);//��������������
		Fade("@coilphone_�x�[�X", 0, 0, null, true);

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

		Fade("coilphone_��/coilphone_call_��/���o�F�P", 0, 0, null, false);
		Fade("coilphone_��/coilphone_call_��/���o�F�Q", 0, 0, null, false);

	}

	if($coilphoneName=="���M"){
		CreateSE("coilsound_phone3","se����_�R�C��_���쉹01");
		CreateSE("coilsound_phone9","se����_�R�C��_�^�[�Q�b�g�J��");
	
		CreateSE("coilsound_phone4","se����_�R�C��_�V�X�e�����[���W�J");
	
		CreateSE("coilsound_phone5","se����_�R�C��_���쉹01");
		CreateSE("coilsound_phone6","se����_�R�C��_���M�ҋ@01");
		CreateSE("coilsound_phone_call","se����_�R�C��_���M�ҋ@02L");
	}

	$CoilPhone=true;
}



..���R�[���J�n
function CoilPhone_CallFade(){

	if(!$coilphoneON){
	//���x�[�X���Ȃ������ꍇ�i�ʏ퉉�o�j
		MusicStart("coilsound_phone1",0,700,0,1000,null,false);

		Fade("@coilphone_call_���o�F�P", 0, 0, Axl1, false);
	
		Zoom("@coilphone_�x�[�X", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone_���o", 0, 350, null, false);
	//	Zoom("coilphone_���o", 200, 1500, 200, null, false);
	
	//	Fade("coilphone_��/�x�[�X�Q", 300, 500, null, false);
	//	Fade("coilphone_��/�x�[�X", 300, 1000, null, false);
	//	Move("coilphone_��/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone_��/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone_���o", 0, 350, null, false);
		Zoom("coilphone_���o", 150, 1500, 200, null, false);
	
		Fade("coilphone_��/�x�[�X�Q", 200, 500, null, false);
	//	Fade("coilphone_��/�x�[�X", 200, 1000, null, false);
		Move("coilphone_��/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_��/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_��/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphoneON=true;
		CoilBlack();

		Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 600, null, false);

		if($coilphoneName=="���M"){
			Fade("coilphone_��/coilphone_��/�ʘb*", 0, 1000, null, false);
			Fade("@coilphone_���M�v���I��", 0, 1000, null, false);
		}else{
			Fade("coilphone_��/coilphone_call_���*", 0, 0, null, false);

			Fade("coilphone_��/coilphone_��/�ʘb*", 0, 0, null, false);
			Fade("@coilphone_���M�v���J�n", 0, 1000, null, false);
		}

		Fade("coilphone_���o", 0, 1000, null, true);

		Move("coilphone_��/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_��/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_��/*", 500, @0, @339, Dxl1, false);

		Fade("coilphone_��/�x�[�X", 200, 1000, null, false);
		Fade("coilphone_��/�x�[�X�Q", 200, 0, null, false);
		Fade("@coilphone_�x�[�X�R", 200, 1000, null, false);
	
		Fade("coilphone_���o", 500, 0, Axl2, false);
		Zoom("coilphone_���o", 200, 1000, 1000, null, false);
	
		if($coilphoneName=="���M"){
			Fade("@coilphone_���M�v���I��", 300, 0, null, false);
			Fade("@coilphone_���M�I��", 400, 1000, null, false);
		}else{
			Fade("@coilphone_���M�v���J�n", 400, 0, null, false);
			Fade("@coilphone_���M�J�n", 400, 1000, null, false);
		}
		Zoom("@coilphone_���M�I��", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone_���M�J�n", 400, 1000, 1000, Dxl1, false);


		Move("coilphone_��/�}�X�N�Q", 500, @0, @-373, null, false);
		Zoom("@coilphone_�x�[�X�R", 500, 1000, 1200, Axl1, false);

		//WaitAction("coilphone_��/�}�X�N�Q", null);
		//$SYSTEM_skip=false;
		//Draw();

		if($coilphoneName=="���M"){
			Request("coilphone_call_�_�E�����[�h�v���Z�X", Start);
			Request("coilphone_call_�_�E�����[�h�v���Z�X�Q", Start);
		//	Request("coilphone_�_�E�����[�h�v���Z�X", Start);
		}else if($coilphoneError){
			WaitAction("coilphone_��/�}�X�N�Q", null);
			MusicStart("coilsound_phone5",0,700,0,1000,null,false);

			Fade("coilphone_��/coilphone_call_���*", 0, 1000, null, false);
			Fade("coilphone_��/���M���o", 0, 1000, null, true);
			Fade("coilphone_��/���M���o", 200, 0, null, false);
			Fade("@coilphone_���M�I��", 0, 1000, null, false);
			Fade("@coilphone_���M�J�n", 0, 0, null, false);

			Fade("coilphone_��/coilphone_��/�ʘb*", 0, 500, null, false);

			WaitPlay("coilsound_phone5", null);
			MusicStart("coilsound_phone6",0,700,0,1000,null,false);
			WaitPlay("coilsound_phone6", null);
			Wait(500);
			CoilPhone_Error();
			$coilphoneError=false;
		}else{
			WaitAction("coilphone_��/�}�X�N�Q", null);
			MusicStart("coilsound_phone5",0,700,0,1000,null,false);

			Fade("coilphone_��/coilphone_call_���*", 0, 1000, null, false);
			Fade("coilphone_��/���M���o", 0, 1000, null, true);
			Fade("coilphone_��/���M���o", 200, 0, null, false);
			Fade("@coilphone_���M�I��", 0, 1000, null, false);
			Fade("@coilphone_���M�J�n", 0, 0, null, false);

			Fade("coilphone_��/coilphone_��/�ʘb*", 0, 500, null, false);

			WaitPlay("coilsound_phone5", null);
			MusicStart("coilsound_phone6",0,700,0,1000,null,false);
			WaitPlay("coilsound_phone6", null);

			Request("coilphone_call_�_�E�����[�h�v���Z�X", Start);
			Request("coilphone_call_�_�E�����[�h�v���Z�X�Q", Start);
		//	Request("coilphone_�_�E�����[�h�v���Z�X", Start);

			MusicStart("coilsound_phone_call",0,700,0,1000,null,true);
		}

	}else{
	//���x�[�X���������ꍇ�i�u�����o�j
		Request("coilphone_*", Stop);
		//Request("@coilphone_��/coilphone_��/�\��*", Erase);

		Position("coilphone_��",$coilphoneX,$coilphoneY);

		//�����
		$coiltempX=$coilphoneX+64+3;
		$coiltempY=$coilphoneY+18;
		Move($coilphone_callnut1, 0, $coiltempX, $coiltempY, null, false);

		//���l��
		$coiltempX=$coilphoneX;
		$coiltempY=$coilphoneY+186;

		$temph=ImageHorizon($coilphone_callnut2);
		$temph=(1024-$temph)/2;

/*
		$������=Strlen($CoilRece�Ǘ��l��);
		if($������<=3){$temphmin=158;}
		else if($������<=4){$temphmin=162;}
		else if($������<=5){$temphmin=165;}
		else if($������<=6){$temphmin=166;}
		else if($������<=7){$temphmin=169;}
		else if($������<=8){$temphmin=171;}
		else{$temphmin=173;}//9
*/
$temphmin=159;
		$coiltempX=$temph+($coiltempX+$temphmin-512);
		Move($coilphone_callnut2, 0, $coiltempX, $coiltempY, null, false);

		//���g
		$coiltempX=$coilphoneX+83+3;
		$coiltempY=$coilphoneY+77;
		Move($coilphone_callnut3, 0, $coiltempX, $coiltempY, null, false);

		//����f�t�H
		$coiltempX=$coilphoneX+83+3;
		$coiltempY=$coilphoneY+77;
		Move($coilphone_callnut5, 0, $coiltempX, $coiltempY, null, false);

		//���瑋
		$coiltempX=$coilphoneX+83+7+3;
		$coiltempY=$coilphoneY+77+7;
		Move($coilphone_callnut4w, 0, $coiltempX, $coiltempY, null, false);

		//���A�j���[�V����
		$coiltempX=$coilphoneX+115;
		$coiltempY=$coilphoneY+218;
		Move($coilphone_callnut6, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone_callnut6a, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone_callnut6b, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone_callnut6c, 0, $coiltempX, $coiltempY, null, false);

		$coiltempX=$coilphoneX+12;
		$coiltempY=$coilphoneY+56;
		Move("coilphone_��/coilphone_call_��", 0, $coiltempX, $coiltempY, null, false);

		Move("coilphone_��/coilphone_call_��/���o�F�P", 0, $coilphoneX, $coilphoneY, null, false);
		Move("coilphone_��/coilphone_call_��/���o�F�Q", 0, $coilphoneX, $coilphoneY, null, false);

		//�����͕K�����M�ɂȂ�
		MusicStart("coilsound_phone3",0,700,0,1000,null,false);

		Fade("coilphone_��/coilphone_call_���*", 0, 0, null, false);
		Fade("coilphone_��/���M*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/*/*", 0, 0, null, false);

		//Fade($coilphone_callnut1, 0, 1000, null, false);
		Fade($coilphone_callnut2, 0, 1000, null, false);
		//Fade($coilphone_callnut3, 0, 1000, null, false);
		Fade($coilphone_callnut5, 0, 600, null, true);
		Fade("@coilphone_���M�J�n", 0, 1000, null, true);

		if(!$coilphoneError){
			//���[�����o===============================
			MusicStart("coilsound_phone9",0,700,0,1000,null,false);
			Wait(500);
			MusicStart("coilsound_phone4",0,700,0,1000,null,false);
			Wait(1000);
			//=========================================
		}

		MusicStart("coilsound_phone5",0,700,0,1000,null,false);

		Fade($coilphone_callnut1, 0, 1000, null, false);
		Fade("coilphone_��/���M���o", 0, 1000, null, true);
		Fade("coilphone_��/���M���o", 200, 0, null, false);
		Fade("@coilphone_���M�I��", 0, 1000, null, false);
		Fade("@coilphone_���M�J�n", 0, 0, null, false);

		Fade("coilphone_��/coilphone_��/�ʘb*", 0, 500, null, false);
		//coilphone_��/coilphone_��/�ʘb�G���[

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
			Request("coilphone_call_�_�E�����[�h�v���Z�X", Start);
			Request("coilphone_call_�_�E�����[�h�v���Z�X�Q", Start);
			MusicStart("coilsound_phone_call",0,700,0,1000,null,true);
		}
	}

}



function CoilCallProTalk(){

	if($CoilRece�Ǘ��l��=="�f���o���[���[�N�X"){
		$PhoneLipName1="���V�G";
	}else if($CoilRece�Ǘ��l��=="�H�ꂳ��"){
		$PhoneLipName1="�H��";
	}else if($CoilRece�Ǘ��l��=="�@�@"){
		$PhoneLipName1="���]";
	}else{
		$PhoneLipName1=$CoilRece�Ǘ��l��;
	}



	$PhoneLipNut1_0="@"+$coilphone_callnut3_a;
	$PhoneLipNut1_1="@"+$coilphone_callnut3_a;
//	$PhoneLipNut1_2="@"+$alies_lip2;
//	$PhoneLipNut1_n="@"+$�i�b�g��;

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
	Position("@coilphone_��",$CoilCallPro2X,$CoilCallPro2Y);
	$CoilCallPro2Y_base=$CoilCallPro2Y-300;
	$CoilCallPro2Y+=360;

	Move("@coilphone_call_���o�F�P", 0, $CoilCallPro2X, $CoilCallPro2Y_base, null, true);
	Fade("@coilphone_call_���o�F�P", 0, 200, null, true);
	Move("@coilphone_call_���o�F�Q", 0, $CoilCallPro2X, $CoilCallPro2Y_base, null, true);
	Fade("@coilphone_call_���o�F�Q", 0, 100, null, true);

	Move("@coilphone_call_���o�F�P", 3000, @0, $CoilCallPro2Y, null, false);
	Move("@coilphone_call_���o�F�Q", 15000, @0, $CoilCallPro2Y, null, false);

	while(1){
		Position("@coilphone_call_���o�F�P",$CoilCallPro2Xa,$CoilCallPro2Ya);
		if($CoilCallPro2Ya>=$CoilCallPro2Y){
			$CoilCallPro2R=Random(5);
			if($CoilCallPro2R<=3){
				Move("@coilphone_call_���o�F�P", 0, $CoilCallPro2X, $CoilCallPro2Y_base, null, true);
				Move("@coilphone_call_���o�F�P", 3000, @0, $CoilCallPro2Y, null, false);
			}
		}
		Position("@coilphone_call_���o�F�Q",$CoilCallPro2Xa,$CoilCallPro2Ya);
		if($CoilCallPro2Ya>=$CoilCallPro2Y){
			Move("@coilphone_call_���o�F�Q", 0, $CoilCallPro2X, $CoilCallPro2Y_base, null, true);
			Move("@coilphone_call_���o�F�Q", 15000, @0, $CoilCallPro2Y, null, false);
		}
	}

}


function CoilCallPro1(){

//	Fade("@coilphone_��/coilphone_��/�ʘb*", 0, 500, null, false);
	Fade("@coilphone_��/coilphone_��/�\�����M�R", 0, 700, null, true);

	while(1){
		Fade("@coilphone_��/coilphone_��/�\�����M�P", 300, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�\�����M�R", 300, 700, null, true);

		Fade("@coilphone_��/coilphone_��/�\�����M�R", 300, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�\�����M�Q", 300, 700, null, true);

		Fade("@coilphone_��/coilphone_��/�\�����M�Q", 300, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�\�����M�P", 300, 700, null, true);
	}
}


function CoilCallPro2(){

//	Fade("@coilphone_��/coilphone_��/�ʘb*", 0, 500, null, false);
	Fade("@coilphone_��/coilphone_��/�\�����M�P", 0, 700, null, true);

	while(1){
		Fade("@coilphone_��/coilphone_��/�\�����M�R", 300, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�\�����M�P", 300, 700, null, true);

		Fade("@coilphone_��/coilphone_��/�\�����M�P", 300, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�\�����M�Q", 300, 700, null, true);

		Fade("@coilphone_��/coilphone_��/�\�����M�Q", 300, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�\�����M�R", 300, 700, null, true);
	}
}


..���ʘb�J�n
function CoilPhone_CallOn($coilphone��X,$coilphone��Y,$coilphone�Ώ�){
	CreateSE("coilsound_phone8","se����_�R�C��_�V�X�e�����[���V��");
	SetVolumeEX("coilsound_phone_call", 0, 0, null);
	MusicStart("coilsound_phone8",0,700,0,1000,null,false);

	Request("coilphone_call_�_�E�����[�h�v���Z�X", Stop);
	Request("@coilphone_��/coilphone_��/�\��*", Erase);

	Request("coilphone_call_�_�E�����[�h�v���Z�X�R", Start);

	Fade("@coilphone_��/coilphone_��/�ʘb*", 0, 1000, null, true);
	Fade("@coilphone_��/coilphone_��/�g*", 0, 1000, null, false);

	$coilphonecount=0;

	if($coilphone�Ώ�=="�f�t�H���g"){
		Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 0, null, false);
	}else if($coilphone�Ώ�=="�s��"){
		Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 1000, null, false);
	}else{
		$coilphoneimg="cg/st/"+$coilphone�Ώ�+".png";
		$coilphonenut="coilphone_��/coilphone_��/��/��0";

		Position("coilphone_��",$X���W�l,$Y���W�l);

		CreateTexture($coilphonenut, 10051, $X���W�l, $Y���W�l, $coilphoneimg);
		SetAlias($coilphonenut, $coilphonenut);
		Fade($coilphonenut, 0, 0, null, true);

		$coilphonetempH=ImageHorizon($coilphonenut);
		$X���W�l=(287-$coilphonetempH)/2;

		Move($coilphonenut, 0, @$X���W�l, @20, null, true);
		Move($coilphonenut, 0, $coilphone��X, $coilphone��Y, null, true);

		Fade($coilphonenut, 0, 700, null, true);
		Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 0, null, false);
	}
}


..���ʘb�p����ω�
function CoilPhone_Face($coilphone��X,$coilphone��Y,$coilphone�Ώ�){

	if($coilphone�Ώ�=="�f�t�H���g"){
		Fade("coilphone_��/coilphone_��/��/*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 0, null, false);
	}else if($coilphone�Ώ�=="�s��"){
		Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 1000, null, false);
		Fade("coilphone_��/coilphone_��/��/*", 0, 0, null, false);
	}else{
		$precoilphonecount=$coilphonecount;
		$coilphonecount++;

		$coilphoneimg="cg/st/"+$coilphone�Ώ�+".png";
		$coilphonenut="coilphone_��/coilphone_��/��/��"+$coilphonecount;

		Position("coilphone_��",$X���W�l,$Y���W�l);

		CreateTexture($coilphonenut, 10051, $X���W�l, $Y���W�l, $coilphoneimg);
		SetAlias($coilphonenut, $coilphonenut);
		Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 0, null, false);
		Fade($coilphonenut, 0, 0, null, true);

		$coilphonetempH=ImageHorizon($coilphonenut);
		$X���W�l=(287-$coilphonetempH)/2;

		Move($coilphonenut, 0, @$X���W�l, @20, null, true);
		Move($coilphonenut, 0, $coilphone��X, $coilphone��Y, null, true);

		//�����b�N�ݒu
		LockVideo(true);
		Fade("coilphone_��/coilphone_��/��/*", 0, 0, null, false);
		Fade($coilphonenut, 0, 700, null, true);
		//�����b�N�ݒu
		LockVideo(false);

		$precoilphonenut="coilphone_��/coilphone_��/��/��"+$precoilphonecount;
		Delete($precoilphonenut);
	}
}

..���ʘb�I��
function CoilPhone_End(){
	Request("coilphone_call_�_�E�����[�h�v���Z�X", Stop);
	Request("coilphone_call_�_�E�����[�h�v���Z�X�Q", Stop);
	Request("coilphone_call_�_�E�����[�h�v���Z�X�R", Stop);
	Request("@coilphone_��/coilphone_��/�\��*", Erase);

	CreateSE("coilsound_phone8","se����_�R�C��_���쉹01");
	SetVolumeEX("coilsound_phone_call", 0, 0, null);
	MusicStart("coilsound_phone8",0,700,0,1000,null,false);

	Position("coilphone_��",$X���W�l,$Y���W�l);

//	$X���W�l=$X���W�l+78;
//	$Y���W�l=$Y���W�l+102;
//	CreateTexture("coilphone_��/coilphone_��/�ʘb�I��", 10051, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b���M�L��2.png");
//	SetAlias("coilphone_��/coilphone_��/�ʘb�I��", "coilphone_��/coilphone_��/�ʘb�I��");
//	Fade("coilphone_��/coilphone_��/�ʘb�I��", 0, 0, null, true);

	$X���W�l=$X���W�l+115;
	$Y���W�l=$Y���W�l+218;
	CreateTexture("coilphone_��/coilphone_��/�ʘb�I��", 10051, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b���M�L��3.png");
	SetAlias("coilphone_��/coilphone_��/�ʘb�I��", "coilphone_��/coilphone_��/�ʘb�I��");
	Fade("coilphone_��/coilphone_��/�ʘb�I��", 0, 0, null, true);

//	Fade("coilphone_��/coilphone_call_���*", 0, 0, null, false);

	Fade("coilphone_��/coilphone_��/���o�g", 0, 0, null, false);

	Fade("coilphone_��/coilphone_call_��/���o�F�P", 0, 0, null, false);
	Fade("coilphone_��/coilphone_call_��/���o�F�Q", 0, 0, null, false);

	Fade("coilphone_��/���M�I��", 0, 0, null, false);
	Fade("coilphone_��/���M�J�n", 0, 1000, null, false);

	Fade("coilphone_��/coilphone_��/�g*", 0, 0, null, false);
	Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 600, null, false);
	Fade("coilphone_��/coilphone_��/�ʘb*", 0, 0, null, false);
	Fade("coilphone_��/coilphone_��/��/*", 0, 0, null, false);
	Fade("coilphone_��/coilphone_��/�ʘb�I��", 0, 1000, null, true);
}

..���ʐM�G���[
function CoilPhone_Error(){
	Request("coilphone_call_�_�E�����[�h�v���Z�X", Stop);
	Request("coilphone_call_�_�E�����[�h�v���Z�X�Q", Stop);
	Request("coilphone_call_�_�E�����[�h�v���Z�X�R", Stop);
	Request("@coilphone_��/coilphone_��/�\��*", Erase);

	CreateSE("coilsound_phone0","se����_�R�C��_�ʐM�Ւf01");
	SetVolumeEX("coilsound_phone_call", 0, 0, null);
	MusicStart("coilsound_phone0",0,700,0,1000,null,false);


	Position("coilphone_��",$X���W�l,$Y���W�l);

//	$X���W�l=$X���W�l+78;
//	$Y���W�l=$Y���W�l+102;
//	CreateTexture("coilphone_��/coilphone_��/�ʘb�I��", 10051, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b���M�L��2.png");
//	SetAlias("coilphone_��/coilphone_��/�ʘb�I��", "coilphone_��/coilphone_��/�ʘb�I��");
//	Fade("coilphone_��/coilphone_��/�ʘb�I��", 0, 0, null, true);

	CreateProcess("coilphone_error_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilErrorPro1");
	SetAlias("coilphone_error_�_�E�����[�h�v���Z�X", "coilphone_error_�_�E�����[�h�v���Z�X");

	$X���W�l=$X���W�l+67;
	$Y���W�l=$Y���W�l+102;
	CreateTexture("coilphone_��/coilphone_��/�G���[", 10051, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b�G���[.png");
	SetAlias("coilphone_��/coilphone_��/�G���[", "coilphone_��/coilphone_��/�G���[");
	Fade("coilphone_��/coilphone_��/�G���[", 0, 0, null, true);

	CreateTexture("coilphone_��/coilphone_��/�G���[�Q", 10051, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b�G���[2.png");
	SetAlias("coilphone_��/coilphone_��/�G���[�Q", "coilphone_��/coilphone_��/�G���[�Q");
	Request("coilphone_��/coilphone_��/�G���[�Q", SubRender);
	Fade("coilphone_��/coilphone_��/�G���[�Q", 0, 0, null, true);


	Fade("coilphone_��/coilphone_call_���*", 0, 0, null, false);

	Fade("coilphone_��/coilphone_��/���o�g", 0, 0, null, false);

	Fade("coilphone_��/coilphone_call_��/���o�F�P", 0, 0, null, false);
	Fade("coilphone_��/coilphone_call_��/���o�F�Q", 0, 0, null, false);

	Fade("coilphone_��/���M�I��", 0, 0, null, false);
	Fade("coilphone_��/���M�J�n", 0, 1000, null, false);/////////

	Fade("coilphone_��/coilphone_��/�l��*", 0, 0, null, false);
	Fade("coilphone_��/coilphone_��/�g*", 0, 0, null, false);
	Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 0, null, false);
	Fade("coilphone_��/coilphone_��/�ʘb*", 0, 0, null, false);
	Fade("coilphone_��/coilphone_��/��/*", 0, 0, null, false);
	Fade("coilphone_��/coilphone_��/�G���[", 0, 1000, null, true);

	Request("coilphone_error_�_�E�����[�h�v���Z�X", Start);
}











.���d�b�w���M�Z�b�g�x
..���d�b���M�L��Z�b�g�i10050�j
function CoilPhone_MissSet($coilphoneX,$coilphoneY){

	if(!$CoilPhone){
		CoilPhoneBase();
	}else{
		Position("coilphone_��",$coilphoneX,$coilphoneY);
	}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	$coilphone_missnut1="coilphone_��/coilphone_��/coilphone_miss_���M�L��";
	$coilphone_missnut1a="coilphone_miss_���M�L��";
	$coilphone_missnut2="coilphone_��/coilphone_��/coilphone_miss_���M�L��Q";
	$coilphone_missnut2a="coilphone_miss_���M�L��Q";

	$coilphone_misspro="CoilMissPro1";

	CreateProcess("coilphone_miss_�_�E�����[�h�v���Z�X", 150, 0, 0, $coilphone_misspro);
	SetAlias("coilphone_miss_�_�E�����[�h�v���Z�X", "coilphone_miss_�_�E�����[�h�v���Z�X");

	//�����M����
	$coilphone_missX1=$coilphoneX+78;
	$coilphone_missY1=$coilphoneY+102;
	CreateTexture($coilphone_missnut1, 10051, $coilphone_missX1, $coilphone_missY1, "cg/sys/coil/phone/�R�C���d�b���M�L��.png");
	SetAlias($coilphone_missnut1, $coilphone_missnut1a);

	CreateTexture($coilphone_missnut2, 10051, $coilphone_missX1, $coilphone_missY1, "cg/sys/coil/phone/�R�C���d�b���M�L��2.png");
	SetAlias($coilphone_missnut2, $coilphone_missnut2a);
	Fade($coilphone_missnut2, 0, 0, null, true);
	Request($coilphone_missnut2, AddRender);

	//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//����
	if(!$CoilPhone){
		Move("coilphone_��/*", 0, @0, @-375, null, false);
		Move("coilphone_��/*/*", 0, @0, @-375, null, false);
		Move("coilphone_��/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone_���M�I��", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone_���M�J�n", 0, 0, 0, Dxl1, false);

		Fade("@coilphone_���M�J�n", 0, 0, null, true);
		Fade("@coilphone_���M�I��", 0, 0, null, true);
		Fade("@coilphone_���M�v��*", 0, 0, null, true);
	
		Fade("@coilphone_�x�[�X�R", 0, 0, null, false);
		Fade("coilphone_��/�x�[�X", 0, 750, null, true);
	
		SetVertex("@coilphone_�x�[�X", 143, 0);
		Zoom("@coilphone_�x�[�X", 0, 1200, 1000, null, true);//��������������
		Fade("@coilphone_�x�[�X", 0, 0, null, true);
	}else{
		Fade("coilphone_��/coilphone_��/coilphone_miss_���M�L��", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/coilphone_miss_���M�L��Q", 0, 0, null, true);
	}

	//se����_�R�C��_�V�X�e�����[���V��
	CreateSE("coilsound_phone24","se����_�R�C��_�V�X�e�����[���W�J");

	$CoilPhone=true;
}



..�����M�L��\��
function CoilPhone_MissFade(){

	if(!$coilphoneON){
	//���x�[�X���Ȃ������ꍇ�i�ʏ퉉�o�j
		MusicStart("coilsound_phone1",0,700,0,1000,null,false);

		Fade("@coilphone_miss_���o�F�P", 0, 0, Axl1, false);
	
		Zoom("@coilphone_�x�[�X", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone_���o", 0, 350, null, false);
	//	Zoom("coilphone_���o", 200, 1500, 200, null, false);
	
	//	Fade("coilphone_��/�x�[�X�Q", 300, 500, null, false);
	//	Fade("coilphone_��/�x�[�X", 300, 1000, null, false);
	//	Move("coilphone_��/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone_��/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone_���o", 0, 350, null, false);
		Zoom("coilphone_���o", 150, 1500, 200, null, false);
	
		Fade("coilphone_��/�x�[�X�Q", 200, 500, null, false);
	//	Fade("coilphone_��/�x�[�X", 200, 1000, null, false);
		Move("coilphone_��/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_��/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_��/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphoneON=true;
		CoilBlack();
	
		Fade("@coilphone_���M�v���J�n", 0, 1000, null, false);
		Fade("coilphone_���o", 0, 1000, null, true);
	
		Fade("coilphone_��/�x�[�X", 200, 1000, null, false);
		Fade("coilphone_��/�x�[�X�Q", 200, 0, null, false);
		Fade("@coilphone_�x�[�X�R", 200, 1000, null, false);
	
		Fade("coilphone_���o", 500, 0, Axl2, false);
		Zoom("coilphone_���o", 200, 1000, 1000, null, false);
	
		Move("coilphone_��/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_��/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_��/*", 500, @0, @339, Dxl1, false);
	
		Fade("@coilphone_���M�v���J�n", 300, 0, null, false);
		Fade("@coilphone_���M�J�n", 400, 1000, null, false);
		Zoom("@coilphone_���M�I��", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone_���M�J�n", 400, 1000, 1000, Dxl1, false);

	
		Move("coilphone_��/�}�X�N�Q", 500, @0, @-373, null, false);
		Zoom("@coilphone_�x�[�X�R", 500, 1000, 1200, Axl1, false);
	
		Request("coilphone_miss_�_�E�����[�h�v���Z�X", Start);
	//	Request("coilphone_�_�E�����[�h�v���Z�X", Start);

	}else{
	//���x�[�X���������ꍇ�i�u�����o�j
		Request("coilphone_*", Stop);
		//Request("@coilphone_��/coilphone_��/�\��*", Erase);

		MusicStart("coilsound_phone24",0,700,0,1000,null,false);

		Position("coilphone_��",$X���W�l,$Y���W�l);
	
		$X���W�l=$X���W�l+78;
		$Y���W�l=$Y���W�l+102;

		Move("coilphone_��/coilphone_��/coilphone_miss_���M�L��", 0, $X���W�l, $Y���W�l, null, false);
		Move("coilphone_��/coilphone_��/coilphone_miss_���M�L��Q", 0, $X���W�l, $Y���W�l, null, false);

		Fade("coilphone_��/coilphone_call_��/���o�F�P", 0, 0, null, false);
		Fade("coilphone_��/coilphone_call_��/���o�F�Q", 0, 0, null, false);

		Fade("coilphone_��/coilphone_call_���*", 0, 0, null, false);
		Fade("coilphone_��/���M*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/*/*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/coilphone_miss_���M�L��", 0, 1000, null, false);
		Request("coilphone_miss_�_�E�����[�h�v���Z�X", Start);
	}


}


function CoilMissPro1(){
	while(1){
		Fade("@coilphone_miss_���M�L��Q", 1000, 700, null, true);
		Fade("@coilphone_miss_���M�L��Q", 1000, 0, null, true);
	}
}





















.���d�b�w�G���[�Z�b�g�x
..���d�b�G���[�Z�b�g�i10050�j
function CoilPhone_ErrorSet($coilphoneX,$coilphoneY){

	if(!$CoilPhone){
		CoilPhoneBase();
	}else{
		Position("coilphone_��",$coilphoneX,$coilphoneY);
	}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	CreateProcess("coilphone_error_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilErrorPro1");
	SetAlias("coilphone_error_�_�E�����[�h�v���Z�X", "coilphone_error_�_�E�����[�h�v���Z�X");

	//�����M����
	$coilphoneX=$coilphoneX+67;
	$coilphoneY=$coilphoneY+102;
	CreateTexture("coilphone_��/coilphone_��/�G���[", 10051, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/�R�C���d�b�G���[.png");
	SetAlias("coilphone_��/coilphone_��/�G���[", "coilphone_��/coilphone_��/�G���[");
	CreateTexture("coilphone_��/coilphone_��/�G���[�Q", 10051, $coilphoneX, $coilphoneY, "cg/sys/coil/phone/�R�C���d�b�G���[2.png");
	SetAlias("coilphone_��/coilphone_��/�G���[�Q", "coilphone_��/coilphone_��/�G���[�Q");
	Request("coilphone_��/coilphone_��/�G���[�Q", SubRender);
	Fade("coilphone_��/coilphone_��/�G���[�Q", 0, 0, null, true);

	//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//����
	if(!$CoilPhone){
		Move("coilphone_��/*", 0, @0, @-375, null, false);
		Move("coilphone_��/*/*", 0, @0, @-375, null, false);
		Move("coilphone_��/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone_���M�I��", 0, 1000, 0, Dxl1, false);
		Zoom("@coilphone_���M�J�n", 0, 1000, 0, Dxl1, false);

		Fade("@coilphone_���M�J�n", 0, 0, null, true);
		Fade("@coilphone_���M�I��", 0, 0, null, true);
		Fade("@coilphone_���M�v��*", 0, 0, null, true);
	
		Fade("@coilphone_�x�[�X�R", 0, 0, null, false);
		Fade("coilphone_��/�x�[�X", 0, 750, null, true);
	
		SetVertex("@coilphone_�x�[�X", 143, 0);
		Zoom("@coilphone_�x�[�X", 0, 1200, 1000, null, true);//��������������
		Fade("@coilphone_�x�[�X", 0, 0, null, true);
	}else{
		Fade("coilphone_��/coilphone_��/�G���[", 0, 0, null, true);
	}

	//se����_�R�C��_�V�X�e�����[���V��
	CreateSE("coilsound_phone0","se����_�R�C��_�ʐM�Ւf01");

	$CoilPhone=true;
}


..�����M�L��\��
function CoilPhone_ErrorFade(){

	if(!$coilphoneON){
	//���x�[�X���Ȃ������ꍇ�i�ʏ퉉�o�j
		MusicStart("coilsound_phone1",0,700,0,1000,null,false);

		Fade("@coilphone_error_���o�F�P", 0, 0, Axl1, false);
	
		Zoom("@coilphone_�x�[�X", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone_���o", 0, 350, null, false);
	//	Zoom("coilphone_���o", 200, 1500, 200, null, false);
	
	//	Fade("coilphone_��/�x�[�X�Q", 300, 500, null, false);
	//	Fade("coilphone_��/�x�[�X", 300, 1000, null, false);
	//	Move("coilphone_��/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone_��/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone_���o", 0, 350, null, false);
		Zoom("coilphone_���o", 150, 1500, 200, null, false);
	
		Fade("coilphone_��/�x�[�X�Q", 200, 500, null, false);
	//	Fade("coilphone_��/�x�[�X", 200, 1000, null, false);
		Move("coilphone_��/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_��/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_��/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphoneON=true;
		CoilBlack();
	
//		Fade("@coilphone_���M�v���J�n", 0, 1000, null, false);//�G���[�������
		Fade("coilphone_���o", 0, 1000, null, true);
	
		Fade("coilphone_��/�x�[�X", 200, 1000, null, false);
		Fade("coilphone_��/�x�[�X�Q", 200, 0, null, false);
		Fade("@coilphone_�x�[�X�R", 200, 1000, null, false);
	
		Fade("coilphone_���o", 500, 0, Axl2, false);
		Zoom("coilphone_���o", 200, 1000, 1000, null, false);
	
		Move("coilphone_��/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_��/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_��/*", 500, @0, @339, Dxl1, false);
	
//		Fade("@coilphone_���M�v���J�n", 300, 0, null, false);//�G���[�������
//		Fade("@coilphone_���M�J�n", 400, 1000, null, false);//�G���[�������
		Zoom("@coilphone_���M�I��", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone_���M�J�n", 400, 1000, 1000, Dxl1, false);


		Move("coilphone_��/�}�X�N�Q", 500, @0, @-373, null, false);
		Zoom("@coilphone_�x�[�X�R", 500, 1000, 1200, Axl1, false);
	
		Request("coilphone_error_�_�E�����[�h�v���Z�X", Start);

	}else{
	//���x�[�X���������ꍇ�i�u�����o�j
		Request("coilphone_*", Stop);
		Request("@coilphone_��/coilphone_��/�\��*", Erase);
	
		Position("coilphone_��",$X���W�l,$Y���W�l);
	
		$X���W�l=$X���W�l+67;
		$Y���W�l=$Y���W�l+102;
		Move("coilphone_��/coilphone_��/�G���[", 0, $X���W�l, $Y���W�l, null, false);

		SetVolumeEX("coilsound_phone_call", 0, 0, null);
		MusicStart("coilsound_phone0",0,700,0,1000,null,false);
	
		Fade("coilphone_��/coilphone_��/���o�g", 0, 0, null, false);
	
		Fade("coilphone_��/coilphone_call_��/���o�F�P", 0, 0, null, false);
		Fade("coilphone_��/coilphone_call_��/���o�F�Q", 0, 0, null, false);

	
//		Fade("coilphone_��/���M�I��", 0, 0, null, false);
//		Fade("coilphone_��/���M�J�n", 0, 1000, null, false);
	
//		Fade("coilphone_��/coilphone_��/�l��*", 0, 0, null, false);
//		Fade("coilphone_��/coilphone_��/�g*", 0, 0, null, false);
//		Fade("coilphone_��/coilphone_��/�f�t�H*", 0, 0, null, false);
//		Fade("coilphone_��/coilphone_��/�ʘb*", 0, 0, null, false);
//		Fade("coilphone_��/coilphone_��/��/*", 0, 0, null, false);
//		Fade("coilphone_��/coilphone_��/�G���[", 0, 1000, null, true);

		Fade("coilphone_��/coilphone_call_���*", 0, 0, null, false);
		Fade("coilphone_��/���M*", 0, 0, null, false);
		if($coilphoneError){
			Fade("coilphone_��/���M�J�n", 0, 1000, null, false);//�G���[�������
			$coilphoneError=false;
		}
		Fade("coilphone_��/coilphone_��/*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/*/*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/�G���[", 0, 1000, null, false);

		Request("coilphone_error_�_�E�����[�h�v���Z�X", Start);
	}

}


function CoilErrorPro1(){
	while(1){
		Fade("@coilphone_��/coilphone_��/�G���[�Q", 1000, 400, null, true);
		Fade("@coilphone_��/coilphone_��/�G���[�Q", 1000, 0, null, true);
	}
}



..���m�C�Y
function CoilBugSet(){

	CreateTexture("coilphone_��/coilphone_��/�m�C�Y�P", 11000, 0, 0, "cg/data/noize_01_00_0.png");
	SetAlias("coilphone_��/coilphone_��/�m�C�Y�P", "coilphone_��/coilphone_��/�m�C�Y�P");
	Request("coilphone_��/coilphone_��/�m�C�Y�P", OverlayRender);
	SetTone("coilphone_��/coilphone_��/�m�C�Y�P", Monochrome);

	CreateTexture("coilphone_��/coilphone_��/�m�C�Y�Q", 11000, 0, 0, "cg/data/noize_01_00_0.png");
	SetAlias("coilphone_��/coilphone_��/�m�C�Y�Q", "coilphone_��/coilphone_��/�m�C�Y�Q");
	Request("coilphone_��/coilphone_��/�m�C�Y�Q", OverlayRender);
	SetTone("coilphone_��/coilphone_��/�m�C�Y�Q", Monochrome);


	Zoom("@coilphone_��/coilphone_��/�m�C�Y�P", 0, 1500, 1500, null, false);
	Zoom("@coilphone_��/coilphone_��/�m�C�Y�Q", 0, 1500, 1500, null, false);

	Rotate("coilphone_��/coilphone_��/�m�C�Y�Q", 0, @180, @0, @0, null, true);
	Fade("coilphone_��/coilphone_��/�m�C�Y*", 0, 0, null, true);

	CreateProcess("coilphone_bug_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilBugPro");
	SetAlias("coilphone_bug_�_�E�����[�h�v���Z�X", "coilphone_bug_�_�E�����[�h�v���Z�X");

	$CoilBugFade=300;
}

function CoilBugFade(){
	Move("@coilphone_��/coilphone_��/�m�C�Y*", 0, 0, 0, null, true);
	Request("coilphone_bug_�_�E�����[�h�v���Z�X", Start);
}

function CoilBugPro(){

	$CoilBugTime=100;
	$CoilBugWait=50;

	while(1){

		Move("@coilphone_��/coilphone_��/�m�C�Y�P", 0, 50, 0, null, false);
		Move("@coilphone_��/coilphone_��/�m�C�Y�Q", 0, -50, 0, null, false);

		Fade("@coilphone_��/coilphone_��/�m�C�Y�Q", $CoilBugTime, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�P", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�P", $CoilBugTime, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�Q", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);

		Fade("@coilphone_��/coilphone_��/�m�C�Y�Q", $CoilBugTime, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�P", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�P", $CoilBugTime, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�Q", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);

//		$CoilBugTemp=Random(3);
//		Wait($CoilBugTemp);

		Move("@coilphone_��/coilphone_��/�m�C�Y�P", 0, -50, 0, null, false);
		Move("@coilphone_��/coilphone_��/�m�C�Y�Q", 0, 50, 0, null, false);

		Fade("@coilphone_��/coilphone_��/�m�C�Y�Q", $CoilBugTime, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�P", $CoilBugTime, $CoilBugFade, null, true);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�P", $CoilBugTime, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�Q", $CoilBugTime, $CoilBugFade, null, true);

		Fade("@coilphone_��/coilphone_��/�m�C�Y�Q", $CoilBugTime, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�P", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�P", $CoilBugTime, 0, null, false);
		Fade("@coilphone_��/coilphone_��/�m�C�Y�Q", $CoilBugTime, $CoilBugFade, null, $CoilBugWait);

//		$CoilBugTemp=Random(3);
//		Wait($CoilBugTemp);
	}

}























.���d�b�w���M�����Z�b�g�x
..�������ꗗ�Z�b�g�i10050�j
function CoilPhone_RaceSet($coilphoneX, $coilphoneY){
//382
//103
	$CoilReceNow=$CoilReceCount;

	if(!$CoilPhone){
		CoilPhoneBase();
	}else{
		Position("coilphone_��",$coilphoneX,$coilphoneY);
	}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	CreateProcess("coilphone_rece_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilRacePro");
	SetAlias("coilphone_rece_�_�E�����[�h�v���Z�X", "coilphone_rece_�_�E�����[�h�v���Z�X");


	$coilphone_receX7=$coilphoneX+10;
	$coilphone_receY7=$coilphoneY+300;
	CreateTexture("coilphone_��/coilphone_��/coilphone_rece_�I��", 10050, $coilphone_receX7, $coilphone_receY7, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�I��_�Z���N�g.png");//10010
	SetAlias("coilphone_��/coilphone_��/coilphone_rece_�I��", "coilphone_rece_�I��");
	Request("coilphone_��/coilphone_��/coilphone_rece_�I��", AddRender);
	Fade("coilphone_��/coilphone_��/coilphone_rece_�I��", 0, 0, null, true);


	$CoilPreX=$coilphoneX;
	$CoilPreY=$coilphoneY;

	$CoilTemp=$CoilReceCount;
	while(0<$CoilTemp){

		//���������Ⴂ���Ȃ����C��
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+57;
		$coiltempnut="coilphone_��/coilphone_��/�`�F�b�N"+$CoilTemp;
		if(VariableValue($,"CoilRece�ʘb"+$CoilTemp)){
			CreateTexture($coiltempnut, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�ʘb�L��.png");//10090
		}else{
			CreateTexture($coiltempnut, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�ʘb����.png");//10090
		}
		SetAlias($coiltempnut, $coiltempnut);

		//�����
		$coiltempX=$CoilPreX+228;
		$coiltempY=$CoilPreY+64;
		$coiltempnut="coilphone_��/coilphone_��/���"+$CoilTemp;
		CreateTexture($coiltempnut, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�A�C�R��.png");//10090
		SetAlias($coiltempnut, $coiltempnut);
		Request($coiltempnut, AddRender);

		//���l��
		SetFont("�l�r �S�V�b�N", 20, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut2="coilphone_��/coilphone_��/�e�L�X�g��"+$CoilTemp;
		CreateWindow($coiltempnut2, 10051, $coiltempX, $coiltempY, 156, 45, false);//10090//163,45
		SetAlias($coiltempnut2, $coiltempnut2);

		$coiltempnut=$coiltempnut2+"/�l��"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece�l��"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilRece�l��"+$CoilTemp));
		CreateText($coiltempnut, 10051, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut, $coiltempnut);
		Request($coiltempnut, NoLog);

/*
		SetFont("�l�r �S�V�b�N", 20, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut="coilphone_��/coilphone_��/�l��"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece�l��"+$CoilTemp);
		CreateText($coiltempnut, 10051, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut, $coiltempnut);
*/

		$CoilPreY+=43;
		$CoilTemp--;
	}
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilphone_��/coilphone_��/*", PushText);
	Request("coilphone_��/coilphone_��/*/*", PushText);


	$coilphoneX5=$coilphoneX+25;
	$coilphoneX6=$coilphoneX+12;
	$coilphoneY6=$coilphoneY+56;
	CreateWindow("coilphone_��/coilphone_rece_��", 20000, $coilphoneX6, $coilphoneY6, 263, 233, false);
	SetAlias("coilphone_��/coilphone_rece_��", "coilphone_rece_��");

	CreateColor("coilphone_��/coilphone_rece_��/���o�F�P", 10052, $coilphoneX5, $coilphoneY6, 72, 300, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone_��/coilphone_rece_��/���o�F�P", "coilphone_rece_���o�F�P");
	Request("coilphone_��/coilphone_rece_��/���o�F�P", AddRender);
	Fade("@coilphone_rece_���o�F�P", 0, 150, null, false);


	//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//����
	if(!$CoilPhone){
		Move("coilphone_��/*", 0, @0, @-375, null, false);
		Move("coilphone_��/*/*", 0, @0, @-375, null, false);
		Move("coilphone_��/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("coilphone_��/coilphone_��", 0, 0, 1000, null, false);
		Move("coilphone_��/coilphone_��", 0, @0, @-100, null, false);
		Move("coilphone_��/coilphone_��/*", 0, @0, @-100, null, false);
		Move("coilphone_��/coilphone_��/*/*", 0, @-300, @-100, null, true);
	
		Zoom("@coilphone_���M�I��", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone_���M�J�n", 0, 0, 0, Dxl1, false);

		Fade("@coilphone_���M�J�n", 0, 0, null, true);
		Fade("@coilphone_���M�I��", 0, 0, null, true);
		Fade("@coilphone_���M�v��*", 0, 0, null, true);
	
		Fade("@coilphone_�x�[�X�R", 0, 0, null, false);
		Fade("coilphone_��/�x�[�X", 0, 750, null, true);
	
		SetVertex("@coilphone_�x�[�X", 143, 0);
		Zoom("@coilphone_�x�[�X", 0, 1200, 1000, null, true);//��������������
		Fade("@coilphone_�x�[�X", 0, 0, null, true);

	}else{
		Fade("coilphone_��/coilphone_��/coilphone_rece_�I��", 0, 0, null, false);
		Fade("coilphone_��/coilphone_rece_��/���o�F�P", 0, 0, null, false);

		Fade("coilphone_��/coilphone_��/�`�F�b�N*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/���*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/�e�L�X�g��*/�l��*", 0, 0, null, false);


//		Move("coilphone_��", 0, @0, @0, null, false);
//		Move("coilphone_��/�x�[�X", 0, @0, @0, null, false);
//		Move("coilphone_��/�x�[�X�Q", 0, @0, @0, null, false);
//		Move("coilphone_��/��", 0, @0, @0, null, false);
//		Move("coilphone_��/�}�X�N�Q", 0, @0, @0, null, false);
//		Move("coilphone_��/�}�X�N�Q/�x�[�X�R", 0, @0, @0, null, false);
	
//		Move("coilphone_���o", 0, @0, @0, null, false);
//		Move("coilphone_����", 0, @0, @0, null, false);
//		Move("coilphone_��/���M�J�n", 0, @0, @0, null, false);
//		Move("coilphone_��/���M�v���J�n", 0, @0, @0, null, false);
//		Move("coilphone_��/���M�I��", 0, @0, @0, null, false);
//		Move("coilphone_��/���M�v���I��", 0, @0, @0, null, false);
	
//		Move("coilphone_��/coilphone_��", 0, @0, @0, null, false);

	}

	CreateSE("coilsound_phone14","se����_�R�C��_�V�X�e�����X�g�W�J");

	$CoilPhone=true;
}


..�������ꗗ�\��
function CoilPhone_RaceFade(){

	if(!$coilphoneON){
	//���x�[�X���Ȃ������ꍇ�i�ʏ퉉�o�j
		MusicStart("coilsound_phone1",0,700,0,1000,null,false);

		Zoom("@coilphone_�x�[�X", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone_���o", 0, 350, null, false);
	//	Zoom("coilphone_���o", 200, 1500, 200, null, false);
	
	//	Fade("coilphone_��/�x�[�X�Q", 300, 500, null, false);
	//	Fade("coilphone_��/�x�[�X", 300, 1000, null, false);
	//	Move("coilphone_��/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone_��/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone_���o", 0, 350, null, false);
		Zoom("coilphone_���o", 150, 1500, 200, null, false);
	
		Fade("coilphone_��/�x�[�X�Q", 200, 500, null, false);
	//	Fade("coilphone_��/�x�[�X", 200, 1000, null, false);
		Move("coilphone_��/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_��/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone_��/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphoneON=true;
		CoilBlack();
	
		Fade("@coilphone_���M�v���J�n", 0, 1000, null, false);
		Fade("coilphone_���o", 0, 1000, null, true);
	
		Fade("coilphone_��/�x�[�X", 200, 1000, null, false);
		Fade("coilphone_��/�x�[�X�Q", 200, 0, null, false);
		Fade("@coilphone_�x�[�X�R", 200, 1000, null, false);
	
		Fade("coilphone_���o", 500, 0, Axl2, false);
		Zoom("coilphone_���o", 200, 1000, 1000, null, false);
	
		Move("coilphone_��/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_��/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone_��/*", 500, @0, @339, Dxl1, false);
	
		Fade("@coilphone_���M�v���J�n", 300, 0, null, false);
		Fade("@coilphone_���M�J�n", 400, 1000, null, false);
		Zoom("@coilphone_���M�I��", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone_���M�J�n", 400, 1000, 1000, Dxl1, false);


		Fade("@coilphone_rece_���o�F�P", 400, 0, Axl1, false);
		Zoom("@coilphone_rece_���o�F�P", 500, 4000, 1000, Dxl1, false);
	

		Move("coilphone_��/�}�X�N�Q", 500, @0, @-373, null, false);
		Zoom("@coilphone_�x�[�X�R", 500, 1000, 1200, Axl1, false);
	
		Zoom("coilphone_��/coilphone_��", 400, 1000, 1000, null, false);
	
		Move("coilphone_��/coilphone_��", 500, @0, @439, Dxl1, false);
		Move("coilphone_��/coilphone_��/*", 500, @0, @439, Dxl1, false);
		Move("coilphone_��/coilphone_��/*/*", 500, @300, @439, Dxl1, false);
	
		Request("coilphone_rece_�_�E�����[�h�v���Z�X", Start);
		Request("coilphone_�_�E�����[�h�v���Z�X", Start);

	}else{
	//���x�[�X���������ꍇ�i�u�����o�j
		Request("coilphone_*", Stop);
		//Request("@coilphone_��/coilphone_��/�\��*", Erase);

		Position("coilphone_��",$X���W�l��,$Y���W�l��);
		$X���W�l=$X���W�l��+21;
		$Y���W�l=$Y���W�l��+57;

		$coiltempnut="coilphone_��/coilphone_��/�`�F�b�N"+$CoilReceCount;
		Position($coiltempnut,$X���W�l2,$Y���W�l2);

		$X�ړ����W�l=$X���W�l-$X���W�l2;
		$Y�ړ����W�l=$Y���W�l-$Y���W�l2;
		Move("coilphone_��/coilphone_��/�`�F�b�N*", 0, @$X�ړ����W�l, @$Y�ړ����W�l, null, false);
		Move("coilphone_��/coilphone_��/���*", 0, @$X�ړ����W�l, @$Y�ړ����W�l, null, false);
		Move("coilphone_��/coilphone_��/�e�L�X�g��*", 0, @$X�ړ����W�l, @$Y�ړ����W�l, null, false);
		Move("coilphone_��/coilphone_��/�e�L�X�g��*/�l��*", 0, @$X�ړ����W�l, @$Y�ړ����W�l, null, false);

		$X���W�l3=$X���W�l��+25;
		$X���W�l4=$X���W�l��+12;
		$Y���W�l4=$Y���W�l��+56;
		Move("coilphone_��/coilphone_rece_��", 0, $X���W�l4, $Y���W�l4, null, false);
		Move("coilphone_��/coilphone_rece_��/���o�F�P", 0, $X���W�l3, $Y���W�l4, null, false);

		$X���W�l5=$X���W�l��+10;
		$Y���W�l5=$Y���W�l��+300;
		Move("coilphone_��/coilphone_��/coilphone_rece_�I��", 0, $X���W�l5, $Y���W�l5, null, false);

		$X���W�l6=$X���W�l��+25;
		$Y���W�l6=$Y���W�l��+294;
		Move("coilphone_��/���M*", 0, $X���W�l6, $Y���W�l6, null, false);


		MusicStart("coilsound_phone14",0,700,0,1000,null,false);


		Fade("coilphone_��/coilphone_call_��/���o�F�P", 0, 0, null, false);
		Fade("coilphone_��/coilphone_call_��/���o�F�Q", 0, 0, null, false);

		Fade("coilphone_��/coilphone_call_���*", 0, 0, null, false);
		Fade("coilphone_��/���M*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/*", 0, 0, null, false);
		Fade("coilphone_��/coilphone_��/*/*", 0, 0, null, false);

		Fade("coilphone_��/���M�J�n", 0, 1000, null, false);

		Fade("coilphone_��/coilphone_��/�`�F�b�N*", 0, 1000, null, false);
		Fade("coilphone_��/coilphone_��/���*", 0, 1000, null, false);
		Fade("coilphone_��/coilphone_��/�e�L�X�g��*/�l��*", 0, 1000, null, false);

		Request("coilphone_rece_�_�E�����[�h�v���Z�X", Start);
		Request("coilphone_�_�E�����[�h�v���Z�X", Start);

	}

}


..���������A���^�C���ǉ�
function CoilReceAdd2($CoilRece�ԍ�,$CoilRece�l��,$CoilRece�ʘb){

	$TempCoilRece=1;
	while($CoilReceCount>=$TempCoilRece){
		if(VariableValue($,"CoilRece�ԍ�"+$TempCoilRece)==$CoilRece�ԍ�){
			return;
		}
		$TempCoilRece++;
	}

	WaitAction("@coilphone_�x�[�X�R", null);
//	WaitAction("@coilphone_�x�[�X", null);

	$CoilReceCount++;

	VariableValue($,$CoilRece�ԍ�+"_num",$CoilReceCount);
//
	VariableValue($,$CoilRece�ԍ�+"_�l��",$CoilRece�l��);
	VariableValue($,$CoilRece�ԍ�+"_�ʘb",$CoilRece�ʘb);
//
	VariableValue($,"CoilRece�l��"+$CoilReceCount,$CoilRece�l��);
	VariableValue($,"CoilRece�ʘb"+$CoilReceCount,$CoilRece�ʘb);
	VariableValue($,"CoilRece�ԍ�"+$CoilReceCount,$CoilRece�ԍ�);


	$CoilTemp=$CoilReceCount;

	Position("@coilphone_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�-43;

		//���������Ⴂ���Ȃ����C��
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+57;
		$coiltempnut1="coilphone_��/coilphone_��/�`�F�b�N"+$CoilTemp;
		if(VariableValue($,"CoilRece�ʘb"+$CoilTemp)){
			CreateTexture($coiltempnut1, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�ʘb�L��.png");//10090
		}else{
			CreateTexture($coiltempnut1, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�ʘb����.png");//10090
		}
		SetAlias($coiltempnut1, $coiltempnut1);

		//�����
		$coiltempX=$CoilPreX+228;
		$coiltempY=$CoilPreY+64;
		$coiltempnut3="coilphone_��/coilphone_��/���"+$CoilTemp;
		CreateTexture($coiltempnut3, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�A�C�R��.png");//10090
		SetAlias($coiltempnut3, $coiltempnut3);
		Request($coiltempnut3, AddRender);
		Request($coiltempnut3, Erase);

		//���l��
		SetFont("�l�r �S�V�b�N", 20, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnutW="coilphone_��/coilphone_��/�e�L�X�g��"+$CoilTemp;
		CreateWindow($coiltempnutW, 10051, $coiltempX, $coiltempY, 163, 45, false);//10090
		SetAlias($coiltempnutW, $coiltempnutW);

		$coiltempnut2=$coiltempnutW+"/�l��"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece�l��"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilRece�l��"+$CoilTemp));
		CreateText($coiltempnut2, 10051, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut2, $coiltempnut2);
		Request($coiltempnut2, NoLog);

/*
		SetFont("�l�r �S�V�b�N", 20, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut2="coilphone_��/coilphone_��/�l��"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece�l��"+$CoilTemp);
		CreateText($coiltempnut2, 10051, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut2, $coiltempnut2);
*/

	//�����o
	$coiltempX=$CoilPreX+21-50;
	$coiltempY=$CoilPreY+56;
	$coiltempnut6="coilphone_��/coilphone_��/���o"+$CoilTemp;
	CreateTexture($coiltempnut6, 10051, $coiltempX, $coiltempY, "cg/sys/coil/phone/���[���V�K���o.png");//10090
	SetAlias($coiltempnut6, $coiltempnut6);
//	Request($coiltempnut6, AddRender);
//	Request($coiltempnut6, MulRender);
	Request($coiltempnut6, OverlayRender);
	Zoom($coiltempnut6, 0, 1500, 1000, null, false);


	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilphone_��/coilphone_��/*", PushText);
	Request("coilphone_��/coilphone_��/*/*", PushText);


//	CreateProcess("coilphone_rece_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilRacePro");
//	SetAlias("coilphone_rece_�_�E�����[�h�v���Z�X", "coilphone_rece_�_�E�����[�h�v���Z�X");

	CreateSE("coilsound_phone15","se����_�R�C��_�V�X�e�����[���ǉ�");
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

		Move("coilphone_��/coilphone_��/*", 200, @0, @43, Dxl1, false);
		Move("coilphone_��/coilphone_��/*/*", 200, @0, @43, Dxl1, true);

		$coilraceSoon=false;
	}else if($CoilReceNow==($CoilReceCount-1)){
		Fade($coiltempnut1, 0, 0, null, true);
		Fade($coiltempnut2, 0, 0, null, true);
		Fade($coiltempnut3, 0, 0, null, true);

		Move("coilphone_��/coilphone_��/*", 150, @0, @43, Dxl1, false);
		Move("coilphone_��/coilphone_��/*/*", 150, @0, @43, Dxl1, true);
	
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

//	Request("coilphone_rece_�_�E�����[�h�v���Z�X", Start);
}

function CoilRacePro(){
	while(1){
		Fade("@coilphone_��/coilphone_��/���*", 800, 700, null, true);
		Fade("@coilphone_��/coilphone_��/���*", 1200, 0, null, true);
		Wait(400);
		Fade("@coilphone_��/coilphone_��/���*", 800, 700, null, true);
		Fade("@coilphone_��/coilphone_��/���*", 1200, 0, null, true);
		Wait(400);
	}
}

function CoilRacePro_Call(){
	while(1){
		Fade("@coilphone_���M�v���J�n", 400, 700, null, true);
		Fade("@coilphone_���M�v���J�n", 800, 0, null, true);
		Wait(200);
		Fade("@coilphone_���M�v���J�n", 400, 700, null, true);
		Fade("@coilphone_���M�v���J�n", 800, 0, null, true);
		Wait(200);
	}
}




..�������ꗗ�ړ�
function CoilRaceMove($CoilRece�ԍ�,$CoilRaceTime){

	WaitAction("@coilphone_�x�[�X�R", null);
//	WaitAction("@coilphone_�x�[�X", null);

	Position("@coilphone_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilphone_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilphone_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilphone_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);

	$CoilReceNew=VariableValue($,$CoilRece�ԍ�+"_num");
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

	Position("@coilphone_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilphone_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilphone_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilphone_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);


	$CoilReceNew=$CoilReceCount-($CoilRaceNum-1);//�ǂ̔ԍ��H
	$CoilReceNew2=$CoilReceNew;


	CoilRaceMoveMacro();
}

function CoilRaceMoveMacro(){
	$CoilReceTemp=$CoilReceNow-$CoilReceNew;
	$CoilReceMove=(-$CoilReceTemp)*43;
	$CoilRaceTime2=$CoilRaceTime/2;
	$CoilRaceTime3=$CoilRaceTime/5*2;
	$CoilRaceTime4=$CoilRaceTime/5*3;

	$coiltempnut="coilphone_��/coilphone_��/�`�F�b�N"+$CoilReceNew2;
	Position($coiltempnut,$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX2=$X���W�l�i�[�ϐ�;
	$CoilPreY2=$Y���W�l�i�[�ϐ�;
	$CoilPreY2+=$CoilReceMove;

	CreateSE("coilsound_phone22","se����_�R�C��_�V�X�e�����[���ړ�");
	MusicStart("coilsound_phone22",0,700,0,1000,null,false);

	if($CoilReceMove==0){
		Move("coilphone_��/coilphone_��/*", $CoilRaceTime, @0, @$CoilReceMove, Dxl1, false);
		Move("coilphone_��/coilphone_��/*/*", $CoilRaceTime, @0, @$CoilReceMove, Dxl1, false);
		Move("@coilphone_rece_�I��", $CoilRaceTime, $CoilPreX2, $CoilPreY2, Dxl1, false);

		Zoom("@coilphone_rece_�I��", $CoilRaceTime4, 1200, 1200, Dxl1, false);
		Fade("@coilphone_rece_�I��", $CoilRaceTime4, 100, null, true);

		Zoom("@coilphone_rece_�I��", $CoilRaceTime3, 1000, 1000, Dxl1, false);
		Fade("@coilphone_rece_�I��", $CoilRaceTime3, 500, Axl1, true);

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


		//�Y�[��
		$CoilReceZoom=2000*$CoilReceTemp;
		if($CoilReceZoom<0){$CoilReceZoom=-$CoilReceZoom;}
		if($CoilReceZoom>8000){
			$CoilReceZoom=8000;
		}

//		$CoilReceZoom=8000;

		Fade("@coilphone_rece_�I��", $CoilRaceTime3, 0, null, false);///////////100

		Move("coilphone_��/coilphone_��/*", $CoilRaceTime4, @0, @$CoilReceMove3, Axl1, false);
		Move("coilphone_��/coilphone_��/*/*", $CoilRaceTime4, @0, @$CoilReceMove3, Axl1, false);

		Zoom("@coilphone_rece_�I��", $CoilRaceTime3, 1200, $CoilReceZoom, Dxl1, false);
//		Move("@coilphone_rece_�I��", $CoilRaceTime3, $CoilPreX2, $CoilReceMove2, Dxl3, false);
		Move("@coilphone_rece_�I��", $CoilRaceTime4, $CoilPreX2, $CoilPreY2, Dxl1, false);

		WaitAction("coilphone_��/coilphone_��/*/*", null);


		Move("coilphone_��/coilphone_��/*", $CoilRaceTime3, @0, @$CoilReceMove4, Dxl2, false);
		Move("coilphone_��/coilphone_��/*/*", $CoilRaceTime3, @0, @$CoilReceMove4, Dxl2, false);
	
		Zoom("@coilphone_rece_�I��", $CoilRaceTime3, 1000, 1000, Dxl1, false);
//		Move("@coilphone_rece_�I��", $CoilRaceTime3, $CoilPreX2, $CoilPreY2, Axl1, false);
		Move("@coilphone_rece_�I��", 0, $CoilPreX2, $CoilPreY2, Dxl1, false);
		Fade("@coilphone_rece_�I��", $CoilRaceTime3, 500, Axl1, true);
	}

	$CoilReceNow=$CoilReceNew;
}
















.���d�b�Q�w��{�Z�b�g�x============================================================================================
//1060
//�d�b�Q
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

//���v���Z�X�̂Ȃ���
//nut2
//name2
//koe2

..���d�b����{�Z�b�g�i10600�j
function CoilPhone2Base(){

	CreateWindow("coilphone2_��", 20000, $coilphone2X, $coilphone2Y, 287, 360, false);
	SetAlias("coilphone2_��", "coilphone2_��");

	CreateTexture("coilphone2_��/�x�[�X", 10600, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/�R�C���d�b�g.png");//10000
	SetAlias("coilphone2_��/�x�[�X", "coilphone2_�x�[�X");
	CreateTexture("coilphone2_��/�x�[�X�Q", 10609, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/�R�C���d�b�g.png");//10500
	SetAlias("coilphone2_��/�x�[�X�Q", "coilphone2_�x�[�X�Q");
	SetTone("coilphone2_��/�x�[�X�Q", Monochrome);

	CreateTexture("coilphone2_��/��", 10609, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/�R�C���d�b�g_��.png");//10500
	SetAlias("coilphone2_��/��", "coilphone2_��");
	Fade("coilphone2_��/��", 0, 0, null, true);

	CreateMask("coilphone2_��/�}�X�N�Q", 200, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/�R�C�����o�g�����W.png", false);
	SetAlias("coilphone2_��/�}�X�N�Q", "coilphone2_��/�}�X�N�Q");
	CreateTexture("coilphone2_��/�}�X�N�Q/�x�[�X�R", 10605, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/�R�C���d�b�g.png");//10100
	SetAlias("coilphone2_��/�}�X�N�Q/�x�[�X�R", "coilphone2_�x�[�X�R");
	Request("coilphone2_��/�}�X�N�Q/�x�[�X�R", AddRender);

	$coilphone2X4=$coilphone2X-20;
	$coilphone2Y4=$coilphone2Y-8;
	CreateTexture("coilphone2_���o", 10602, $coilphone2X4, $coilphone2Y4, "cg/sys/coil/phone/�R�C�����o.png");//10130
	SetAlias("coilphone2_���o", "coilphone2_���o");
	Request("coilphone2_���o", AddRender);
	Fade("coilphone2_���o", 0, 0, null, true);
	Zoom("coilphone2_���o", 0, 1000, 0, Dxl1, true);

	CreateTexture("coilphone2_����", 10602, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/�R�C���d�b�g_���o.png");//10130
	SetAlias("coilphone2_����", "coilphone2_����");
	Request("coilphone2_����", AddRender);
	Fade("coilphone2_����", 0, 0, null, true);
	SetVertex("coilphone2_����", 130, 0);
	Zoom("coilphone2_����", 0, 1200, 1000, null, false);

	$coilphone2X5=$coilphone2X+25;
	$coilphone2Y5=$coilphone2Y+294;
	CreateTexture("coilphone2_��/���M�J�n", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/�R�C���d�b�{�^��CALL.png");//10130
	SetAlias("coilphone2_��/���M�J�n", "coilphone2_���M�J�n");
	Request("coilphone2_��/���M�J�n", Smoothing);

	CreateTexture("coilphone2_��/���M�v���J�n", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/�R�C���d�b�{�^��CALL.png");//10130
	SetAlias("coilphone2_��/���M�v���J�n", "coilphone2_���M�v���J�n");
	Request("coilphone2_��/���M�v���J�n", AddRender);

	CreateTexture("coilphone2_��/���M�I��", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/�R�C���d�b�{�^��ENDCALL.png");//10130
	SetAlias("coilphone2_��/���M�I��", "coilphone2_���M�I��");
	Request("coilphone2_��/���M�I��", Smoothing);

	CreateTexture("coilphone2_��/���M�v���I��", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/�R�C���d�b�{�^��ENDCALL.png");//10130
	SetAlias("coilphone2_��/���M�v���I��", "coilphone2_���M�v���I��");
	Request("coilphone2_��/���M�v���I��", AddRender);

	CreateTexture("coilphone2_��/���M���o", 10602, $coilphone2X5, $coilphone2Y5, "cg/sys/coil/phone/�R�C���d�b�{�^��.png");//10130
	SetAlias("coilphone2_��/���M���o", "coilphone2_���M���o");
	Request("coilphone2_��/���M���o", AddRender);
	Fade("coilphone2_��/���M���o", 0, 0, null, false);


	$coilphone2X6=$coilphone2X+12;
	$coilphone2Y6=$coilphone2Y+56;
	CreateWindow("coilphone2_��/coilphone2_��", 20000, $coilphone2X6, $coilphone2Y6, 263, 233, false);
	SetAlias("coilphone2_��/coilphone2_��", "coilphone2_��");


	CreateProcess("coilphone2_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilRace2Pro_Call");
	SetAlias("coilphone2_�_�E�����[�h�v���Z�X", "coilphone2_�_�E�����[�h�v���Z�X");

	CreateSE("coilsound2_phone1","se����_�R�C��_�V�X�e���I�[�v��");
	CreateSE("coilsound2_phone2","se����_�R�C��_�V�X�e���N���[�Y");
}


..���d�b�t�F�[�h����
function CoilPhone2Delete(){

	Zoom("@coilphone2_��", 0, 1000, 1000, null, true);
	Zoom("coilphone2_��/�}�X�N�Q", 0, 1000, 1000, null, true);


	Position("@coilphone2_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilphone2_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilphone2_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilphone2_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);

	Request("coilphone2_*", Stop);
	Request("coilphone2_rece_�_�E�����[�h�v���Z�X", Stop);
	Request("coilphone2_�_�E�����[�h�v���Z�X", Stop);
	WaitAction("coilphone2_rece_�_�E�����[�h�v���Z�X", null);
	WaitAction("coilphone2_�_�E�����[�h�v���Z�X", null);

	Fade("@coilphone2_�x�[�X�R", 0, 1000, null, false);

	Zoom("coilphone2_���o", 0, 1500, 300, null, false);
	Fade("coilphone2_���o", 0, 250, null, true);

//	WaitKey();
	$coilphone2NOW="����";
	$coilphone2ON=false;
	CoilBlack();

	MusicStart("coilsound2_phone2",0,700,0,1000,null,false);

//	Fade("@coilphone2_���M�v���J�n", 200, 0, null, false);
	Fade("@coilphone2_���M*", 300, 0, null, false);
	Zoom("@coilphone2_���M*", 300, 0, 0, Dxl1, false);


	Zoom("coilphone2_����", 500, 1100, 0, null, false);
	Fade("coilphone2_����", 500, 1000, Dxl3, false);

	Fade("coilphone2_���o", 300, 1000, null, false);
	Zoom("coilphone2_���o", 400, 750, 0, Axl1, false);

//	Zoom("@coilphone2_�x�[�X�R", 50, 1000, 1500, null, false);
	Fade("@coilphone2_�x�[�X�R", 50, 0, null, false);
	Fade("@coilphone2_�x�[�X", 500, 500, null, false);

	Move("coilphone2_��/*/*", 500, @0, @-375, Dxl1, false);
	Move("coilphone2_��/*", 500, @0, @-375, Dxl1, false);

	Zoom("@coilphone2_�x�[�X�Q", 500, 1000, 750, AxlAuto, false);
	Zoom("@coilphone2_�x�[�X", 500, 1000, 750, AxlAuto, false);

//	Fade("coilphone2_���o", 400, 0, Axl3, false);
//	Rotate("coilphone2_���o", 400, @-90, @0, @0, Axl3, false);


	Delete("coilphone2_miss_�_�E�����[�h�v���Z�X");
	Delete("coilphone2_call_�_�E�����[�h�v���Z�X");
	Delete("coilphone2_call_�_�E�����[�h�v���Z�X*");
	Delete("coilphone2_rece_�_�E�����[�h�v���Z�X");
	Delete("coilphone2_�_�E�����[�h�v���Z�X");
	Request("coilphone2_��/*/*", Disused);
	Request("coilphone2_��/*", Disused);
	Request("coilphone2_���o", Disused);
	Request("coilphone2_����", Disused);


	$CoilPhone2=false;
}



.���d�b�Q�w�����M�Z�b�g�x
..���d�b���M�Z�b�g�i10600�j
function CoilPhone2_IncallSet($coilphone2X,$coilphone2Y,$CoilRece2�Ǘ��ԍ�,$CoilRece2�Ǘ��l��,$CoilRece2�Ǘ��ʘb){

	$coilphone2Name="���M";
	CoilPhone2_CallBase();
}

..���d�b���M�Z�b�g�i10600�j
function CoilPhone2_OutcallSet($coilphone2X,$coilphone2Y,$CoilRece2�Ǘ��ԍ�,$CoilRece2�Ǘ��l��,$CoilRece2�Ǘ��ʘb){

	$coilphone2Name="���M";
	CoilPhone2_CallBase();
}

..���d�b�R�[����{
function CoilPhone2_CallBase(){

	if($coilphone2Name=="���M"){
		CoilRece2Add($CoilRece2�Ǘ��ԍ�,$CoilRece2�Ǘ��l��,$CoilRece2�Ǘ��ʘb);
	}

	if(!$CoilPhone2){
		CoilPhone2Base();
	}else{
		Position("coilphone2_��",$coilphone2X,$coilphone2Y);
	}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	if($coilphone2Name=="���M"){
		$coilphone2_callnut1="coilphone2_��/coilphone2_call_��ޒ��M";
		$coilphone2_callnut1a="coilphone2_call_��ޒ��M";
		$coilphone2_callimg1="cg/sys/coil/phone/�R�C���d�b�\��_IC.png";
		$coilphone2_callnut2="coilphone2_��/coilphone2_��/�l�����M";
		$coilphone2_callnut3="coilphone2_��/coilphone2_��/�g���M";
		$coilphone2_callnut3_a="coilphone2_��/coilphone2_��/���o�g";
		$coilphone2_callnut4w="coilphone2_��/coilphone2_��/��";
		$coilphone2_callnut5="coilphone2_��/coilphone2_��/�f�t�H���M";

		$coilphone2_callnut6="coilphone2_��/coilphone2_��/�ʘb���M";
		$coilphone2_callnut6a="coilphone2_��/coilphone2_��/�\�����M�P";
		$coilphone2_callnut6b="coilphone2_��/coilphone2_��/�\�����M�Q";
		$coilphone2_callnut6c="coilphone2_��/coilphone2_��/�\�����M�R";
		$coilphone2_callimg6a="cg/sys/coil/phone/�\��IC 01.png";
		$coilphone2_callimg6b="cg/sys/coil/phone/�\��IC 02.png";
		$coilphone2_callimg6c="cg/sys/coil/phone/�\��IC 03.png";

		$coilphone2_callpro="CoilCall2Pro1";

	}else{
		$coilphone2_callnut1="coilphone2_��/coilphone2_call_��ޔ��M";
		$coilphone2_callnut1a="coilphone2_call_��ޔ��M";
		$coilphone2_callimg1="cg/sys/coil/phone/�R�C���d�b�\��_OC.png";
		$coilphone2_callnut2="coilphone2_��/coilphone2_��/�l�����M";
		$coilphone2_callnut3="coilphone2_��/coilphone2_��/�g���M";
		$coilphone2_callnut3_a="coilphone2_��/coilphone2_��/���o�g";
		$coilphone2_callnut4w="coilphone2_��/coilphone2_��/��";
		$coilphone2_callnut5="coilphone2_��/coilphone2_��/�f�t�H���M";

		$coilphone2_callnut6="coilphone2_��/coilphone2_��/�ʘb���M";
		$coilphone2_callnut6a="coilphone2_��/coilphone2_��/�\�����M�P";
		$coilphone2_callnut6b="coilphone2_��/coilphone2_��/�\�����M�Q";
		$coilphone2_callnut6c="coilphone2_��/coilphone2_��/�\�����M�R";
		$coilphone2_callimg6a="cg/sys/coil/phone/�\��OC 01.png";
		$coilphone2_callimg6b="cg/sys/coil/phone/�\��OC 02.png";
		$coilphone2_callimg6c="cg/sys/coil/phone/�\��OC 03.png";

		$coilphone2_callpro="CoilCall2Pro2";
	}

	CreateProcess("coilphone2_call_�_�E�����[�h�v���Z�X", 150, 0, 0, $coilphone2_callpro);
	SetAlias("coilphone2_call_�_�E�����[�h�v���Z�X", "coilphone2_call_�_�E�����[�h�v���Z�X");

	CreateProcess("coilphone2_call_�_�E�����[�h�v���Z�X�Q", 150, 0, 0, "CoilCall2ProMoni");
	SetAlias("coilphone2_call_�_�E�����[�h�v���Z�X�Q", "coilphone2_call_�_�E�����[�h�v���Z�X�Q");

	CreateProcess("coilphone2_call_�_�E�����[�h�v���Z�X�R", 150, 0, 0, "CoilCall2ProTalk");
	SetAlias("coilphone2_call_�_�E�����[�h�v���Z�X�R", "coilphone2_call_�_�E�����[�h�v���Z�X�R");


	//�����
	$coilphone2_callX1=$coilphone2X+64+3;
	$coilphone2_callY1=$coilphone2Y+18;
	CreateTexture($coilphone2_callnut1, 10601, $coilphone2_callX1, $coilphone2_callY1, $coilphone2_callimg1);
	SetAlias($coilphone2_callnut1, $coilphone2_callnut1a);

	//���l��
	SetFont("�l�r �S�V�b�N", 25, FFFFFF, 000000, MEDIUM, NULL);
//	$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
	$coiltempX=$coilphone2X;
	$coiltempY=$coilphone2Y+186;
	$coiltempimg=$CoilRece2�Ǘ��l��;
	$temp=String("<SPAN size=-2>%s</SPAN>",$CoilRece2�Ǘ��l��);
	CreateText($coilphone2_callnut2, 10601, Center, $coiltempY, Auto, Auto, $temp);//10090
	SetAlias($coilphone2_callnut2, $coilphone2_callnut2);
	Request($coilphone2_callnut2, NoLog);

/*
	$������=Strlen($coiltempimg);
	if($������<=3){$temphmin=158;}
	else if($������<=4){$temphmin=162;}
	else if($������<=5){$temphmin=165;}
	else if($������<=6){$temphmin=166;}
	else if($������<=7){$temphmin=169;}
	else if($������<=8){$temphmin=171;}
	else{$temphmin=173;}//9
*/
$temphmin=159;
	$temph=$coiltempX+$temphmin-512;
	Move($coilphone2_callnut2, 0, @$temph, @0, null, true);

	//���g
	$coiltempX=$coilphone2X+83+3;
	$coiltempY=$coilphone2Y+77;
	CreateTexture($coilphone2_callnut3, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�t�F�[�X.png");
	SetAlias($coilphone2_callnut3, $coilphone2_callnut3);

	//����f�t�H
	$coiltempX=$coilphone2X+83+3;
	$coiltempY=$coilphone2Y+77;
	CreateTexture($coilphone2_callnut5, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b_�f�t�H���g�A�C�R��.png");
	SetAlias($coilphone2_callnut5, $coilphone2_callnut5);

	//���瑋
	$coiltempX=$coilphone2X+83+7+3;
	$coiltempY=$coilphone2Y+77+7;
	CreateWindow($coilphone2_callnut4w, 10601, $coiltempX, $coiltempY, 98, 98, false);
	SetAlias($coilphone2_callnut4w, $coilphone2_callnut4w);

	//���A�j���[�V����
	$coiltempX=$coilphone2X+115;
	$coiltempY=$coilphone2Y+218;
	CreateTexture($coilphone2_callnut6, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�\��.png");
	SetAlias($coilphone2_callnut6, $coilphone2_callnut6);

	CreateTexture($coilphone2_callnut3_a, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�\��.png");
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
	Fade("coilphone2_��/coilphone2_��/�\��*", 0, 0, null, false);


	Request("coilphone2_��/coilphone2_��/*", PushText);
	Request("coilphone2_��/coilphone2_��/*/*", PushText);


	$coilphone2X6=$coilphone2X+12;
	$coilphone2Y6=$coilphone2Y+56;
	CreateWindow("coilphone2_��/coilphone2_call_��", 20000, $coilphone2X6, $coilphone2Y6, 263, 233, false);
	SetAlias("coilphone2_��/coilphone2_call_��", "coilphone2_call_��");

	CreateColor("coilphone2_��/coilphone2_call_��/���o�F�P", 10602, $coilphone2X, $coilphone2Y, 300, 1, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone2_��/coilphone2_call_��/���o�F�P", "coilphone2_call_���o�F�P");
	Request("coilphone2_��/coilphone2_call_��/���o�F�P", AddRender);
	CreateColor("coilphone2_��/coilphone2_call_��/���o�F�Q", 10602, $coilphone2X, $coilphone2Y, 300, 200, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone2_��/coilphone2_call_��/���o�F�Q", "coilphone2_call_���o�F�Q");
	Request("coilphone2_��/coilphone2_call_��/���o�F�Q", AddRender);
	Fade("@coilphone2_call_���o�F�Q", 0, 0, null, true);

	//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//����
	if(!$CoilPhone2){
		Move("coilphone2_��/*", 0, @0, @-375, null, false);
		Move("coilphone2_��/*/*", 0, @0, @-375, null, false);
		Move("coilphone2_��/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone2_���M�I��", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone2_���M�J�n", 0, 0, 0, Dxl1, false);
	
		Fade("@coilphone2_���M�J�n", 0, 0, null, true);
		Fade("@coilphone2_���M�I��", 0, 0, null, true);
		Fade("@coilphone2_���M�v��*", 0, 0, null, true);

		Fade("@coilphone2_��/coilphone2_��/�g*", 0, 0, null, false);

		Fade("@coilphone2_�x�[�X�R", 0, 0, null, false);
		Fade("coilphone2_��/�x�[�X", 0, 750, null, true);
	
		SetVertex("@coilphone2_�x�[�X", 143, 0);
		Zoom("@coilphone2_�x�[�X", 0, 1200, 1000, null, true);//��������������
		Fade("@coilphone2_�x�[�X", 0, 0, null, true);

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

		Fade("coilphone2_��/coilphone2_call_��/���o�F�P", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_call_��/���o�F�Q", 0, 0, null, false);

	}

	if($coilphone2Name=="���M"){
		CreateSE("coilsound2_phone3","se����_�R�C��_���쉹01");
		CreateSE("coilsound2_phone9","se����_�R�C��_�^�[�Q�b�g�J��");
	
		CreateSE("coilsound2_phone4","se����_�R�C��_�V�X�e�����[���W�J");
	
		CreateSE("coilsound2_phone5","se����_�R�C��_���쉹01");
		CreateSE("coilsound2_phone6","se����_�R�C��_���M�ҋ@01");
		CreateSE("coilsound2_phone_call","se����_�R�C��_���M�ҋ@02L");
	}

	$CoilPhone2=true;
}



..���R�[���J�n
function CoilPhone2_CallFade(){

	if(!$coilphone2ON){
	//���x�[�X���Ȃ������ꍇ�i�ʏ퉉�o�j
		MusicStart("coilsound2_phone1",0,700,0,1000,null,false);

		Fade("@coilphone2_call_���o�F�P", 0, 0, Axl1, false);
	
		Zoom("@coilphone2_�x�[�X", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone2_���o", 0, 350, null, false);
	//	Zoom("coilphone2_���o", 200, 1500, 200, null, false);
	
	//	Fade("coilphone2_��/�x�[�X�Q", 300, 500, null, false);
	//	Fade("coilphone2_��/�x�[�X", 300, 1000, null, false);
	//	Move("coilphone2_��/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone2_��/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone2_���o", 0, 350, null, false);
		Zoom("coilphone2_���o", 150, 1500, 200, null, false);
	
		Fade("coilphone2_��/�x�[�X�Q", 200, 500, null, false);
	//	Fade("coilphone2_��/�x�[�X", 200, 1000, null, false);
		Move("coilphone2_��/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_��/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_��/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphone2ON=true;
		CoilBlack();

		Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 600, null, false);

		if($coilphone2Name=="���M"){
			Fade("coilphone2_��/coilphone2_��/�ʘb*", 0, 1000, null, false);
			Fade("@coilphone2_���M�v���I��", 0, 1000, null, false);
		}else{
			Fade("coilphone2_��/coilphone2_call_���*", 0, 0, null, false);

			Fade("coilphone2_��/coilphone2_��/�ʘb*", 0, 0, null, false);
			Fade("@coilphone2_���M�v���J�n", 0, 1000, null, false);
		}

		Fade("coilphone2_���o", 0, 1000, null, true);

		Move("coilphone2_��/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_��/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_��/*", 500, @0, @339, Dxl1, false);

		Fade("coilphone2_��/�x�[�X", 200, 1000, null, false);
		Fade("coilphone2_��/�x�[�X�Q", 200, 0, null, false);
		Fade("@coilphone2_�x�[�X�R", 200, 1000, null, false);
	
		Fade("coilphone2_���o", 500, 0, Axl2, false);
		Zoom("coilphone2_���o", 200, 1000, 1000, null, false);
	
		if($coilphone2Name=="���M"){
			Fade("@coilphone2_���M�v���I��", 300, 0, null, false);
			Fade("@coilphone2_���M�I��", 400, 1000, null, false);
		}else{
			Fade("@coilphone2_���M�v���J�n", 400, 0, null, false);
			Fade("@coilphone2_���M�J�n", 400, 1000, null, false);
		}
		Zoom("@coilphone2_���M�I��", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone2_���M�J�n", 400, 1000, 1000, Dxl1, false);


		Move("coilphone2_��/�}�X�N�Q", 500, @0, @-373, null, false);
		Zoom("@coilphone2_�x�[�X�R", 500, 1000, 1200, Axl1, false);

		//WaitAction("coilphone2_��/�}�X�N�Q", null);
		//$SYSTEM_skip=false;
		//Draw();

		if($coilphone2Name=="���M"){
			Request("coilphone2_call_�_�E�����[�h�v���Z�X", Start);
			Request("coilphone2_call_�_�E�����[�h�v���Z�X�Q", Start);
		//	Request("coilphone2_�_�E�����[�h�v���Z�X", Start);
		}else if($coilphone2Error){
			WaitAction("coilphone2_��/�}�X�N�Q", null);
			MusicStart("coilsound2_phone5",0,700,0,1000,null,false);

			Fade("coilphone2_��/coilphone2_call_���*", 0, 1000, null, false);
			Fade("coilphone2_��/���M���o", 0, 1000, null, true);
			Fade("coilphone2_��/���M���o", 200, 0, null, false);
			Fade("@coilphone2_���M�I��", 0, 1000, null, false);
			Fade("@coilphone2_���M�J�n", 0, 0, null, false);

			Fade("coilphone2_��/coilphone2_��/�ʘb*", 0, 500, null, false);

			WaitPlay("coilsound2_phone5", null);
			MusicStart("coilsound2_phone6",0,700,0,1000,null,false);
			WaitPlay("coilsound2_phone6", null);
			Wait(500);
			CoilPhone2_Error();
			$coilphone2Error=false;
		}else{
			WaitAction("coilphone2_��/�}�X�N�Q", null);
			MusicStart("coilsound2_phone5",0,700,0,1000,null,false);

			Fade("coilphone2_��/coilphone2_call_���*", 0, 1000, null, false);
			Fade("coilphone2_��/���M���o", 0, 1000, null, true);
			Fade("coilphone2_��/���M���o", 200, 0, null, false);
			Fade("@coilphone2_���M�I��", 0, 1000, null, false);
			Fade("@coilphone2_���M�J�n", 0, 0, null, false);

			Fade("coilphone2_��/coilphone2_��/�ʘb*", 0, 500, null, false);

			WaitPlay("coilsound2_phone5", null);
			MusicStart("coilsound2_phone6",0,700,0,1000,null,false);
			WaitPlay("coilsound2_phone6", null);

			Request("coilphone2_call_�_�E�����[�h�v���Z�X", Start);
			Request("coilphone2_call_�_�E�����[�h�v���Z�X�Q", Start);
		//	Request("coilphone2_�_�E�����[�h�v���Z�X", Start);

			MusicStart("coilsound2_phone_call",0,700,0,1000,null,true);
		}

	}else{
	//���x�[�X���������ꍇ�i�u�����o�j
		Request("coilphone2_*", Stop);
		//Request("@coilphone2_��/coilphone2_��/�\��*", Erase);

		Position("coilphone2_��",$coilphone2X,$coilphone2Y);

		//�����
		$coiltempX=$coilphone2X+64+3;
		$coiltempY=$coilphone2Y+18;
		Move($coilphone2_callnut1, 0, $coiltempX, $coiltempY, null, false);

		//���l��
		$coiltempX=$coilphone2X;
		$coiltempY=$coilphone2Y+186;

		$temph=ImageHorizon($coilphone2_callnut2);
		$temph=(1024-$temph)/2;

/*
		$������=Strlen($CoilRece2�Ǘ��l��);
		if($������<=3){$temphmin=158;}
		else if($������<=4){$temphmin=162;}
		else if($������<=5){$temphmin=165;}
		else if($������<=6){$temphmin=166;}
		else if($������<=7){$temphmin=169;}
		else if($������<=8){$temphmin=171;}
		else{$temphmin=173;}//9
*/
$temphmin=159;
		$coiltempX=$temph+($coiltempX+$temphmin-512);
		Move($coilphone2_callnut2, 0, $coiltempX, $coiltempY, null, false);

		//���g
		$coiltempX=$coilphone2X+83+3;
		$coiltempY=$coilphone2Y+77;
		Move($coilphone2_callnut3, 0, $coiltempX, $coiltempY, null, false);

		//����f�t�H
		$coiltempX=$coilphone2X+83+3;
		$coiltempY=$coilphone2Y+77;
		Move($coilphone2_callnut5, 0, $coiltempX, $coiltempY, null, false);

		//���瑋
		$coiltempX=$coilphone2X+83+7+3;
		$coiltempY=$coilphone2Y+77+7;
		Move($coilphone2_callnut4w, 0, $coiltempX, $coiltempY, null, false);

		//���A�j���[�V����
		$coiltempX=$coilphone2X+115;
		$coiltempY=$coilphone2Y+218;
		Move($coilphone2_callnut6, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone2_callnut6a, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone2_callnut6b, 0, $coiltempX, $coiltempY, null, false);
		Move($coilphone2_callnut6c, 0, $coiltempX, $coiltempY, null, false);

		$coiltempX=$coilphone2X+12;
		$coiltempY=$coilphone2Y+56;
		Move("coilphone2_��/coilphone2_call_��", 0, $coiltempX, $coiltempY, null, false);

		Move("coilphone2_��/coilphone2_call_��/���o�F�P", 0, $coilphone2X, $coilphone2Y, null, false);
		Move("coilphone2_��/coilphone2_call_��/���o�F�Q", 0, $coilphone2X, $coilphone2Y, null, false);

		//�����͕K�����M�ɂȂ�
		MusicStart("coilsound2_phone3",0,700,0,1000,null,false);

		Fade("coilphone2_��/coilphone2_call_���*", 0, 0, null, false);
		Fade("coilphone2_��/���M*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/*/*", 0, 0, null, false);

		//Fade($coilphone2_callnut1, 0, 1000, null, false);
		Fade($coilphone2_callnut2, 0, 1000, null, false);
		//Fade($coilphone2_callnut3, 0, 1000, null, false);
		Fade($coilphone2_callnut5, 0, 600, null, true);
		Fade("@coilphone2_���M�J�n", 0, 1000, null, true);

		if(!$coilphone2Error){
			//���[�����o===============================
			MusicStart("coilsound2_phone9",0,700,0,1000,null,false);
			Wait(500);
			MusicStart("coilsound2_phone4",0,700,0,1000,null,false);
			Wait(1000);
			//=========================================
		}

		MusicStart("coilsound2_phone5",0,700,0,1000,null,false);

		Fade($coilphone2_callnut1, 0, 1000, null, false);
		Fade("coilphone2_��/���M���o", 0, 1000, null, true);
		Fade("coilphone2_��/���M���o", 200, 0, null, false);
		Fade("@coilphone2_���M�I��", 0, 1000, null, false);
		Fade("@coilphone2_���M�J�n", 0, 0, null, false);

		Fade("coilphone2_��/coilphone2_��/�ʘb*", 0, 500, null, false);
		//coilphone2_��/coilphone2_��/�ʘb�G���[

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
			Request("coilphone2_call_�_�E�����[�h�v���Z�X", Start);
			Request("coilphone2_call_�_�E�����[�h�v���Z�X�Q", Start);
			MusicStart("coilsound2_phone_call",0,700,0,1000,null,true);
		}
	}

}



function CoilCall2ProTalk(){

	if($CoilRece2�Ǘ��l��=="�f���o���[���[�N�X"){
		$PhoneLipName2="���V�G";
	}else if($CoilRece2�Ǘ��l��=="�H�ꂳ��"){
		$PhoneLipName2="�H��";
	}else if($CoilRece2�Ǘ��l��=="�@�@"){
		$PhoneLipName2="���]";
	}else{
		$PhoneLipName2=$CoilRece2�Ǘ��l��;
	}


	$PhoneLipNut2_0="@"+$coilphone2_callnut3_a;
	$PhoneLipNut2_1="@"+$coilphone2_callnut3_a;
//	$PhoneLipNut2_2="@"+$alies_lip2;
//	$PhoneLipNut2_n="@"+$�i�b�g��;

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
	Position("@coilphone2_��",$CoilCall2Pro2X,$CoilCall2Pro2Y);
	$CoilCall2Pro2Y_base=$CoilCall2Pro2Y-300;
	$CoilCall2Pro2Y+=360;

	Move("@coilphone2_call_���o�F�P", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y_base, null, true);
	Fade("@coilphone2_call_���o�F�P", 0, 200, null, true);
	Move("@coilphone2_call_���o�F�Q", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y_base, null, true);
	Fade("@coilphone2_call_���o�F�Q", 0, 100, null, true);

	Move("@coilphone2_call_���o�F�P", 3000, @0, $CoilCall2Pro2Y, null, false);
	Move("@coilphone2_call_���o�F�Q", 15000, @0, $CoilCall2Pro2Y, null, false);

	while(1){
		Position("@coilphone2_call_���o�F�P",$CoilCall2Pro2Xa,$CoilCall2Pro2Ya);
		if($CoilCall2Pro2Ya>=$CoilCall2Pro2Y){
			$CoilCall2Pro2R=Random(5);
			if($CoilCall2Pro2R<=3){
				Move("@coilphone2_call_���o�F�P", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y_base, null, true);
				Move("@coilphone2_call_���o�F�P", 3000, @0, $CoilCall2Pro2Y, null, false);
			}
		}
		Position("@coilphone2_call_���o�F�Q",$CoilCall2Pro2Xa,$CoilCall2Pro2Ya);
		if($CoilCall2Pro2Ya>=$CoilCall2Pro2Y){
			Move("@coilphone2_call_���o�F�Q", 0, $CoilCall2Pro2X, $CoilCall2Pro2Y_base, null, true);
			Move("@coilphone2_call_���o�F�Q", 15000, @0, $CoilCall2Pro2Y, null, false);
		}
	}

}


function CoilCall2Pro1(){

//	Fade("@coilphone2_��/coilphone2_��/�ʘb*", 0, 500, null, false);
	Fade("@coilphone2_��/coilphone2_��/�\�����M�R", 0, 700, null, true);

	while(1){
		Fade("@coilphone2_��/coilphone2_��/�\�����M�P", 300, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�\�����M�R", 300, 700, null, true);

		Fade("@coilphone2_��/coilphone2_��/�\�����M�R", 300, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�\�����M�Q", 300, 700, null, true);

		Fade("@coilphone2_��/coilphone2_��/�\�����M�Q", 300, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�\�����M�P", 300, 700, null, true);
	}
}


function CoilCall2Pro2(){

//	Fade("@coilphone2_��/coilphone2_��/�ʘb*", 0, 500, null, false);
	Fade("@coilphone2_��/coilphone2_��/�\�����M�P", 0, 700, null, true);

	while(1){
		Fade("@coilphone2_��/coilphone2_��/�\�����M�R", 300, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�\�����M�P", 300, 700, null, true);

		Fade("@coilphone2_��/coilphone2_��/�\�����M�P", 300, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�\�����M�Q", 300, 700, null, true);

		Fade("@coilphone2_��/coilphone2_��/�\�����M�Q", 300, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�\�����M�R", 300, 700, null, true);
	}
}


..���ʘb�J�n
function CoilPhone2_CallOn($coilphone2��X,$coilphone2��Y,$coilphone2�Ώ�){
	CreateSE("coilsound2_phone8","se����_�R�C��_�V�X�e�����[���V��");
	SetVolumeEX("coilsound2_phone_call", 0, 0, null);
	MusicStart("coilsound2_phone8",0,700,0,1000,null,false);

	Request("coilphone2_call_�_�E�����[�h�v���Z�X", Stop);
	Request("@coilphone2_��/coilphone2_��/�\��*", Erase);

	Request("coilphone2_call_�_�E�����[�h�v���Z�X�R", Start);

	Fade("@coilphone2_��/coilphone2_��/�ʘb*", 0, 1000, null, true);
	Fade("@coilphone2_��/coilphone2_��/�g*", 0, 1000, null, false);

	$coilphone2count=0;

	if($coilphone2�Ώ�=="�f�t�H���g"){
		Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 0, null, false);
	}else if($coilphone2�Ώ�=="�s��"){
		Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 1000, null, false);
	}else{
		$coilphone2img="cg/st/"+$coilphone2�Ώ�+".png";
		$coilphone2nut="coilphone2_��/coilphone2_��/��/��0";

		Position("coilphone2_��",$X���W�l,$Y���W�l);

		CreateTexture($coilphone2nut, 10601, $X���W�l, $Y���W�l, $coilphone2img);
		SetAlias($coilphone2nut, $coilphone2nut);
		Fade($coilphone2nut, 0, 0, null, true);

		$coilphone2tempH=ImageHorizon($coilphone2nut);
		$X���W�l=(287-$coilphone2tempH)/2;

		Move($coilphone2nut, 0, @$X���W�l, @20, null, true);
		Move($coilphone2nut, 0, $coilphone2��X, $coilphone2��Y, null, true);

		Fade($coilphone2nut, 0, 700, null, true);
		Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 0, null, false);
	}
}


..���ʘb�p����ω�
function CoilPhone2_Face($coilphone2��X,$coilphone2��Y,$coilphone2�Ώ�){

	if($coilphone2�Ώ�=="�f�t�H���g"){
		Fade("coilphone2_��/coilphone2_��/��/*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 0, null, false);
	}else if($coilphone2�Ώ�=="�s��"){
		Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 1000, null, false);
		Fade("coilphone2_��/coilphone2_��/��/*", 0, 0, null, false);
	}else{
		$precoilphone2count=$coilphone2count;
		$coilphone2count++;

		$coilphone2img="cg/st/"+$coilphone2�Ώ�+".png";
		$coilphone2nut="coilphone2_��/coilphone2_��/��/��"+$coilphone2count;

		Position("coilphone2_��",$X���W�l,$Y���W�l);

		CreateTexture($coilphone2nut, 10601, $X���W�l, $Y���W�l, $coilphone2img);
		SetAlias($coilphone2nut, $coilphone2nut);
		Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 0, null, false);
		Fade($coilphone2nut, 0, 0, null, true);

		$coilphone2tempH=ImageHorizon($coilphone2nut);
		$X���W�l=(287-$coilphone2tempH)/2;

		Move($coilphone2nut, 0, @$X���W�l, @20, null, true);
		Move($coilphone2nut, 0, $coilphone2��X, $coilphone2��Y, null, true);

		//�����b�N�ݒu
		LockVideo(true);
		Fade("coilphone2_��/coilphone2_��/��/*", 0, 0, null, false);
		Fade($coilphone2nut, 0, 700, null, true);
		//�����b�N�ݒu
		LockVideo(false);

		$precoilphone2nut="coilphone2_��/coilphone2_��/��/��"+$precoilphone2count;
		Delete($precoilphone2nut);
	}
}

..���ʘb�I��
function CoilPhone2_End(){
	Request("coilphone2_call_�_�E�����[�h�v���Z�X", Stop);
	Request("coilphone2_call_�_�E�����[�h�v���Z�X�Q", Stop);
	Request("coilphone2_call_�_�E�����[�h�v���Z�X�R", Stop);
	Request("@coilphone2_��/coilphone2_��/�\��*", Erase);

	CreateSE("coilsound2_phone8","se����_�R�C��_���쉹01");
	SetVolumeEX("coilsound2_phone_call", 0, 0, null);
	MusicStart("coilsound2_phone8",0,700,0,1000,null,false);

	Position("coilphone2_��",$X���W�l,$Y���W�l);

//	$X���W�l=$X���W�l+78;
//	$Y���W�l=$Y���W�l+102;
//	CreateTexture("coilphone2_��/coilphone2_��/�ʘb�I��", 10601, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b���M�L��2.png");
//	SetAlias("coilphone2_��/coilphone2_��/�ʘb�I��", "coilphone2_��/coilphone2_��/�ʘb�I��");
//	Fade("coilphone2_��/coilphone2_��/�ʘb�I��", 0, 0, null, true);

	$X���W�l=$X���W�l+115;
	$Y���W�l=$Y���W�l+218;
	CreateTexture("coilphone2_��/coilphone2_��/�ʘb�I��", 10601, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b���M�L��3.png");
	SetAlias("coilphone2_��/coilphone2_��/�ʘb�I��", "coilphone2_��/coilphone2_��/�ʘb�I��");
	Fade("coilphone2_��/coilphone2_��/�ʘb�I��", 0, 0, null, true);

//	Fade("coilphone2_��/coilphone2_call_���*", 0, 0, null, false);

	Fade("coilphone2_��/coilphone2_��/���o�g", 0, 0, null, false);

	Fade("coilphone2_��/coilphone2_call_��/���o�F�P", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_call_��/���o�F�Q", 0, 0, null, false);

	Fade("coilphone2_��/���M�I��", 0, 0, null, false);
	Fade("coilphone2_��/���M�J�n", 0, 1000, null, false);

	Fade("coilphone2_��/coilphone2_��/�g*", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 600, null, false);
	Fade("coilphone2_��/coilphone2_��/�ʘb*", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_��/��/*", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_��/�ʘb�I��", 0, 1000, null, true);
}

..���ʐM�G���[
function CoilPhone2_Error(){
	Request("coilphone2_call_�_�E�����[�h�v���Z�X", Stop);
	Request("coilphone2_call_�_�E�����[�h�v���Z�X�Q", Stop);
	Request("coilphone2_call_�_�E�����[�h�v���Z�X�R", Stop);
	Request("@coilphone2_��/coilphone2_��/�\��*", Erase);

	CreateSE("coilsound2_phone0","se����_�R�C��_�ʐM�Ւf01");
	SetVolumeEX("coilsound2_phone_call", 0, 0, null);
	MusicStart("coilsound2_phone0",0,700,0,1000,null,false);


	Position("coilphone2_��",$X���W�l,$Y���W�l);

//	$X���W�l=$X���W�l+78;
//	$Y���W�l=$Y���W�l+102;
//	CreateTexture("coilphone2_��/coilphone2_��/�ʘb�I��", 10601, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b���M�L��2.png");
//	SetAlias("coilphone2_��/coilphone2_��/�ʘb�I��", "coilphone2_��/coilphone2_��/�ʘb�I��");
//	Fade("coilphone2_��/coilphone2_��/�ʘb�I��", 0, 0, null, true);

	CreateProcess("coilphone2_error_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilError2Pro1");
	SetAlias("coilphone2_error_�_�E�����[�h�v���Z�X", "coilphone2_error_�_�E�����[�h�v���Z�X");

	$X���W�l=$X���W�l+67;
	$Y���W�l=$Y���W�l+102;
	CreateTexture("coilphone2_��/coilphone2_��/�G���[", 10601, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b�G���[.png");
	SetAlias("coilphone2_��/coilphone2_��/�G���[", "coilphone2_��/coilphone2_��/�G���[");
	Fade("coilphone2_��/coilphone2_��/�G���[", 0, 0, null, true);

	CreateTexture("coilphone2_��/coilphone2_��/�G���[�Q", 10601, $X���W�l, $Y���W�l, "cg/sys/coil/phone/�R�C���d�b�G���[2.png");
	SetAlias("coilphone2_��/coilphone2_��/�G���[�Q", "coilphone2_��/coilphone2_��/�G���[�Q");
	Request("coilphone2_��/coilphone2_��/�G���[�Q", SubRender);
	Fade("coilphone2_��/coilphone2_��/�G���[�Q", 0, 0, null, true);


	Fade("coilphone2_��/coilphone2_call_���*", 0, 0, null, false);

	Fade("coilphone2_��/coilphone2_��/���o�g", 0, 0, null, false);

	Fade("coilphone2_��/coilphone2_call_��/���o�F�P", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_call_��/���o�F�Q", 0, 0, null, false);

	Fade("coilphone2_��/���M�I��", 0, 0, null, false);
	Fade("coilphone2_��/���M�J�n", 0, 1000, null, false);/////////

	Fade("coilphone2_��/coilphone2_��/�l��*", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_��/�g*", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_��/�ʘb*", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_��/��/*", 0, 0, null, false);
	Fade("coilphone2_��/coilphone2_��/�G���[", 0, 1000, null, true);

	Request("coilphone2_error_�_�E�����[�h�v���Z�X", Start);
}











.���d�b�Q�w���M�Z�b�g�x
..���d�b���M�L��Z�b�g�i10600�j
function CoilPhone2_MissSet($coilphone2X,$coilphone2Y){

	if(!$CoilPhone2){
		CoilPhone2Base();
	}else{
		Position("coilphone2_��",$coilphone2X,$coilphone2Y);
	}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	$coilphone2_missnut1="coilphone2_��/coilphone2_��/coilphone2_miss_���M�L��";
	$coilphone2_missnut1a="coilphone2_miss_���M�L��";
	$coilphone2_missnut2="coilphone2_��/coilphone2_��/coilphone2_miss_���M�L��Q";
	$coilphone2_missnut2a="coilphone2_miss_���M�L��Q";

	$coilphone2_misspro="CoilMiss2Pro1";

	CreateProcess("coilphone2_miss_�_�E�����[�h�v���Z�X", 150, 0, 0, $coilphone2_misspro);
	SetAlias("coilphone2_miss_�_�E�����[�h�v���Z�X", "coilphone2_miss_�_�E�����[�h�v���Z�X");

	//�����M����
	$coilphone2_missX1=$coilphone2X+78;
	$coilphone2_missY1=$coilphone2Y+102;
	CreateTexture($coilphone2_missnut1, 10601, $coilphone2_missX1, $coilphone2_missY1, "cg/sys/coil/phone/�R�C���d�b���M�L��.png");
	SetAlias($coilphone2_missnut1, $coilphone2_missnut1a);

	CreateTexture($coilphone2_missnut2, 10601, $coilphone2_missX1, $coilphone2_missY1, "cg/sys/coil/phone/�R�C���d�b���M�L��2.png");
	SetAlias($coilphone2_missnut2, $coilphone2_missnut2a);
	Fade($coilphone2_missnut2, 0, 0, null, true);
	Request($coilphone2_missnut2, AddRender);

	//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//����
	if(!$CoilPhone2){
		Move("coilphone2_��/*", 0, @0, @-375, null, false);
		Move("coilphone2_��/*/*", 0, @0, @-375, null, false);
		Move("coilphone2_��/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone2_���M�I��", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone2_���M�J�n", 0, 0, 0, Dxl1, false);

		Fade("@coilphone2_���M�J�n", 0, 0, null, true);
		Fade("@coilphone2_���M�I��", 0, 0, null, true);
		Fade("@coilphone2_���M�v��*", 0, 0, null, true);
	
		Fade("@coilphone2_�x�[�X�R", 0, 0, null, false);
		Fade("coilphone2_��/�x�[�X", 0, 750, null, true);
	
		SetVertex("@coilphone2_�x�[�X", 143, 0);
		Zoom("@coilphone2_�x�[�X", 0, 1200, 1000, null, true);//��������������
		Fade("@coilphone2_�x�[�X", 0, 0, null, true);
	}else{
		Fade("coilphone2_��/coilphone2_��/coilphone2_miss_���M�L��", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/coilphone2_miss_���M�L��Q", 0, 0, null, true);
	}

	//se����_�R�C��_�V�X�e�����[���V��
	CreateSE("coilsound2_phone24","se����_�R�C��_�V�X�e�����[���W�J");

	$CoilPhone2=true;
}



..�����M�L��\��
function CoilPhone2_MissFade(){

	if(!$coilphone2ON){
	//���x�[�X���Ȃ������ꍇ�i�ʏ퉉�o�j
		MusicStart("coilsound2_phone1",0,700,0,1000,null,false);

		Fade("@coilphone2_miss_���o�F�P", 0, 0, Axl1, false);
	
		Zoom("@coilphone2_�x�[�X", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone2_���o", 0, 350, null, false);
	//	Zoom("coilphone2_���o", 200, 1500, 200, null, false);
	
	//	Fade("coilphone2_��/�x�[�X�Q", 300, 500, null, false);
	//	Fade("coilphone2_��/�x�[�X", 300, 1000, null, false);
	//	Move("coilphone2_��/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone2_��/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone2_���o", 0, 350, null, false);
		Zoom("coilphone2_���o", 150, 1500, 200, null, false);
	
		Fade("coilphone2_��/�x�[�X�Q", 200, 500, null, false);
	//	Fade("coilphone2_��/�x�[�X", 200, 1000, null, false);
		Move("coilphone2_��/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_��/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_��/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphone2ON=true;
		CoilBlack();
	
		Fade("@coilphone2_���M�v���J�n", 0, 1000, null, false);
		Fade("coilphone2_���o", 0, 1000, null, true);
	
		Fade("coilphone2_��/�x�[�X", 200, 1000, null, false);
		Fade("coilphone2_��/�x�[�X�Q", 200, 0, null, false);
		Fade("@coilphone2_�x�[�X�R", 200, 1000, null, false);
	
		Fade("coilphone2_���o", 500, 0, Axl2, false);
		Zoom("coilphone2_���o", 200, 1000, 1000, null, false);
	
		Move("coilphone2_��/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_��/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_��/*", 500, @0, @339, Dxl1, false);
	
		Fade("@coilphone2_���M�v���J�n", 300, 0, null, false);
		Fade("@coilphone2_���M�J�n", 400, 1000, null, false);
		Zoom("@coilphone2_���M�I��", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone2_���M�J�n", 400, 1000, 1000, Dxl1, false);

	
		Move("coilphone2_��/�}�X�N�Q", 500, @0, @-373, null, false);
		Zoom("@coilphone2_�x�[�X�R", 500, 1000, 1200, Axl1, false);
	
		Request("coilphone2_miss_�_�E�����[�h�v���Z�X", Start);
	//	Request("coilphone2_�_�E�����[�h�v���Z�X", Start);

	}else{
	//���x�[�X���������ꍇ�i�u�����o�j
		Request("coilphone2_*", Stop);
		//Request("@coilphone2_��/coilphone2_��/�\��*", Erase);

		MusicStart("coilsound2_phone24",0,700,0,1000,null,false);

		Position("coilphone2_��",$X���W�l,$Y���W�l);
	
		$X���W�l=$X���W�l+78;
		$Y���W�l=$Y���W�l+102;

		Move("coilphone2_��/coilphone2_��/coilphone2_miss_���M�L��", 0, $X���W�l, $Y���W�l, null, false);
		Move("coilphone2_��/coilphone2_��/coilphone2_miss_���M�L��Q", 0, $X���W�l, $Y���W�l, null, false);

		Fade("coilphone2_��/coilphone2_call_��/���o�F�P", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_call_��/���o�F�Q", 0, 0, null, false);

		Fade("coilphone2_��/coilphone2_call_���*", 0, 0, null, false);
		Fade("coilphone2_��/���M*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/*/*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/coilphone2_miss_���M�L��", 0, 1000, null, false);
		Request("coilphone2_miss_�_�E�����[�h�v���Z�X", Start);
	}


}


function CoilMiss2Pro1(){
	while(1){
		Fade("@coilphone2_miss_���M�L��Q", 1000, 700, null, true);
		Fade("@coilphone2_miss_���M�L��Q", 1000, 0, null, true);
	}
}





















.���d�b�Q�w�G���[�Z�b�g�x
..���d�b�G���[�Z�b�g�i10600�j
function CoilPhone2_ErrorSet($coilphone2X,$coilphone2Y){

	if(!$CoilPhone2){
		CoilPhone2Base();
	}else{
		Position("coilphone2_��",$coilphone2X,$coilphone2Y);
	}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	CreateProcess("coilphone2_error_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilError2Pro1");
	SetAlias("coilphone2_error_�_�E�����[�h�v���Z�X", "coilphone2_error_�_�E�����[�h�v���Z�X");

	//�����M����
	$coilphone2X=$coilphone2X+67;
	$coilphone2Y=$coilphone2Y+102;
	CreateTexture("coilphone2_��/coilphone2_��/�G���[", 10601, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/�R�C���d�b�G���[.png");
	SetAlias("coilphone2_��/coilphone2_��/�G���[", "coilphone2_��/coilphone2_��/�G���[");
	CreateTexture("coilphone2_��/coilphone2_��/�G���[�Q", 10601, $coilphone2X, $coilphone2Y, "cg/sys/coil/phone/�R�C���d�b�G���[2.png");
	SetAlias("coilphone2_��/coilphone2_��/�G���[�Q", "coilphone2_��/coilphone2_��/�G���[�Q");
	Request("coilphone2_��/coilphone2_��/�G���[�Q", SubRender);
	Fade("coilphone2_��/coilphone2_��/�G���[�Q", 0, 0, null, true);

	//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//����
	if(!$CoilPhone2){
		Move("coilphone2_��/*", 0, @0, @-375, null, false);
		Move("coilphone2_��/*/*", 0, @0, @-375, null, false);
		Move("coilphone2_��/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("@coilphone2_���M�I��", 0, 1000, 0, Dxl1, false);
		Zoom("@coilphone2_���M�J�n", 0, 1000, 0, Dxl1, false);

		Fade("@coilphone2_���M�J�n", 0, 0, null, true);
		Fade("@coilphone2_���M�I��", 0, 0, null, true);
		Fade("@coilphone2_���M�v��*", 0, 0, null, true);
	
		Fade("@coilphone2_�x�[�X�R", 0, 0, null, false);
		Fade("coilphone2_��/�x�[�X", 0, 750, null, true);
	
		SetVertex("@coilphone2_�x�[�X", 143, 0);
		Zoom("@coilphone2_�x�[�X", 0, 1200, 1000, null, true);//��������������
		Fade("@coilphone2_�x�[�X", 0, 0, null, true);
	}else{
		Fade("coilphone2_��/coilphone2_��/�G���[", 0, 0, null, true);
	}

	//se����_�R�C��_�V�X�e�����[���V��
	CreateSE("coilsound2_phone0","se����_�R�C��_�ʐM�Ւf01");

	$CoilPhone2=true;
}


..�����M�L��\��
function CoilPhone2_ErrorFade(){

	if(!$coilphone2ON){
	//���x�[�X���Ȃ������ꍇ�i�ʏ퉉�o�j
		MusicStart("coilsound2_phone1",0,700,0,1000,null,false);

		Fade("@coilphone2_error_���o�F�P", 0, 0, Axl1, false);
	
		Zoom("@coilphone2_�x�[�X", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone2_���o", 0, 350, null, false);
	//	Zoom("coilphone2_���o", 200, 1500, 200, null, false);
	
	//	Fade("coilphone2_��/�x�[�X�Q", 300, 500, null, false);
	//	Fade("coilphone2_��/�x�[�X", 300, 1000, null, false);
	//	Move("coilphone2_��/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone2_��/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone2_���o", 0, 350, null, false);
		Zoom("coilphone2_���o", 150, 1500, 200, null, false);
	
		Fade("coilphone2_��/�x�[�X�Q", 200, 500, null, false);
	//	Fade("coilphone2_��/�x�[�X", 200, 1000, null, false);
		Move("coilphone2_��/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_��/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_��/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphone2ON=true;
		CoilBlack();
	
//		Fade("@coilphone2_���M�v���J�n", 0, 1000, null, false);//�G���[�������
		Fade("coilphone2_���o", 0, 1000, null, true);
	
		Fade("coilphone2_��/�x�[�X", 200, 1000, null, false);
		Fade("coilphone2_��/�x�[�X�Q", 200, 0, null, false);
		Fade("@coilphone2_�x�[�X�R", 200, 1000, null, false);
	
		Fade("coilphone2_���o", 500, 0, Axl2, false);
		Zoom("coilphone2_���o", 200, 1000, 1000, null, false);
	
		Move("coilphone2_��/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_��/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_��/*", 500, @0, @339, Dxl1, false);
	
//		Fade("@coilphone2_���M�v���J�n", 300, 0, null, false);//�G���[�������
//		Fade("@coilphone2_���M�J�n", 400, 1000, null, false);//�G���[�������
		Zoom("@coilphone2_���M�I��", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone2_���M�J�n", 400, 1000, 1000, Dxl1, false);


		Move("coilphone2_��/�}�X�N�Q", 500, @0, @-373, null, false);
		Zoom("@coilphone2_�x�[�X�R", 500, 1000, 1200, Axl1, false);
	
		Request("coilphone2_error_�_�E�����[�h�v���Z�X", Start);

	}else{
	//���x�[�X���������ꍇ�i�u�����o�j
		Request("coilphone2_*", Stop);
		Request("@coilphone2_��/coilphone2_��/�\��*", Erase);
	
		Position("coilphone2_��",$X���W�l,$Y���W�l);
	
		$X���W�l=$X���W�l+67;
		$Y���W�l=$Y���W�l+102;
		Move("coilphone2_��/coilphone2_��/�G���[", 0, $X���W�l, $Y���W�l, null, false);

		SetVolumeEX("coilsound2_phone_call", 0, 0, null);
		MusicStart("coilsound2_phone0",0,700,0,1000,null,false);
	
		Fade("coilphone2_��/coilphone2_��/���o�g", 0, 0, null, false);
	
		Fade("coilphone2_��/coilphone2_call_��/���o�F�P", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_call_��/���o�F�Q", 0, 0, null, false);

	
//		Fade("coilphone2_��/���M�I��", 0, 0, null, false);
//		Fade("coilphone2_��/���M�J�n", 0, 1000, null, false);
	
//		Fade("coilphone2_��/coilphone2_��/�l��*", 0, 0, null, false);
//		Fade("coilphone2_��/coilphone2_��/�g*", 0, 0, null, false);
//		Fade("coilphone2_��/coilphone2_��/�f�t�H*", 0, 0, null, false);
//		Fade("coilphone2_��/coilphone2_��/�ʘb*", 0, 0, null, false);
//		Fade("coilphone2_��/coilphone2_��/��/*", 0, 0, null, false);
//		Fade("coilphone2_��/coilphone2_��/�G���[", 0, 1000, null, true);

		Fade("coilphone2_��/coilphone2_call_���*", 0, 0, null, false);
		Fade("coilphone2_��/���M*", 0, 0, null, false);
		if($coilphone2Error){
			Fade("coilphone2_��/���M�J�n", 0, 1000, null, false);//�G���[�������
			$coilphone2Error=false;
		}
		Fade("coilphone2_��/coilphone2_��/*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/*/*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/�G���[", 0, 1000, null, false);

		Request("coilphone2_error_�_�E�����[�h�v���Z�X", Start);
	}

}


function CoilError2Pro1(){
	while(1){
		Fade("@coilphone2_��/coilphone2_��/�G���[�Q", 1000, 400, null, true);
		Fade("@coilphone2_��/coilphone2_��/�G���[�Q", 1000, 0, null, true);
	}
}



..���m�C�Y
function CoilBug2Set(){

	CreateTexture("coilphone2_��/coilphone2_��/�m�C�Y�P", 11000, 0, 0, "cg/data/noize_01_00_0.png");
	SetAlias("coilphone2_��/coilphone2_��/�m�C�Y�P", "coilphone2_��/coilphone2_��/�m�C�Y�P");
	Request("coilphone2_��/coilphone2_��/�m�C�Y�P", OverlayRender);
	SetTone("coilphone2_��/coilphone2_��/�m�C�Y�P", Monochrome);

	CreateTexture("coilphone2_��/coilphone2_��/�m�C�Y�Q", 11000, 0, 0, "cg/data/noize_01_00_0.png");
	SetAlias("coilphone2_��/coilphone2_��/�m�C�Y�Q", "coilphone2_��/coilphone2_��/�m�C�Y�Q");
	Request("coilphone2_��/coilphone2_��/�m�C�Y�Q", OverlayRender);
	SetTone("coilphone2_��/coilphone2_��/�m�C�Y�Q", Monochrome);


	Zoom("@coilphone2_��/coilphone2_��/�m�C�Y�P", 0, 1500, 1500, null, false);
	Zoom("@coilphone2_��/coilphone2_��/�m�C�Y�Q", 0, 1500, 1500, null, false);

	Rotate("coilphone2_��/coilphone2_��/�m�C�Y�Q", 0, @180, @0, @0, null, true);
	Fade("coilphone2_��/coilphone2_��/�m�C�Y*", 0, 0, null, true);

	CreateProcess("coilphone2_bug_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilBug2Pro");
	SetAlias("coilphone2_bug_�_�E�����[�h�v���Z�X", "coilphone2_bug_�_�E�����[�h�v���Z�X");

	$CoilBug2Fade=300;
}

function CoilBug2Fade(){
	Move("@coilphone2_��/coilphone2_��/�m�C�Y*", 0, 0, 0, null, true);
	Request("coilphone2_bug_�_�E�����[�h�v���Z�X", Start);
}

function CoilBug2Pro(){

	$CoilBug2Time=100;
	$CoilBug2Wait=50;

	while(1){

		Move("@coilphone2_��/coilphone2_��/�m�C�Y�P", 0, 50, 0, null, false);
		Move("@coilphone2_��/coilphone2_��/�m�C�Y�Q", 0, -50, 0, null, false);

		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�Q", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�P", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�P", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�Q", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);

		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�Q", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�P", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�P", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�Q", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);

//		$CoilBug2Temp=Random(3);
//		Wait($CoilBug2Temp);

		Move("@coilphone2_��/coilphone2_��/�m�C�Y�P", 0, -50, 0, null, false);
		Move("@coilphone2_��/coilphone2_��/�m�C�Y�Q", 0, 50, 0, null, false);

		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�Q", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�P", $CoilBug2Time, $CoilBug2Fade, null, true);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�P", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�Q", $CoilBug2Time, $CoilBug2Fade, null, true);

		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�Q", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�P", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�P", $CoilBug2Time, 0, null, false);
		Fade("@coilphone2_��/coilphone2_��/�m�C�Y�Q", $CoilBug2Time, $CoilBug2Fade, null, $CoilBug2Wait);

//		$CoilBug2Temp=Random(3);
//		Wait($CoilBug2Temp);
	}

}























.���d�b�Q�w���M�����Z�b�g�x
..�������ꗗ�Z�b�g�i10600�j
function CoilPhone2_RaceSet($coilphone2X, $coilphone2Y){
//382
//103
	$CoilRece2Now=$CoilRece2Count;

	if(!$CoilPhone2){
		CoilPhone2Base();
	}else{
		Position("coilphone2_��",$coilphone2X,$coilphone2Y);
	}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	CreateProcess("coilphone2_rece_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilRace2Pro");
	SetAlias("coilphone2_rece_�_�E�����[�h�v���Z�X", "coilphone2_rece_�_�E�����[�h�v���Z�X");


	$coilphone2_receX7=$coilphone2X+10;
	$coilphone2_receY7=$coilphone2Y+300;
	CreateTexture("coilphone2_��/coilphone2_��/coilphone2_rece_�I��", 10600, $coilphone2_receX7, $coilphone2_receY7, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�I��_�Z���N�g.png");//10010
	SetAlias("coilphone2_��/coilphone2_��/coilphone2_rece_�I��", "coilphone2_rece_�I��");
	Request("coilphone2_��/coilphone2_��/coilphone2_rece_�I��", AddRender);
	Fade("coilphone2_��/coilphone2_��/coilphone2_rece_�I��", 0, 0, null, true);


	$CoilPreX=$coilphone2X;
	$CoilPreY=$coilphone2Y;

	$CoilTemp=$CoilRece2Count;
	while(0<$CoilTemp){

		//���������Ⴂ���Ȃ����C��
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+57;
		$coiltempnut="coilphone2_��/coilphone2_��/�`�F�b�N"+$CoilTemp;
		if(VariableValue($,"CoilRece2�ʘb"+$CoilTemp)){
			CreateTexture($coiltempnut, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�ʘb�L��.png");//10090
		}else{
			CreateTexture($coiltempnut, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�ʘb����.png");//10090
		}
		SetAlias($coiltempnut, $coiltempnut);

		//�����
		$coiltempX=$CoilPreX+228;
		$coiltempY=$CoilPreY+64;
		$coiltempnut="coilphone2_��/coilphone2_��/���"+$CoilTemp;
		CreateTexture($coiltempnut, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�A�C�R��.png");//10090
		SetAlias($coiltempnut, $coiltempnut);
		Request($coiltempnut, AddRender);

		//���l��
		SetFont("�l�r �S�V�b�N", 20, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut2="coilphone2_��/coilphone2_��/�e�L�X�g��"+$CoilTemp;
		CreateWindow($coiltempnut2, 10601, $coiltempX, $coiltempY, 156, 45, false);//10090//163,45
		SetAlias($coiltempnut2, $coiltempnut2);

		$coiltempnut=$coiltempnut2+"/�l��"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece2�l��"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilRece2�l��"+$CoilTemp));
		CreateText($coiltempnut, 10601, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut, $coiltempnut);
		Request($coiltempnut, NoLog);

/*
		SetFont("�l�r �S�V�b�N", 20, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut="coilphone2_��/coilphone2_��/�l��"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece2�l��"+$CoilTemp);
		CreateText($coiltempnut, 10601, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut, $coiltempnut);
*/

		$CoilPreY+=43;
		$CoilTemp--;
	}
	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilphone2_��/coilphone2_��/*", PushText);
	Request("coilphone2_��/coilphone2_��/*/*", PushText);


	$coilphone2X5=$coilphone2X+25;
	$coilphone2X6=$coilphone2X+12;
	$coilphone2Y6=$coilphone2Y+56;
	CreateWindow("coilphone2_��/coilphone2_rece_��", 20000, $coilphone2X6, $coilphone2Y6, 263, 233, false);
	SetAlias("coilphone2_��/coilphone2_rece_��", "coilphone2_rece_��");

	CreateColor("coilphone2_��/coilphone2_rece_��/���o�F�P", 10602, $coilphone2X5, $coilphone2Y6, 72, 300, "41a4ae");//41a4ae//72,32
	SetAlias("coilphone2_��/coilphone2_rece_��/���o�F�P", "coilphone2_rece_���o�F�P");
	Request("coilphone2_��/coilphone2_rece_��/���o�F�P", AddRender);
	Fade("@coilphone2_rece_���o�F�P", 0, 150, null, false);


	//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//����
	if(!$CoilPhone2){
		Move("coilphone2_��/*", 0, @0, @-375, null, false);
		Move("coilphone2_��/*/*", 0, @0, @-375, null, false);
		Move("coilphone2_��/*/*/*", 0, @0, @-375, null, true);
	
		Zoom("coilphone2_��/coilphone2_��", 0, 0, 1000, null, false);
		Move("coilphone2_��/coilphone2_��", 0, @0, @-100, null, false);
		Move("coilphone2_��/coilphone2_��/*", 0, @0, @-100, null, false);
		Move("coilphone2_��/coilphone2_��/*/*", 0, @-300, @-100, null, true);
	
		Zoom("@coilphone2_���M�I��", 0, 0, 0, Dxl1, false);
		Zoom("@coilphone2_���M�J�n", 0, 0, 0, Dxl1, false);

		Fade("@coilphone2_���M�J�n", 0, 0, null, true);
		Fade("@coilphone2_���M�I��", 0, 0, null, true);
		Fade("@coilphone2_���M�v��*", 0, 0, null, true);
	
		Fade("@coilphone2_�x�[�X�R", 0, 0, null, false);
		Fade("coilphone2_��/�x�[�X", 0, 750, null, true);
	
		SetVertex("@coilphone2_�x�[�X", 143, 0);
		Zoom("@coilphone2_�x�[�X", 0, 1200, 1000, null, true);//��������������
		Fade("@coilphone2_�x�[�X", 0, 0, null, true);

	}else{
		Fade("coilphone2_��/coilphone2_��/coilphone2_rece_�I��", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_rece_��/���o�F�P", 0, 0, null, false);

		Fade("coilphone2_��/coilphone2_��/�`�F�b�N*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/���*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/�e�L�X�g��*/�l��*", 0, 0, null, false);


//		Move("coilphone2_��", 0, @0, @0, null, false);
//		Move("coilphone2_��/�x�[�X", 0, @0, @0, null, false);
//		Move("coilphone2_��/�x�[�X�Q", 0, @0, @0, null, false);
//		Move("coilphone2_��/��", 0, @0, @0, null, false);
//		Move("coilphone2_��/�}�X�N�Q", 0, @0, @0, null, false);
//		Move("coilphone2_��/�}�X�N�Q/�x�[�X�R", 0, @0, @0, null, false);
	
//		Move("coilphone2_���o", 0, @0, @0, null, false);
//		Move("coilphone2_����", 0, @0, @0, null, false);
//		Move("coilphone2_��/���M�J�n", 0, @0, @0, null, false);
//		Move("coilphone2_��/���M�v���J�n", 0, @0, @0, null, false);
//		Move("coilphone2_��/���M�I��", 0, @0, @0, null, false);
//		Move("coilphone2_��/���M�v���I��", 0, @0, @0, null, false);
	
//		Move("coilphone2_��/coilphone2_��", 0, @0, @0, null, false);

	}

	CreateSE("coilsound2_phone14","se����_�R�C��_�V�X�e�����X�g�W�J");

	$CoilPhone2=true;
}


..�������ꗗ�\��
function CoilPhone2_RaceFade(){

	if(!$coilphone2ON){
	//���x�[�X���Ȃ������ꍇ�i�ʏ퉉�o�j
		MusicStart("coilsound2_phone1",0,700,0,1000,null,false);

		Zoom("@coilphone2_�x�[�X", 600, 1000, 1000, Dxl1, false);
	
	//	Fade("coilphone2_���o", 0, 350, null, false);
	//	Zoom("coilphone2_���o", 200, 1500, 200, null, false);
	
	//	Fade("coilphone2_��/�x�[�X�Q", 300, 500, null, false);
	//	Fade("coilphone2_��/�x�[�X", 300, 1000, null, false);
	//	Move("coilphone2_��/*/*", 300, @0, @36, Dxl1, false);
	//	Move("coilphone2_��/*", 300, @0, @36, Dxl1, true);
	
		Fade("coilphone2_���o", 0, 350, null, false);
		Zoom("coilphone2_���o", 150, 1500, 200, null, false);
	
		Fade("coilphone2_��/�x�[�X�Q", 200, 500, null, false);
	//	Fade("coilphone2_��/�x�[�X", 200, 1000, null, false);
		Move("coilphone2_��/*/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_��/*/*", 200, @0, @36, Dxl1, false);
		Move("coilphone2_��/*", 200, @0, @36, Dxl1, true);
	
	
	//	WaitKey();
		$coilphone2ON=true;
		CoilBlack();
	
		Fade("@coilphone2_���M�v���J�n", 0, 1000, null, false);
		Fade("coilphone2_���o", 0, 1000, null, true);
	
		Fade("coilphone2_��/�x�[�X", 200, 1000, null, false);
		Fade("coilphone2_��/�x�[�X�Q", 200, 0, null, false);
		Fade("@coilphone2_�x�[�X�R", 200, 1000, null, false);
	
		Fade("coilphone2_���o", 500, 0, Axl2, false);
		Zoom("coilphone2_���o", 200, 1000, 1000, null, false);
	
		Move("coilphone2_��/*/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_��/*/*", 500, @0, @339, Dxl1, false);
		Move("coilphone2_��/*", 500, @0, @339, Dxl1, false);
	
		Fade("@coilphone2_���M�v���J�n", 300, 0, null, false);
		Fade("@coilphone2_���M�J�n", 400, 1000, null, false);
		Zoom("@coilphone2_���M�I��", 400, 1000, 1000, Dxl1, false);
		Zoom("@coilphone2_���M�J�n", 400, 1000, 1000, Dxl1, false);


		Fade("@coilphone2_rece_���o�F�P", 400, 0, Axl1, false);
		Zoom("@coilphone2_rece_���o�F�P", 500, 4000, 1000, Dxl1, false);
	

		Move("coilphone2_��/�}�X�N�Q", 500, @0, @-373, null, false);
		Zoom("@coilphone2_�x�[�X�R", 500, 1000, 1200, Axl1, false);
	
		Zoom("coilphone2_��/coilphone2_��", 400, 1000, 1000, null, false);
	
		Move("coilphone2_��/coilphone2_��", 500, @0, @439, Dxl1, false);
		Move("coilphone2_��/coilphone2_��/*", 500, @0, @439, Dxl1, false);
		Move("coilphone2_��/coilphone2_��/*/*", 500, @300, @439, Dxl1, false);
	
		Request("coilphone2_rece_�_�E�����[�h�v���Z�X", Start);
		Request("coilphone2_�_�E�����[�h�v���Z�X", Start);

	}else{
	//���x�[�X���������ꍇ�i�u�����o�j
		Request("coilphone2_*", Stop);
		//Request("@coilphone2_��/coilphone2_��/�\��*", Erase);

		Position("coilphone2_��",$X���W�l��,$Y���W�l��);
		$X���W�l=$X���W�l��+21;
		$Y���W�l=$Y���W�l��+57;

		$coiltempnut="coilphone2_��/coilphone2_��/�`�F�b�N"+$CoilRece2Count;
		Position($coiltempnut,$X���W�l2,$Y���W�l2);

		$X�ړ����W�l=$X���W�l-$X���W�l2;
		$Y�ړ����W�l=$Y���W�l-$Y���W�l2;
		Move("coilphone2_��/coilphone2_��/�`�F�b�N*", 0, @$X�ړ����W�l, @$Y�ړ����W�l, null, false);
		Move("coilphone2_��/coilphone2_��/���*", 0, @$X�ړ����W�l, @$Y�ړ����W�l, null, false);
		Move("coilphone2_��/coilphone2_��/�e�L�X�g��*", 0, @$X�ړ����W�l, @$Y�ړ����W�l, null, false);
		Move("coilphone2_��/coilphone2_��/�e�L�X�g��*/�l��*", 0, @$X�ړ����W�l, @$Y�ړ����W�l, null, false);

		$X���W�l3=$X���W�l��+25;
		$X���W�l4=$X���W�l��+12;
		$Y���W�l4=$Y���W�l��+56;
		Move("coilphone2_��/coilphone2_rece_��", 0, $X���W�l4, $Y���W�l4, null, false);
		Move("coilphone2_��/coilphone2_rece_��/���o�F�P", 0, $X���W�l3, $Y���W�l4, null, false);

		$X���W�l5=$X���W�l��+10;
		$Y���W�l5=$Y���W�l��+300;
		Move("coilphone2_��/coilphone2_��/coilphone2_rece_�I��", 0, $X���W�l5, $Y���W�l5, null, false);

		$X���W�l6=$X���W�l��+25;
		$Y���W�l6=$Y���W�l��+294;
		Move("coilphone2_��/���M*", 0, $X���W�l6, $Y���W�l6, null, false);


		MusicStart("coilsound2_phone14",0,700,0,1000,null,false);


		Fade("coilphone2_��/coilphone2_call_��/���o�F�P", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_call_��/���o�F�Q", 0, 0, null, false);

		Fade("coilphone2_��/coilphone2_call_���*", 0, 0, null, false);
		Fade("coilphone2_��/���M*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/*", 0, 0, null, false);
		Fade("coilphone2_��/coilphone2_��/*/*", 0, 0, null, false);

		Fade("coilphone2_��/���M�J�n", 0, 1000, null, false);

		Fade("coilphone2_��/coilphone2_��/�`�F�b�N*", 0, 1000, null, false);
		Fade("coilphone2_��/coilphone2_��/���*", 0, 1000, null, false);
		Fade("coilphone2_��/coilphone2_��/�e�L�X�g��*/�l��*", 0, 1000, null, false);

		Request("coilphone2_rece_�_�E�����[�h�v���Z�X", Start);
		Request("coilphone2_�_�E�����[�h�v���Z�X", Start);

	}

}


..���������A���^�C���ǉ�
function CoilRece2Add2($CoilRece2�ԍ�,$CoilRece2�l��,$CoilRece2�ʘb){

	$TempCoilRece2=1;
	while($CoilRece2Count>=$TempCoilRece2){
		if(VariableValue($,"CoilRece2�ԍ�"+$TempCoilRece2)==$CoilRece2�ԍ�){
			return;
		}
		$TempCoilRece2++;
	}

	WaitAction("@coilphone2_�x�[�X�R", null);
//	WaitAction("@coilphone2_�x�[�X", null);

	$CoilRece2Count++;

	VariableValue($,$CoilRece2�ԍ�+"_num",$CoilRece2Count);
//
	VariableValue($,$CoilRece2�ԍ�+"_�l��",$CoilRece2�l��);
	VariableValue($,$CoilRece2�ԍ�+"_�ʘb",$CoilRece2�ʘb);
//
	VariableValue($,"CoilRece2�l��"+$CoilRece2Count,$CoilRece2�l��);
	VariableValue($,"CoilRece2�ʘb"+$CoilRece2Count,$CoilRece2�ʘb);
	VariableValue($,"CoilRece2�ԍ�"+$CoilRece2Count,$CoilRece2�ԍ�);


	$CoilTemp=$CoilRece2Count;

	Position("@coilphone2_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�-43;

		//���������Ⴂ���Ȃ����C��
		$coiltempX=$CoilPreX+21;
		$coiltempY=$CoilPreY+57;
		$coiltempnut1="coilphone2_��/coilphone2_��/�`�F�b�N"+$CoilTemp;
		if(VariableValue($,"CoilRece2�ʘb"+$CoilTemp)){
			CreateTexture($coiltempnut1, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�ʘb�L��.png");//10090
		}else{
			CreateTexture($coiltempnut1, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�ʘb����.png");//10090
		}
		SetAlias($coiltempnut1, $coiltempnut1);

		//�����
		$coiltempX=$CoilPreX+228;
		$coiltempY=$CoilPreY+64;
		$coiltempnut3="coilphone2_��/coilphone2_��/���"+$CoilTemp;
		CreateTexture($coiltempnut3, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/�R�C���d�b�ꗗ_�A�C�R��.png");//10090
		SetAlias($coiltempnut3, $coiltempnut3);
		Request($coiltempnut3, AddRender);
		Request($coiltempnut3, Erase);

		//���l��
		SetFont("�l�r �S�V�b�N", 20, FFFFFF, 000000, MEDIUM, NULL);
//		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
$SYSTEM_text_margin_column=0;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnutW="coilphone2_��/coilphone2_��/�e�L�X�g��"+$CoilTemp;
		CreateWindow($coiltempnutW, 10601, $coiltempX, $coiltempY, 163, 45, false);//10090
		SetAlias($coiltempnutW, $coiltempnutW);

		$coiltempnut2=$coiltempnutW+"/�l��"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece2�l��"+$CoilTemp);
		$temp=String("<SPAN size=-1>%s</SPAN>",VariableValue($,"CoilRece2�l��"+$CoilTemp));
		CreateText($coiltempnut2, 10601, $coiltempX, $coiltempY, Auto, Auto, $temp);//10090
		SetAlias($coiltempnut2, $coiltempnut2);
		Request($coiltempnut2, NoLog);

/*
		SetFont("�l�r �S�V�b�N", 20, FFFFFF, 000000, MEDIUM, NULL);
		$SYSTEM_text_margin_column=-3;//$SYSTEM_text_margin_row=$Save_text_margin_row;
		$coiltempX=$CoilPreX+68;
		$coiltempY=$CoilPreY+57;
		$coiltempnut2="coilphone2_��/coilphone2_��/�l��"+$CoilTemp;
		$coiltempimg=VariableValue($,"CoilRece2�l��"+$CoilTemp);
		CreateText($coiltempnut2, 10601, $coiltempX, $coiltempY, Auto, Auto, $coiltempimg);//10090
		SetAlias($coiltempnut2, $coiltempnut2);
*/

	//�����o
	$coiltempX=$CoilPreX+21-50;
	$coiltempY=$CoilPreY+56;
	$coiltempnut6="coilphone2_��/coilphone2_��/���o"+$CoilTemp;
	CreateTexture($coiltempnut6, 10601, $coiltempX, $coiltempY, "cg/sys/coil/phone/���[���V�K���o.png");//10090
	SetAlias($coiltempnut6, $coiltempnut6);
//	Request($coiltempnut6, AddRender);
//	Request($coiltempnut6, MulRender);
	Request($coiltempnut6, OverlayRender);
	Zoom($coiltempnut6, 0, 1500, 1000, null, false);


	$SYSTEM_text_margin_column=0;//$SYSTEM_text_margin_row=$Save_text_margin_row;

	Request("coilphone2_��/coilphone2_��/*", PushText);
	Request("coilphone2_��/coilphone2_��/*/*", PushText);


//	CreateProcess("coilphone2_rece_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilRace2Pro");
//	SetAlias("coilphone2_rece_�_�E�����[�h�v���Z�X", "coilphone2_rece_�_�E�����[�h�v���Z�X");

	CreateSE("coilsound2_phone15","se����_�R�C��_�V�X�e�����[���ǉ�");
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

		Move("coilphone2_��/coilphone2_��/*", 200, @0, @43, Dxl1, false);
		Move("coilphone2_��/coilphone2_��/*/*", 200, @0, @43, Dxl1, true);

		$coilrace2Soon=false;
	}else if($CoilRece2Now==($CoilRece2Count-1)){
		Fade($coiltempnut1, 0, 0, null, true);
		Fade($coiltempnut2, 0, 0, null, true);
		Fade($coiltempnut3, 0, 0, null, true);

		Move("coilphone2_��/coilphone2_��/*", 150, @0, @43, Dxl1, false);
		Move("coilphone2_��/coilphone2_��/*/*", 150, @0, @43, Dxl1, true);
	
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

//	Request("coilphone2_rece_�_�E�����[�h�v���Z�X", Start);
}

function CoilRace2Pro(){
	while(1){
		Fade("@coilphone2_��/coilphone2_��/���*", 800, 700, null, true);
		Fade("@coilphone2_��/coilphone2_��/���*", 1200, 0, null, true);
		Wait(400);
		Fade("@coilphone2_��/coilphone2_��/���*", 800, 700, null, true);
		Fade("@coilphone2_��/coilphone2_��/���*", 1200, 0, null, true);
		Wait(400);
	}
}

function CoilRace2Pro_Call(){
	while(1){
		Fade("@coilphone2_���M�v���J�n", 400, 700, null, true);
		Fade("@coilphone2_���M�v���J�n", 800, 0, null, true);
		Wait(200);
		Fade("@coilphone2_���M�v���J�n", 400, 700, null, true);
		Fade("@coilphone2_���M�v���J�n", 800, 0, null, true);
		Wait(200);
	}
}




..�������ꗗ�ړ�
function CoilRace2Move($CoilRece2�ԍ�,$CoilRace2Time){

	WaitAction("@coilphone2_�x�[�X�R", null);
//	WaitAction("@coilphone2_�x�[�X", null);

	Position("@coilphone2_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilphone2_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilphone2_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilphone2_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);

	$CoilRece2New=VariableValue($,$CoilRece2�ԍ�+"_num");
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

	Position("@coilphone2_��",$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX=$X���W�l�i�[�ϐ�;
	$CoilPreY=$Y���W�l�i�[�ϐ�;

	Fade("@coilphone2_�x�[�X�R", 0, 0, null, false);
	Zoom("@coilphone2_�x�[�X�R", 0, 1000, 1000, Dxl2, true);
	Move("coilphone2_��/�}�X�N�Q", 0, $CoilPreX, $CoilPreY, null, true);


	$CoilRece2New=$CoilRece2Count-($CoilRace2Num-1);//�ǂ̔ԍ��H
	$CoilRece2New2=$CoilRece2New;


	CoilRace2MoveMacro();
}

function CoilRace2MoveMacro(){
	$CoilRece2Temp=$CoilRece2Now-$CoilRece2New;
	$CoilRece2Move=(-$CoilRece2Temp)*43;
	$CoilRace2Time2=$CoilRace2Time/2;
	$CoilRace2Time3=$CoilRace2Time/5*2;
	$CoilRace2Time4=$CoilRace2Time/5*3;

	$coiltempnut="coilphone2_��/coilphone2_��/�`�F�b�N"+$CoilRece2New2;
	Position($coiltempnut,$X���W�l�i�[�ϐ�,$Y���W�l�i�[�ϐ�);
	$CoilPreX2=$X���W�l�i�[�ϐ�;
	$CoilPreY2=$Y���W�l�i�[�ϐ�;
	$CoilPreY2+=$CoilRece2Move;

	CreateSE("coilsound2_phone22","se����_�R�C��_�V�X�e�����[���ړ�");
	MusicStart("coilsound2_phone22",0,700,0,1000,null,false);

	if($CoilRece2Move==0){
		Move("coilphone2_��/coilphone2_��/*", $CoilRace2Time, @0, @$CoilRece2Move, Dxl1, false);
		Move("coilphone2_��/coilphone2_��/*/*", $CoilRace2Time, @0, @$CoilRece2Move, Dxl1, false);
		Move("@coilphone2_rece_�I��", $CoilRace2Time, $CoilPreX2, $CoilPreY2, Dxl1, false);

		Zoom("@coilphone2_rece_�I��", $CoilRace2Time4, 1200, 1200, Dxl1, false);
		Fade("@coilphone2_rece_�I��", $CoilRace2Time4, 100, null, true);

		Zoom("@coilphone2_rece_�I��", $CoilRace2Time3, 1000, 1000, Dxl1, false);
		Fade("@coilphone2_rece_�I��", $CoilRace2Time3, 500, Axl1, true);

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


		//�Y�[��
		$CoilRece2Zoom=2000*$CoilRece2Temp;
		if($CoilRece2Zoom<0){$CoilRece2Zoom=-$CoilRece2Zoom;}
		if($CoilRece2Zoom>8000){
			$CoilRece2Zoom=8000;
		}

//		$CoilRece2Zoom=8000;

		Fade("@coilphone2_rece_�I��", $CoilRace2Time3, 0, null, false);///////////100

		Move("coilphone2_��/coilphone2_��/*", $CoilRace2Time4, @0, @$CoilRece2Move3, Axl1, false);
		Move("coilphone2_��/coilphone2_��/*/*", $CoilRace2Time4, @0, @$CoilRece2Move3, Axl1, false);

		Zoom("@coilphone2_rece_�I��", $CoilRace2Time3, 1200, $CoilRece2Zoom, Dxl1, false);
//		Move("@coilphone2_rece_�I��", $CoilRace2Time3, $CoilPreX2, $CoilRece2Move2, Dxl3, false);
		Move("@coilphone2_rece_�I��", $CoilRace2Time4, $CoilPreX2, $CoilPreY2, Dxl1, false);

		WaitAction("coilphone2_��/coilphone2_��/*/*", null);


		Move("coilphone2_��/coilphone2_��/*", $CoilRace2Time3, @0, @$CoilRece2Move4, Dxl2, false);
		Move("coilphone2_��/coilphone2_��/*/*", $CoilRace2Time3, @0, @$CoilRece2Move4, Dxl2, false);
	
		Zoom("@coilphone2_rece_�I��", $CoilRace2Time3, 1000, 1000, Dxl1, false);
//		Move("@coilphone2_rece_�I��", $CoilRace2Time3, $CoilPreX2, $CoilPreY2, Axl1, false);
		Move("@coilphone2_rece_�I��", 0, $CoilPreX2, $CoilPreY2, Dxl1, false);
		Fade("@coilphone2_rece_�I��", $CoilRace2Time3, 500, Axl1, true);
	}

	$CoilRece2Now=$CoilRece2New;
}











.���m�C�Y�R�C��
..����{�Z�b�g
function CoilNoizeSet(){
	$coildownpriON=true;//CoilDownSetPri�p

	CreateWindow("coilnoize_��", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_��", "coilnoize_��");

	CreateColor("coilnoize_��/�w�i�F", 10000, 170, 20, 684, 429, "BLACK");
	SetAlias("coilnoize_��/�w�i�F", "coilnoize_��/�w�i�F");
	Fade("coilnoize_��/�w�i�F", 0, 500, null, true);

	CreateWindow("coilnoize_��/�n�}���P", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_��/�n�}���P", "coilnoize_��/�n�}���P");
	CreateTexture("coilnoize_��/�n�}���P/�n�}", 10000, Center, Middle, "cg/ef/ef�}�b�v�{��_�m�C�Y_�n�}.png");
	SetAlias("coilnoize_��/�n�}���P/�n�}", "coilnoize_��/�n�}���P/�n�}");
	Request("coilnoize_��/�n�}���P/�n�}", Smoothing);

	CreateWindow("coilnoize_��/�n�}���Q", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_��/�n�}���Q", "coilnoize_��/�n�}���Q");
	CreateTexture("coilnoize_��/�n�}���Q/�n�}", 10000, Center, Middle, "cg/ef/ef�}�b�v�{��_�m�C�Y_�n�}.png");
	SetAlias("coilnoize_��/�n�}���Q/�n�}", "coilnoize_��/�n�}���Q/�n�}");
	Request("coilnoize_��/�n�}���Q/�n�}", Smoothing);

	CreateWindow("coilnoize_��/�n�}���R", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_��/�n�}���R", "coilnoize_��/�n�}���R");
	CreateTexture("coilnoize_��/�n�}���R/�O���b�h", 10000, Center, Middle, "cg/ef/ef�}�b�v�{��_�m�C�Y_�O���b�h.png");
	SetAlias("coilnoize_��/�n�}���R/�O���b�h", "coilnoize_��/�n�}���R/�O���b�h");
	Request("coilnoize_��/�n�}���R/�O���b�h", Smoothing);

	Move("coilnoize_��/�n�}��*/�n�}", 0, @0, @-53.5, Axl1, true);
	Move("coilnoize_��/�n�}��*/�O���b�h", 0, @0, @-53.5, Axl1, true);


//	Request("coilnoize_��/�n�}���Q/�n�}", AddRender);
//	SetShade("coilnoize_��/�n�}���Q/�n�}", MEDIUM);


	CreateTexture("coilnoize_��/�n�}�g", 10009, 166, 20, "cg/sys/coil/noize/�n�}�g.png");
	SetAlias("coilnoize_��/�n�}�g", "coilnoize_��/�n�}�g");
	CreateTexture("coilnoize_��/���", 10009, Center, Middle, "cg/ef/ef�}�b�v�{��_�m�C�Y_�}�[�J�[.png");
	SetAlias("coilnoize_��/���", "coilnoize_��/���");
//	Request("coilnoize_��/���", OverlayRender);
	Request("coilnoize_��/���", AddRender);

	//=============================================================
	CreateTexture("coilnoize_��/�΃o�[", 10015, 166, 15, "cg/sys/coil/noize/�΃o�[.png");
	SetAlias("coilnoize_��/�΃o�|", "coilnoize_��/�΃o�|");
	CreateTexture("coilnoize_��/�΃{�b�N�X���P", 10016, 242, 24, "cg/sys/coil/noize/�{�b�N�X1.png");
	SetAlias("coilnoize_��/�΃{�b�N�X���P", "coilnoize_��/�΃{�b�N�X���P");
	CreateTexture("coilnoize_��/�΃{�b�N�X���P", 10016, 242, 24, "cg/sys/coil/noize/�{�b�N�X1_txt.png");
	SetAlias("coilnoize_��/�΃{�b�N�X���P", "coilnoize_��/�΃{�b�N�X���P");
	CreateTexture("coilnoize_��/�΃{�b�N�X���Q", 10016, 332, 24, "cg/sys/coil/noize/�{�b�N�X2.png");
	SetAlias("coilnoize_��/�΃{�b�N�X���Q", "coilnoize_��/�΃{�b�N�X���Q");
	CreateTexture("coilnoize_��/�΃{�b�N�X���Q", 10016, 332, 24, "cg/sys/coil/noize/�{�b�N�X2_txt.png");
	SetAlias("coilnoize_��/�΃{�b�N�X���Q", "coilnoize_��/�΃{�b�N�X���Q");


	//=============================================================
	CreateMask("coilnoize_��/���}�X�N", 200, 166, 15, "cg/sys/coil/noize/���o�[�}�X�N.png", false);
	SetAlias("coilnoize_��/���}�X�N", "coilnoize_��/���}�X�N");

	CreateTexture("coilnoize_��/���}�X�N/���o�|", 10000, 170, 25, "cg/sys/coil/noize/���o�|.png");
	SetAlias("coilnoize_��/���}�X�N/���o�|", "coilnoize_��/���}�X�N/���o�|");
	CreateTexture("coilnoize_��/���}�X�N/���t���[���P", 10001, 449, 41, "cg/sys/coil/noize/�t���[��01.png");
	SetAlias("coilnoize_��/���}�X�N/���t���[���P", "coilnoize_��/���}�X�N/���t���[���P");
	CreateTexture("coilnoize_��/���}�X�N/���t���[���Q", 10001, 481, 41, "cg/sys/coil/noize/�t���[��02.png");
	SetAlias("coilnoize_��/���}�X�N/���t���[���Q", "coilnoize_��/���}�X�N/���t���[���Q");
	CreateTexture("coilnoize_��/���}�X�N/���t���[���R", 10001, 513, 41, "cg/sys/coil/noize/�t���[��03.png");
	SetAlias("coilnoize_��/���}�X�N/���t���[���R", "coilnoize_��/���}�X�N/���t���[���R");
	CreateTexture("coilnoize_��/���}�X�N/���t���[���S", 10001, 545, 41, "cg/sys/coil/noize/�t���[��04.png");
	SetAlias("coilnoize_��/���}�X�N/���t���[���S", "coilnoize_��/���}�X�N/���t���[���S");

	CreateTexture("coilnoize_��/���}�X�N/���{�b�N�X��", 10001, 292, 42, "cg/sys/coil/noize/�{�b�N�X3.png");
	SetAlias("coilnoize_��/���}�X�N/���{�b�N�X��", "coilnoize_��/���}�X�N/���{�b�N�X��");
	CreateTexture("coilnoize_��/���}�X�N/���{�b�N�X��", 10001, 266, 42, "cg/sys/coil/noize/�{�b�N�X3_txt.png");
	SetAlias("coilnoize_��/���}�X�N/���{�b�N�X��", "coilnoize_��/���}�X�N/���{�b�N�X��");

	CreateTexture("coilnoize_��/���}�X�N/���O�p�P", 10001, 460, 39, "cg/sys/coil/noize/���O�p.png");
	SetAlias("coilnoize_��/���}�X�N/���O�p�P", "coilnoize_��/���}�X�N/���O�p�P");
	CreateTexture("coilnoize_��/���}�X�N/���O�p�Q", 10001, 492, 39, "cg/sys/coil/noize/���O�p.png");
	SetAlias("coilnoize_��/���}�X�N/���O�p�Q", "coilnoize_��/���}�X�N/���O�p�Q");
	CreateTexture("coilnoize_��/���}�X�N/���O�p�R", 10001, 524, 39, "cg/sys/coil/noize/���O�p.png");
	SetAlias("coilnoize_��/���}�X�N/���O�p�R", "coilnoize_��/���}�X�N/���O�p�R");
	CreateTexture("coilnoize_��/���}�X�N/���O�p�S", 10001, 556, 39, "cg/sys/coil/noize/���O�p.png");
	SetAlias("coilnoize_��/���}�X�N/���O�p�S", "coilnoize_��/���}�X�N/���O�p�S");

	CreateWindow("coilnoize_��/���}�X�N/����", 10001, 292, 42, 53, 6, false);
	SetAlias("coilnoize_��/���}�X�N/����", "coilnoize_��/���}�X�N/����");

	CreateColor("coilnoize_��/���}�X�N/����/�F", 10010, 292, 42, 53, 6, "24ff24");
	SetAlias("coilnoize_��/���}�X�N/����/�F", "coilnoize_��/���}�X�N/����/�F");
	Request("coilnoize_��/���}�X�N/����/�F", AddRender);
	Move("coilnoize_��/���}�X�N/����/�F", 0, @-56, @0, null, true);


	CreateProcess("coilnoize_�_�E�����[�h�v���Z�X", 150, 0, 0, "CoilNoizePro");
	SetAlias("coilnoize_�_�E�����[�h�v���Z�X", "coilnoize_�_�E�����[�h�v���Z�X");


	CreateColor("coilnoize_��/���o�F�P", 10000, 0, 0, 1024, 576, "24ff24");
	SetAlias("coilnoize_��/���o�F�P", "coilnoize_��/���o�F�P");
	Request("coilnoize_��/���o�F�P", AddRender);
	CreateColor("coilnoize_��/���o�F�Q", 10010, 0, 0, 1024, 576, "WHITE");
	SetAlias("coilnoize_��/���o�F�Q", "coilnoize_��/���o�F�Q");
	Request("coilnoize_��/���o�F�Q", AddRender);


	Fade("coilnoize_*", 0, 0, null, true);
	Fade("coilnoize_*/*", 0, 0, null, true);
	Fade("coilnoize_*/*/*", 0, 0, null, true);
	//=============================================================


//�E�T�M���o
	CreateTexture("coilnoize_�E�T�M���h�L�P", 10100, 1024, Middle, "cg/bu/buAM�E�T�M���h�L_�ʏ�_normal.png");
	SetAlias("coilnoize_�E�T�M���h�L�P", "coilnoize_�E�T�M���h�L�P");
	Rotate("coilnoize_�E�T�M���h�L�P", 0, @0, @-180, @0, null, true);
	CreateTexture("coilnoize_�E�T�M���h�L�Q", 10099, 1024, Middle, "cg/sys/coil/noize/usagi01.png");
	SetAlias("coilnoize_�E�T�M���h�L�Q", "coilnoize_�E�T�M���h�L�Q");
	Rotate("coilnoize_�E�T�M���h�L�Q", 0, @0, @-180, @0, null, true);
	Request("coilnoize_�E�T�M���h�L�Q", AddRender);
	Fade("coilnoize_�E�T�M���h�L�Q", 0, 0, null, true);

	CreateColor("coilnoize_�F�P", 10000, Center, 576, 100, 100, "24ff24");
	SetAlias("coilnoize_�F�P", "coilnoize_�F�P");
	Request("coilnoize_�F�P", AddRender);
	CreateColor("coilnoize_�F�Q", 10000, Center, 576, 100, 100, "WHITE");
	SetAlias("coilnoize_�F�Q", "coilnoize_�F�Q");
	Request("coilnoize_�F�Q", AddRender);



	CreateEffect("coilstart_��",9999,0,0,1024,576,"Plain");
	SetAlias("coilstart_��", "coilstart_��");
	Request("coilstart_��", Passive);
	SetShade("coilstart_��", MEDIUM);
	Fade("coilstart_��", 0, 0, null, false);

	CreateTexture("coilstart_�F�P", 9999, 0, 0, "cg/sys/coil/�R�C���o��_�m�C�Y.png");
	SetAlias("coilstart_�F�P", "coilstart_�F�P");
	Fade("coilstart_�F�P", 0, 0, null, false);
	Request("coilstart_�F�P", AddRender);

	CreateColor("coilstart_�F�Q", 9999, 0, 237, 1024, 50, "24ff24");//WHITE
	SetAlias("coilstart_�F�Q", "coilstart_�F�Q");
	Fade("coilstart_�F�Q", 0, 0, null, false);
	Request("coilstart_�F�Q", AddRender);

	CreateColor("coilstart_�F�R", 9999, 0, 237, 1024, 80, "24ff24");//WHITE
	SetAlias("coilstart_�F�R", "coilstart_�F�R");
	Fade("coilstart_�F�R", 0, 0, null, false);
	Request("coilstart_�F�R", AddRender);

	CreateColor("coilstart_�F�T", 9999, 0, 237, 1024, 10, "WHITE");//WHITE
	SetAlias("coilstart_�F�T", "coilstart_�F�T");
	Fade("coilstart_�F�T", 0, 0, null, false);
	Request("coilstart_�F�T", AddRender);

	CreateSE("coilsound_start","se����_�R�C��_�V�X�e���W�J");

	CreateSE("coilsound_noize01","se����_�R�C��_�V�X�e�����[���W�J");//se�[��_�R�~�J��_�|�C01
	CreateSE("coilsound_noize02","se����_�R�C��_�Q�[�W���܂�03L");
	CreateSE("coilsound_noize03","se����_�R�C��_�V�X�e�����[���V��");
	CreateSE("coilsound_noize04","se����_�R�C��_�V�X�e���W�J");

	CreateSE("coilsound_noize00","se����_�R�C��_�V�X�e���摜�W�J");


	//=============================================================
	Zoom("coilnoize_��", 0, 1000, 0, Dxl2, true);
	Fade("coilnoize_��/���o�F�P", 0, 300, null, true);

	Move("coilnoize_��/�w�i�F", 0, @0, @-576, Axl1, true);
	Move("coilnoize_��/�n�}�g", 0, @0, @-576, Axl1, true);


}



function CoilNoizeFade(){

	//�����֘A
	MusicStart("coilsound_noize01",0,700,0,1000,null,false);
	//�����֘A
	MusicStart("coilsound_noize02",1900,800,0,1000,Axl2,true);

//�E�T�M�W�J
	BezierMove("coilnoize_�E�T�M���h�L�P", 1800, (@0,@0){@-620,@0}{@-620,@0}(@-620,@500), DxlAxl, false);
	BezierMove("coilnoize_�E�T�M���h�L�Q", 1800, (@0,@0){@-620,@0}{@-620,@0}(@-620,@400), DxlAxl, false);
	Rotate("coilnoize_�E�T�M���h�L*", 2000, @0, @0, 1200, Axl2, false);
	Wait(1200);
	DrawTransition("coilnoize_�E�T�M���h�L�Q", 700, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Fade("coilnoize_�E�T�M���h�L�Q", 700, 1000, null, true);
//	WaitAction("coilnoize_�E�T�M���h�L*", null);

	//�����֘A
	MusicStart("coilsound_noize03",0,1200,0,1000,null,false);
	MusicStart("coilsound_noize02",300,0,0,500,null,false);

	MusicStart("coilsound_noize00",0,1000,0,1000,null,false);


	Fade("coilnoize_�F�Q", 0, 0, null, true);
	Zoom("coilnoize_�F*", 0, 3000, 20, Dxl1, true);

	DrawTransition("coilstart_�F�P", 1000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);

	Rotate("coilnoize_�F*", 450, @360, @0, @0, null, false);
	Move("coilnoize_�F*", 500, @0, @-390, Dxl1, false);
	Fade("coilnoize_�F�Q", 500, 500, null, false);

	Zoom("coilnoize_�F*", 300, 20, 3000, Dxl1, true);

	Fade("coilstart_��", 150, 500, null, false);
	Zoom("coilstart_��", 800, 1100, 1100, Dxl1, false);

	Zoom("coilnoize_�F*", 150, 6800, 20, Dxl1, true);

//	WaitKey();

	//�����֘A
	MusicStart("coilsound_start",0,700,0,700,null,false);
	MusicStart("coilsound_noize04",0,700,0,1000,null,false);

	Fade("coilstart_�F�P", 0, 300, null, false);
	Fade("coilstart_�F�Q", 0, 200, null, false);
	Fade("coilstart_�F�R", 0, 300, null, false);
	Fade("coilstart_�F�T", 0, 500, null, true);

	Fade("coilstart_��", 500, 0, null, false);

	Move("coilstart_�F�T", 500, @0, 576, null, false);
	Move("coilstart_�F�R", 400, @0, -100, null, false);
	Move("coilstart_�F�Q", 400, @0, -100, null, false);

	Fade("coilstart_�F�P", 500, 0, null, false);
	Fade("coilstart_�F�Q", 500, 0, null, false);
	Fade("coilstart_�F�R", 500, 0, null, false);
	Fade("coilstart_�F�T", 500, 0, null, false);

	Fade("coilnoize_�F*", 300, 0, null, false);
	Zoom("coilnoize_�F*", 500, 6800, 4200, Dxl2, false);

	DrawTransition("coilnoize_��/���o�F�P", 500, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Fade("coilnoize_��/���o�F�P", 500, 0, Axl2, false);
	Zoom("coilnoize_��", 500, 1000, 1000, Dxl2, false);

	Fade("coilnoize_��/��*", 0, 500, null, false);

//	WaitAction("coilnoize_��", null);

	Fade("coilnoize_��/�w�i�F", 0, 500, null, true);
	Fade("coilnoize_��/�n�}�g", 0, 500, null, true);

	Move("coilnoize_��/�w�i�F", 600, @0, @576, Dxl1, false);
	Move("coilnoize_��/�n�}�g", 600, @0, @576, Dxl1, false);

	Request("coilstart_��", Disused);
//	Request("coilstart_�F�P", Disused);
//	Request("coilstart_�F�Q", Disused);
//	Request("coilstart_�F�R", Disused);
//	Request("coilstart_�F�S", Disused);
//	Request("coilstart_�F�T", Disused);

	WaitAction("coilnoize_��/�n�}�g", null);
}


function CoilNoizeDO01(){

//	CreateSE("coilsound_start","se����_�R�C��_�V�X�e���W�J");
//	CreateSE("coilsound_noize01","se����_�R�C��_�V�X�e�����[���W�J");//se�[��_�R�~�J��_�|�C01
//	CreateSE("coilsound_noize02","se����_�R�C��_�Q�[�W���܂�03L");
//	CreateSE("coilsound_noize03","se����_�R�C��_�V�X�e�����[���V��");
//	CreateSE("coilsound_noize04","se����_�R�C��_�V�X�e���W�J");


	//=============================================================
	CreateTexture("coilnoize_��/�΃{�b�N�X���P�`", 10016, 242, 24, "cg/sys/coil/noize/�{�b�N�X1.png");
	SetAlias("coilnoize_��/�΃{�b�N�X���P�`", "coilnoize_��/�΃{�b�N�X���P�`");
	Request("coilnoize_��/�΃{�b�N�X���P�`", AddRender);
	Fade("coilnoize_��/�΃{�b�N�X���P�`", 0, 0, null, true);

	CreateTexture("coilnoize_��/�΃{�b�N�X���P�`", 10016, 242, 24, "cg/sys/coil/noize/�{�b�N�X1_txt.png");
	SetAlias("coilnoize_��/�΃{�b�N�X���P�`", "coilnoize_��/�΃{�b�N�X���P�`");
	Request("coilnoize_��/�΃{�b�N�X���P�`", AddRender);
	Fade("coilnoize_��/�΃{�b�N�X���P�`", 0, 0, null, true);


	Move("coilnoize_��/���}�X�N/*", 0, @0, @-50, Dxl1, true);
	Fade("coilnoize_��/���}�X�N/*", 0, 1000, null, false);

	Fade("coilnoize_��/���}�X�N/���O�p*", 0, 0, null, true);

	//�����֘A
	CreateSE("coilsound_noize05","se����_�R�C��_�V�X�e�����[���ړ�");
	MusicStart("coilsound_noize05",0,500,0,1500,null,false);

	Fade("coilnoize_��/�΃{�b�N�X���P�`", 0, 500, null, false);
	Fade("coilnoize_��/�΃{�b�N�X���P�`", 0, 500, null, true);

	//�����֘A
	CreateSE("coilsound_noize06","se����_�R�C��_�V�X�e���^�b�`");
	MusicStart("coilsound_noize06",0,700,0,1000,null,false);

	Fade("coilnoize_��/�΃{�b�N�X���P�`", 400, 0, null, false);
	Move("coilnoize_��/���}�X�N/*", 400, @0, @50, Dxl1, true);

}


function CoilNoizeDO02(){

//	WaitKey();
	//=============================================================

	//�����֘A
	CreateSE("coilsound_noize07","se����_�R�C��_�V�X�e�����X�g�W�J");
	MusicStart("coilsound_noize07",0,400,0,1800,null,false);

	Fade("coilnoize_��/���}�X�N/���O�p*", 0, 0, null, false);
	Fade("coilnoize_��/���}�X�N/���O�p�P", 0, 1000, null, true);
	Wait(200);

	//�����֘A
	CreateSE("coilsound_noize08","se����_�R�C��_�V�X�e�����X�g�W�J");
	MusicStart("coilsound_noize08",0,400,0,1800,null,false);

	Fade("coilnoize_��/���}�X�N/���O�p*", 0, 0, null, false);
	Fade("coilnoize_��/���}�X�N/���O�p�Q", 0, 1000, null, true);
	Wait(200);

	//�����֘A
	CreateSE("coilsound_noize09","se����_�R�C��_�V�X�e�����X�g�W�J");
	MusicStart("coilsound_noize09",0,400,0,1800,null,false);

	Fade("coilnoize_��/���}�X�N/���O�p*", 0, 0, null, false);
	Fade("coilnoize_��/���}�X�N/���O�p�R", 0, 1000, null, true);
	Wait(200);

	//�����֘A
	CreateSE("coilsound_noize10","se����_�R�C��_�V�X�e�����X�g�W�J");
	MusicStart("coilsound_noize10",0,400,0,1800,null,false);

	Fade("coilnoize_��/���}�X�N/���O�p*", 0, 0, null, false);
	Fade("coilnoize_��/���}�X�N/���O�p�S", 0, 1000, null, true);
	Wait(200);

	//�����֘A
	CreateSE("coilsound_noize11","se����_�R�C��_�V�X�e�����X�g�W�J");
	MusicStart("coilsound_noize11",0,400,0,1800,null,false);

	Fade("coilnoize_��/���}�X�N/���O�p*", 0, 0, null, false);
	Fade("coilnoize_��/���}�X�N/���O�p�R", 0, 1000, null, true);
	Wait(200);


	CreateTexture("coilnoize_��/���}�X�N/���t���[���R�`", 10001, 513, 41, "cg/sys/coil/noize/�t���[��03.png");
	SetAlias("coilnoize_��/���}�X�N/���t���[���R�`", "coilnoize_��/���}�X�N/���t���[���R�`");
	Request("coilnoize_��/���}�X�N/���t���[���R�`", AddRender);
	CreateTexture("coilnoize_��/���}�X�N/���O�p�R�`", 10001, 524, 39, "cg/sys/coil/noize/���O�p.png");
	SetAlias("coilnoize_��/���}�X�N/���O�p�R�`", "coilnoize_��/���}�X�N/���O�p�R�`");
	Request("coilnoize_��/���}�X�N/���O�p�R�`", AddRender);

	CreateColor("coilnoize_��/�X�L����", 10010, 168, 0, 2, 576, "24ff24");
	SetAlias("coilnoize_��/�X�L����", "coilnoize_��/�X�L����");
	Request("coilnoize_��/�X�L����", AddRender);
	Fade("coilnoize_��/�X�L����", 0, 100, null, true);
	SetBlur("coilnoize_��/�X�L����", true, 2, 500, 50, true);

	Fade("coilnoize_��/���}�X�N/���t���[���R�`", 0, 1000, null, false);
	Fade("coilnoize_��/���}�X�N/���O�p�R�`", 0, 1000, null, true);


	Move("coilnoize_��/�n�}���P", 0, @-684, @0, Axl1, true);
	Move("coilnoize_��/�n�}���Q", 0, @-684, @0, Axl1, true);
	Move("coilnoize_��/�n�}���R", 16, @-684, @0, Axl1, true);
	Zoom("coilnoize_��/�n�}��*/�n�}", 0, 350, 350, Dxl2, true);
	Zoom("coilnoize_��/�n�}��*/�O���b�h", 0, 350, 350, Dxl2, true);
	Fade("coilnoize_��/�n�}���P/�n�}", 0, 400, null, true);
	Fade("coilnoize_��/�n�}���Q/�n�}", 0, 400, null, true);
	Fade("coilnoize_��/�n�}��*/�O���b�h", 0, 500, null, true);


	//�����֘A
	CreateSE("coilsound_noize12","se����_�R�C��_�V�X�e�����[���ړ�");
	CreateSE("coilsound_noize13","se����_�R�C��_�V�X�e�����[���ǉ�");
	CreateSE("coilsound_noize14","se����_�R�C��_�Q�[�W���܂�05L");
	MusicStart("coilsound_noize12",0,500,0,1500,null,false);
	MusicStart("coilsound_noize13",0,700,0,1000,null,false);
	MusicStart("coilsound_noize14",0,500,0,1000,null,true);



	Fade("coilnoize_��/���}�X�N/���t���[���R�`", 400, 500, null, false);
	Fade("coilnoize_��/���}�X�N/���O�p�R�`", 400, 0, null, false);

	Fade("coilnoize_��/���}�X�N/����/�F", 0, 200, null, true);
	Move("coilnoize_��/���}�X�N/����/�F", 2400, @53, @0, null, false);


	CreateSE("coilsound_noize15","se����_�R�C��_�V�X�e���摜�W�J");//
	MusicStart("coilsound_noize15",0,700,0,1200,null,false);

	DrawTransition("coilnoize_��/�n�}���P/�n�}", 0, 200, 200, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 800, @684, @0, null, false);
	Move("coilnoize_��/�n�}���R", 800, @684, @0, null, false);
	Move("coilnoize_��/�n�}���P", 800, @684, @0, null, true);
	//WaitKey();

	CreateSE("coilsound_noize16","se����_�R�C��_�V�X�e���摜�W�J");//
	MusicStart("coilsound_noize16",0,700,0,1200,null,false);

	Fade("coilnoize_��/�n�}���Q/�n�}", 0, 800, null, true);
	Move("coilnoize_��/�X�L����", 0, 168, @0, null, true);
	DrawTransition("coilnoize_��/�n�}���Q/�n�}", 0, 600, 600, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 800, @684, @0, null, false);
	Move("coilnoize_��/�n�}���P", 800, @684, @0, null, false);
	Move("coilnoize_��/�n�}���Q", 800, @684, @0, null, true);
	//WaitKey();

	CreateSE("coilsound_noize17","se����_�R�C��_�V�X�e���摜�W�J");//
	MusicStart("coilsound_noize17",0,700,0,1200,null,false);

	Fade("coilnoize_��/�n�}���P/�n�}", 0, 1000, null, true);
	Move("coilnoize_��/�X�L����", 0, 168, @0, null, true);
	Move("coilnoize_��/�n�}���P", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_��/�n�}���P/�n�}", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 800, @684, @0, null, false);
	Move("coilnoize_��/�n�}���P", 800, @684, @0, null, false);
	Move("coilnoize_��/�n�}���Q", 800, @684, @0, null, true);
	//WaitKey();

/*
	Move("coilnoize_��/�X�L����", 0, 168, @0, null, true);
	Move("coilnoize_��/�n�}���P", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_��/�n�}���P/�n�}", 0, 700, 700, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 150, @684, @0, null, false);
	Move("coilnoize_��/�n�}���P", 150, @684, @0, null, false);
	Move("coilnoize_��/�n�}���Q", 150, @684, @0, null, true);
	//WaitKey();

	Move("coilnoize_��/�X�L����", 0, 168, @0, null, true);
	Move("coilnoize_��/�n�}���Q", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_��/�n�}���Q/�n�}", 0, 800, 900, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 150, @684, @0, null, false);
	Move("coilnoize_��/�n�}���P", 150, @684, @0, null, false);
	Move("coilnoize_��/�n�}���Q", 150, @684, @0, null, true);
	//WaitKey();

	Move("coilnoize_��/�X�L����", 0, 168, @0, null, true);
	Move("coilnoize_��/�n�}���P", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_��/�n�}���P/�n�}", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 150, @684, @0, null, false);
	Move("coilnoize_��/�n�}���P", 150, @684, @0, null, false);
	Move("coilnoize_��/�n�}���Q", 150, @684, @0, null, true);
	//WaitKey();
*/


	Fade("coilnoize_��/�n�}��*/�O���b�h", 0, 1000, null, true);
	Fade("coilnoize_��/���}�X�N/����/�F", 0, 1000, null, true);
	Fade("coilnoize_��/���o�F�P", 0, 100, null, true);
	Fade("coilnoize_��/�X�L����", 0, 0, null, true);

	Move("@coilnoize_��/���", 0, 469, 105, null, true);

	//�����֘A
	CreateSE("coilsound_noize18","se����_�R�C��_�V�X�e���摜�؂�ւ�");
	MusicStart("coilsound_noize18",0,700,0,1000,null,false);

	SetVolumeEX("coilsound_noize14", 100, 0, null);

	Fade("coilnoize_��/�n�}���Q/�n�}", 0, 0, null, true);
	DrawTransition("coilnoize_��/�n�}���Q/�n�}", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", true);
	Move("coilnoize_��/�n�}���Q", 0, @-684, @0, null, true);
	Request("coilnoize_��/�n�}���Q/�n�}", AddRender);

	Fade("coilnoize_��/���o�F�P", 300, 0, null, true);

	Request("coilnoize_�_�E�����[�h�v���Z�X", Start);

}


	//=============================================================

	//CoilNoizeMove(1,500,1000,100,Dxl1,true);
	//WaitKey();

	//CoilNoizeMove(1,500,-1000,-100,Dxl1,true);
	//WaitKey();
	//=============================================================


function CoilNoizeDO03(){

	CreateWindow("coilnoize_��/�N���A�P", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_��/�N���A�P", "coilnoize_��/�N���A�P");
	CreateTexture("coilnoize_��/�N���A�P/�n�}", 10000, Center, -38, "cg/ef/ef�}�b�v�{��_�N���A.jpg");
	SetAlias("coilnoize_��/�N���A�P/�n�}", "coilnoize_��/�N���A�P/�n�}");
	Request("coilnoize_��/�N���A�P/�n�}", Smoothing);

	CreateWindow("coilnoize_��/�N���A�Q", 10000, 170, 20, 684, 429, false);
	SetAlias("coilnoize_��/�N���A�Q", "coilnoize_��/�N���A�Q");
	CreateTexture("coilnoize_��/�N���A�Q/�n�}", 10000, Center, -38, "cg/ef/ef�}�b�v�{��_�N���A.jpg");
	SetAlias("coilnoize_��/�N���A�Q/�n�}", "coilnoize_��/�N���A�Q/�n�}");
	Request("coilnoize_��/�N���A�Q/�n�}", Smoothing);

	Move("coilnoize_��/�X�L����", 0, 168, @0, null, true);
	Fade("coilnoize_��/�X�L����", 0, 100, null, true);

	Move("coilnoize_��/�N���A�P", 0, @-684, @0, Axl1, true);
	Move("coilnoize_��/�N���A�Q", 0, @-684, @0, Axl1, true);
	Zoom("coilnoize_��/�N���A*/�n�}", 0, 600, 600, Dxl2, true);
	Fade("coilnoize_��/�N���A�P/�n�}", 0, 800, null, true);
	Fade("coilnoize_��/�N���A�Q/�n�}", 0, 800, null, true);

	Move("coilnoize_��/���}�X�N/����/�F", 0, 236, @0, null, false);
	Fade("coilnoize_��/���}�X�N/����/�F", 0, 200, null, true);

//////////////////////////////////////////////////////////////////////////////

	//�����֘A
	CreateSE("coilsound_noize20","se����_�R�C��_�V�X�e�����[���ړ�");
	CreateSE("coilsound_noize21","se����_�R�C��_�V�X�e�����[���ǉ�");
	CreateSE("coilsound_noize22","se����_�R�C��_�Q�[�W���܂�04L");
	MusicStart("coilsound_noize20",0,500,0,1500,null,false);
	MusicStart("coilsound_noize21",0,700,0,1000,null,false);
	MusicStart("coilsound_noize22",0,700,0,400,null,true);



	CreateSE("coilsound_noize23","se����_�R�C��_�V�X�e���摜�W�J");//
	MusicStart("coilsound_noize23",0,700,0,1200,null,false);


	Move("coilnoize_��/���}�X�N/����/�F", 2000, @53, @0, null, false);

	DrawTransition("coilnoize_��/�N���A�P/�n�}", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 500, @684, @0, null, false);
	Move("coilnoize_��/�N���A�R", 500, @684, @0, null, false);
	Move("coilnoize_��/�N���A�P", 500, @684, @0, null, true);
	//WaitKey();

	CreateSE("coilsound_noize24","se����_�R�C��_�V�X�e���摜�W�J");//
	MusicStart("coilsound_noize24",0,700,0,1200,null,false);

	Fade("coilnoize_��/�N���A�Q/�n�}", 0, 600, null, true);
	Move("coilnoize_��/�X�L����", 0, 168, @0, null, true);
	DrawTransition("coilnoize_��/�N���A�Q/�n�}", 0, 800, 800, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 500, @684, @0, null, false);
	Move("coilnoize_��/�N���A�P", 500, @684, @0, null, false);
	Move("coilnoize_��/�N���A�Q", 500, @684, @0, null, true);
	//WaitKey();

	CreateSE("coilsound_noize25","se����_�R�C��_�V�X�e���摜�W�J");//
	MusicStart("coilsound_noize25",0,700,0,1200,null,false);

	Fade("coilnoize_��/�N���A�P/�n�}", 0, 300, null, true);
	Move("coilnoize_��/�X�L����", 0, 168, @0, null, true);
	Move("coilnoize_��/�N���A�P", 0, @-1368, @0, null, true);
	DrawTransition("coilnoize_��/�N���A�P/�n�}", 0, 400, 400, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 500, @684, @0, null, false);
	Move("coilnoize_��/�N���A�P", 500, @684, @0, null, false);
	Move("coilnoize_��/�N���A�Q", 500, @684, @0, null, true);

	CreateSE("coilsound_noize26","se����_�R�C��_�V�X�e���摜�W�J");//
	MusicStart("coilsound_noize26",0,700,0,1200,null,false);

	Fade("coilnoize_��/�N���A�Q/�n�}", 0, 0, null, true);
	Move("coilnoize_��/�X�L����", 0, 168, @0, null, true);
	DrawTransition("coilnoize_��/�N���A�Q/�n�}", 0, 600, 600, 100, null, "cg/data/noize_01_00_0.png", false);
	Move("coilnoize_��/�X�L����", 500, @684, @0, null, false);
	Move("coilnoize_��/�N���A�P", 500, @684, @0, null, false);
	Move("coilnoize_��/�N���A�Q", 500, @684, @0, null, true);
	//WaitKey();


	//�����֘A
	CreateSE("coilsound_noize28","se����_�R�C��_�A���[�g");
	MusicStart("coilsound_noize28",0,700,0,1000,null,false);



	SetVolumeEX("coilsound_noize22", 100, 0, null);


	Fade("coilnoize_��/���}�X�N/����/�F", 0, 1000, null, true);
	Fade("coilnoize_��/���o�F�P", 0, 100, null, true);
	Fade("coilnoize_��/�X�L����", 0, 0, null, true);


	Fade("coilnoize_��/�N���A�Q/�n�}", 0, 0, null, true);
	DrawTransition("coilnoize_��/�N���A�Q/�n�}", 0, 1000, 1000, 100, null, "cg/data/noize_01_00_0.png", true);
	Move("coilnoize_��/�N���A�Q", 0, @-684, @0, null, true);
	Request("coilnoize_��/�N���A�Q/�n�}", AddRender);

	Fade("coilnoize_��/���o�F�P", 300, 0, null, true);
}


function CoilNoizeDO04(){

	CreateColor("coilnoize_��/�I��F", 10000, 461, 104, 32, 32, "24ff24");//WHITE
	SetAlias("coilnoize_��/�I��F", "coilnoize_��/�I��F");
	Request("coilnoize_��/�I��F", AddRender);
	Fade("coilnoize_��/�I��F", 0, 0, null, true);

//	SetVolumeEX("coilsound_noize22", 100, 0, null);

	//�����֘A
	CreateSE("coilsound_noize30","se����_�R�C��_�V�X�e�����[���폜");
	CreateSE("coilsound_noize31","se����_�R�C��_�V�X�e���N���[�Y");
	CreateSE("coilsound_noize33","se����_�R�C��_�V�X�e���I�[�v��");
	MusicStart("coilsound_noize30",0,700,0,1500,null,false);
	MusicStart("coilsound_noize31",0,700,0,1500,null,false);
	MusicStart("coilsound_noize33",0,800,0,1000,null,false);

	Request("coilnoize_�_�E�����[�h�v���Z�X", Stop);
	Request("coilnoize_��/���", Erase);

	Fade("coilnoize_��/�I��F", 0, 300, null, true);

	Fade("@coilnoize_��/�n�}���Q/�n�}", 400, 0, null, false);
	Fade("coilnoize_��/�I��F", 400, 0, null, true);


	//�����֘A
//	CreateSE("coilsound_noize33","se����_�R�C��_�V�X�e���I�[�v��");
//	MusicStart("coilsound_noize33",0,800,0,1000,null,false);
	CreateSE("coilsound_noize32","se����_�R�C��_�Q�[�W���܂�01L");
	MusicStart("coilsound_noize32",0,400,0,500,null,true);


//	Zoom("coilnoize_��/�I��F", 500, 3000, 3000, Dxl1, false);
	Move("coilnoize_��/�I��F", 500, 496, 220, Dxl1, false);

	Move("coilnoize_��/�n�}��*/�n�}", 500, -373, -83, Dxl1, false);

	Zoom("coilnoize_��/�n�}���P/�n�}", 500, 1000, 1000, Dxl1, false);
	Zoom("coilnoize_��/�n�}���Q/�n�}", 500, 1000, 1000, DxlAuto, false);

	Zoom("coilnoize_��/�n�}��*/�O���b�h", 500, 1000, 1000, Dxl1, false);

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
		Zoom("coilnoize_��/�I��F", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_��/�I��F", 0, 100, null, true);
		Fade("coilnoize_��/�I��F", 48, 0, null, true);

		$noizewhile++;
		$noizewhilezoomX=$noizewhilezoomX+($noizewhilepreX*$noizewhile);
		$noizewhilezoomY=$noizewhilezoomY+($noizewhilepreY*$noizewhile);
		Zoom("coilnoize_��/�I��F", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_��/�I��F", 0, 100, null, true);
		Fade("coilnoize_��/�I��F", 48, 0, null, true);

		$noizewhile++;
		$noizewhilezoomX=$noizewhilezoomX+($noizewhilepreX*$noizewhile);
		$noizewhilezoomY=$noizewhilezoomY+($noizewhilepreY*$noizewhile);
		Zoom("coilnoize_��/�I��F", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_��/�I��F", 0, 100, null, true);
		Fade("coilnoize_��/�I��F", 48, 0, null, true);

		$noizewhile++;
		$noizewhilezoomX=$noizewhilezoomX+($noizewhilepreX*$noizewhile);
		$noizewhilezoomY=$noizewhilezoomY+($noizewhilepreY*$noizewhile);
		Zoom("coilnoize_��/�I��F", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_��/�I��F", 0, 100, null, true);
		Fade("coilnoize_��/�I��F", 48, 0, null, true);

		$noizewhile++;
		$noizewhilezoomX=$noizewhilezoomX+($noizewhilepreX*$noizewhile);
		$noizewhilezoomY=$noizewhilezoomY+($noizewhilepreY*$noizewhile);
		Zoom("coilnoize_��/�I��F", 0, $noizewhilezoomX, $noizewhilezoomY, null, false);
		Fade("coilnoize_��/�I��F", 0, 100, null, true);
		Fade("coilnoize_��/�I��F", 48, 0, null, true);

//	Fade("coilnoize_��/�I��F", 64, 500, null, true);

	WaitAction("coilnoize_��/�n�}��*/�O���b�h", null);

	//�����֘A
	//CreateSE("coilsound_noize34","se����_�R�C��_�V�X�e���A���[�g");
	//MusicStart("coilsound_noize34",0,700,0,1500,null,false);

	SetVolumeEX("coilsound_noize32", 50, 0, null);

	Move("coilnoize_��/���", 0, 512, 215, Dxl1, true);
	Request("coilnoize_��/���", Enter);
	Request("coilnoize_�_�E�����[�h�v���Z�X", Start);
}



function CoilNoizeDelete(){

	//�����֘A
	CreateSE("coilsound_noize41","se����_�R�C��_�V�X�e���N���[�Y");
	MusicStart("coilsound_noize41",0,700,0,1500,null,false);

//=============================================================
	Zoom("coilnoize_�F*", 0, 6800, 250, null, true);
	Move("coilnoize_�F*", 0, @0, 250, null, true);//233

//	Move("coilnoize_�E�T�M���h�L�P", 2000, @-200, @0, Axl1, true);
	Rotate("coilnoize_�E�T�M���h�L�P", 0, 0, 0, 0, null, true);
	Rotate("coilnoize_�E�T�M���h�L�Q", 0, 0, 0, 0, null, true);
	Fade("coilnoize_�E�T�M���h�L�Q", 0, 0, null, true);

	Request("coilnoize_�_�E�����[�h�v���Z�X", Stop);

	Move("coilnoize_��/��*/*", 300, @0, @-50, Dxl1, true);
//////////////////////////////////
	//�����֘A
	CreateSE("coilsound_noize40","se����_�R�C��_�V�X�e���폜2");

	CreateSE("coilsound_noize00","se����_�R�C��_�V�X�e���摜�W�J");
	CreateSE("coilsound_noize01","se����_�R�C��_�V�X�e�����[���W�J");//se�[��_�R�~�J��_�|�C01
	CreateSE("coilsound_noize02","se����_�R�C��_�Q�[�W���܂�03L");
	CreateSE("coilsound_noize03","se����_�R�C��_�V�X�e�����[���V��");
	CreateSE("coilsound_noize04","se����_�R�C��_�V�X�e�����[���W�J");
	CreateSE("coilsound_noize05","se����_�R�C��_�V�X�e���폜");


	//�����֘A
	MusicStart("coilsound_noize40",0,700,0,1000,null,false);


	DrawTransition("coilstart_�F�P", 1000, 1000, 0, 100, null, "cg/data/noize_01_00_0.png", false);
	DrawTransition("coilnoize_�F�P", 1000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);


	DrawTransition("coilnoize_��/���o�F�P", 500, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);
	DrawTransition("coilnoize_��/�n�}���Q/�n�}", 500, 1000, 0, 100, null, "cg/data/noize_01_00_0.png", false);

	Fade("coilnoize_��/���o�F�P", 500, 300, null, false);
	Fade("coilnoize_��/���o�F�Q", 500, 100, null, false);
	Fade("coilnoize_��/�n�}���Q/�n�}", 500, 500, null, false);

//////////////////////////////////

//	Fade("coilnoize_��/���o�F�P", 500, 0, null, false);
//	Fade("coilnoize_��/���o�F�Q", 500, 0, null, false);

//	Zoom("coilnoize_��/�n�}��*/*", 500, 1000, 0, Dxl1, false);
//	Fade("coilnoize_��/�n�}��*/*", 500, 0, null, false);
	Fade("coilnoize_��/����*/*", 500, 0, null, false);

//	Move("coilnoize_��/*/*", 500, @0, @-350, AxlDxl, false);
	Move("coilnoize_��/*", 500, @0, @-350, AxlDxl, false);
	Move("coilnoize_��", 500, @0, @250, AxlDxl, false);
	Move("coilnoize_��/��*", 500, @0, @250, AxlDxl, false);

	Fade("coilstart_�F�P", 0, 100, null, false);
	Fade("coilstart_�F�Q", 0, 200, null, false);
	Fade("coilstart_�F�R", 0, 300, null, false);
	Fade("coilstart_�F�T", 0, 500, null, true);

	Move("coilstart_�F�T", 500, @0, 237, null, false);//237
	Move("coilstart_�F�R", 400, @0, 237, null, false);//237
	Move("coilstart_�F�Q", 400, @0, 237, null, false);//237

	Fade("coilstart_�F�P", 500, 0, null, false);
	Fade("coilstart_�F�Q", 400, 0, null, false);
	Fade("coilstart_�F�R", 400, 0, null, false);
	Fade("coilstart_�F�T", 400, 0, null, false);

	Fade("coilnoize_��/�΃{�b�N�X*", 500, 0, null, false);

	WaitAction("coilnoize_��", null);

	//�����֘A
	MusicStart("coilsound_noize01",0,700,0,1000,null,false);//�|��
	//�����֘A
	MusicStart("coilsound_noize02",1900,400,0,1000,Axl2,true);//�m�C�Y
	//�����֘A
	MusicStart("coilsound_noize03",0,1200,0,1000,null,false);

	DrawTransition("coilnoize_�E�T�M���h�L�Q", 0, 700, 700, 100, null, "cg/data/noize_01_00_0.png", false);

	Rotate("coilnoize_�E�T�M���h�L*", 2000, @0, @0, 1200, Axl2, false);
	BezierMove("coilnoize_�E�T�M���h�L�P", 1800, (@0,@0){@0,@-500}{@0,@-500}(@620,@-500), DxlAxl, false);//620
	BezierMove("coilnoize_�E�T�M���h�L�Q", 1800, (@0,@0){@0,@-450}{@0,@-420}(@620,@-420), DxlAxl, false);//620
	BezierMove("coilnoize_�F*", 1000, (@0,@0){@0,400}{@0,400}(@50,300), Dxl1, false);

//	Move("coilnoize_�F*", 300, @0, @-20, Dxl1, false);
	Fade("coilnoize_��/�΃o�[", 300, 0, null, false);
	Fade("coilnoize_�F�P", 300, 700, null, false);
	Zoom("coilnoize_��/�΃o�[", 300, 200, 1500, Dxl1, false);
	Zoom("coilnoize_�F�P", 300, 1000, 1000, Dxl1, true);
//	Wait(200);

	//�����֘A
	MusicStart("coilsound_noize00",0,1000,0,1000,null,false);//�Ă񂩂�
	//�����֘A
	MusicStart("coilsound_noize05",0,500,0,1500,null,false);

//	Move("coilnoize_�F*", 300, @0, @-500, Axl2, false);
	Fade("coilnoize_�F�Q", 500, 500, null, false);

	Rotate("coilnoize_�F*", 450, @360, @0, @0, null, false);
	Zoom("coilnoize_�F*", 250, 20, 3000, Dxl1, true);
	Zoom("coilnoize_�F*", 100, 20, 20, Dxl1, true);
	Fade("coilnoize_�F*", 200, 0, null, false);
	Zoom("coilnoize_�F*", 200, 3000, 20, Dxl1, true);

	Fade("coilnoize_�E�T�M���h�L�Q", 300, 1000, null, true);
	Fade("coilnoize_�E�T�M���h�L�Q", 300, 0, null, true);

	//�����֘A
	//MusicStart("coilsound_noize04",0,700,0,700,null,false);
	//�����֘A
	MusicStart("coilsound_noize02",300,0,0,1000,null,false);

	WaitMove("coilnoize_�E�T�M���h�L", null);
	WaitMove("coilnoize_�E�T�M���h�L�Q", null);

	WaitPlay("coilsound_noize02", null);

	CoilEnd();
}

function CoilNoizePro(){

	while(1){
		//Zoom("@coilnoize_��/���", 0, 1000, 1000, Dxl1, true);
		//Zoom("@coilnoize_��/���", 2500, 0, 0, null, false);

		Fade("@coilnoize_��/���", 1000, 800, null, false);
		Fade("@coilnoize_��/�n�}���Q/�n�}", 1000, 400, null, true);
		Fade("@coilnoize_��/���", 1000, 0, null, false);
		Fade("@coilnoize_��/�n�}���Q/�n�}", 1000, 0, null, true);
	}

}


function CoilNoizeMove($CoilPat,����,$�ړ�X,$�ړ�Y,�e���|,�҂�){

	if($CoilPat==1){
		$X1 = $�ړ�X;
		$X2 = ($X1 / 5) * 6;
		$Y1 = $�ړ�Y;
		$Y2 = ($Y1 / 5) * 6;
	
		BezierMove("coilnoize_*", ����, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), �e���|, false);
		BezierMove("coilnoize_*/*", ����, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), �e���|, false);
		BezierMove("coilnoize_*/*/*", ����, (@0,@0){@$X1,@$Y1}{@$X2,@$Y2}(@$X1,@$Y1), �e���|, �҂�);
	}else if($CoilPat==2){
		$X1 = $�ړ�X;
		$X2 = - $X1 / 4;
		$Y1 = $�ړ�Y;
		$Y2 = - $Y1 / 4;
	
		BezierMove("coilnoize_*", ����, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), �e���|, false);
		BezierMove("coilnoize_*/*", ����, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), �e���|, false);
		BezierMove("coilnoize_*/*/*", ����, (@0,@0){@$X2,@$Y2}{@0,@0}(@$X1,@$Y1), �e���|, �҂�);
	}else if($CoilPat==3){
		Move("coilnoize_*", ����,@$�ړ�X,@$�ړ�Y,�e���|,false);
		Move("coilnoize_*/*", ����,@$�ړ�X,@$�ړ�Y,�e���|,false);
		Move("coilnoize_*/*/*", ����,@$�ړ�X,@$�ړ�Y,�e���|,�҂�);
	}

}













.�����o�܂Ƃ�
..��dm1030�Edm2030�Edm3030�Edm4030�Edm5030
function CoilBank01a($CoilBgm){

//#MF_1030���[�r�[=true;
//#MF_1030���S=true;

	SetVolumeEX($CoilBgm, 1000, 1, null);

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	CoilPictSet(303,16,"cg/ef/ef�R�C���摜�\���̈捕.png");
	//���D�_�E�����[�h�ݒu�wCoilDownSet(X�ʒu,Y�ʒu)�x
	//CoilDownSet(200,50);
	CoilDownSetPri(600,350,10000);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���E�摜�\���P�i�ʏ�\���j
	CoilPictFade();
	//���R�C���҂�
	CoilWait();


	SoundPlay("@dm8bit001",0,450,true);


	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("1030���[�r�[","dx/mvdot103.ngs");
	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("1030���[�r�[");
	//���E�摜�`��ҋ@�b���i���[�r�[�Ƃ��j
	CoilPictWaitTime("1030���[�r�[",35000);

	if($CoilPictWaitSkipOn){
		SetStream($coilpictNum3, 25000);
	}

	//���D�E�����[�h�\���P�i�ʏ�\���j
	CoilDownFade();
	//���D�E�����[�h�X�^�[�g�wCoilDownStart(�b��)�x
	CoilDownStart(5000);
	//���D�E�����[�h����
	CoilDownComp();
	Wait(2000);
	//�~�D�E�����[�h���[
	CoilDownDelete();


	//���R�C���҂�
	CoilWait();
	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWaitSkip("1030���[�r�[");

	SetVolumeEX("@dm8bit001", 1000, 0, null);
	Wait(1000);
	SetVolumeEX($CoilBgm, 1000, 450, null);

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("1030���S","dx/mvdot103a.ngs");
	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("1030���S");
	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWaitSkip("1030���S");


	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�R","cg/ef/ef�R�C�����ҏ�Z�C_BASE.png");
	//���E�ǉ��摜�\��
	CoilPictFadeCon("�R");
	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWait();


	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�S","cg/ef/ef�R�C�����ҏ�Z�C_BASE01.png");
	//���E�ǉ��摜�\��
	CoilPictFadeCon("�S");
	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWait();

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�T","cg/ef/ef�R�C�����ҏ�Z�C_BASE02.png");
	//���E�ǉ��摜�\��
	CoilPictFadeCon("�T");
	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWait();

	Wait(1000);
}

function CoilBank01b(){
	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPict",300,-50,370);
	//���w�ėp�x�R�C�����[�P�wCoilAllDelete(�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	//CoilAllDelete(300,-50,370);
	//���R�C���҂�
	CoilWait();
}

function CoilBank02a(){
	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	CoilPictSet(303,16,"cg/ef/ef�R�C�����ҏ�Z�C_BASE02.png");

	//���@�R�C�����o�\��
	CoilStartFade();
	//���E�摜�\���P�i�ʏ�\���j
	CoilPictFade();

	//���R�C���҂�
	CoilWait();
}

function CoilBank02b(){
	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPict",300,-50,370);
	//���R�C���҂�
	CoilWait();
}

function CoilBank03a(){

//���w�k���R�C���m�F�x

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���A���[��NEW�ݒu�wCoilNewSet(X�ʒu,Y�ʒu)�x
	CoilNewSet(400,100);
	//���B���[�����X�g�ݒu�wCoilMListSet(X�ʒu,Y�ʒu)�x
	CoilMListSet(500,100);
	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	CoilPictSet(125,100,"cg/ef/ef�}�b�v�{��_�m�C�Y_�n�}.png");/////


	//���@�R�C�����o�\��
	CoilStartFade();
	//���A���[��NEW�\��
	CoilNewFade();
	//���R�C���҂�
	CoilWait();

	//���B���[�����X�g�\���Q�i���[��NEW����̑J�ځj
	CoilMListFade_New();
	//���R�C���҂�
	//CoilWait();

	//���B�V�K���[���ǉ�
	CoilMailAdd2("dm1030a","Haga-san","Secret path to Plt. Jail",true);
	//���R�C���҂�
	//CoilWait();

	//���C���[���ݒu�wCoilMailSet("���[���i�b�g��",X�ʒu,Y�ʒu)�x
	CoilMailSet("dm1030a",515,150);////////////

	//���C���[���\���Q�i���[�����X�g����̑J�ځj�wCoilMailFade_MList("���[���i�b�g��",�b��)�x
	CoilMailFade_MList("dm1030a",500);

	//���E�摜�\���Q�i���[���_�E�����[�h����̕\���j
	//CoilPictFade_Down();
	//���E�摜�\���R�i���[������̒��ڕ\���j
	CoilPictFade_Mail();

	//���R�C���҂�
	CoilWait();



	CreateSE("coilsound_move","se����_�R�C��_�V�X�e���^�b�`");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//���E�Y�[���i���̉摜�ɑ΂��āj�wCoilPictZO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x//�����i�b�g�̎w��́u�����v
	CoilPictZO("����",1000,300,300,Dxl1,true);

	//���E�n�}��p����R�}���h
	CoilPictIconFade(@-150,@-140);

}

function CoilBank03b(){

	CreateSE("coilsound_move","se����_�R�C��_�V�X�e���^�b�`");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//���E�n�}��p����R�}���h
	CoilPictIconGo(800,@150,@50,@500,@350,1000,1000);

	Wait(3000);


	//���w�ėp�x�R�C�����[�P�wCoilAllDelete(�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilAllDelete(300,-50,370);
	//���R�C���҂�
	CoilWait();

}

//�킯��
function CoilBank03b_1(){

	CreateSE("coilsound_move","se����_�R�C��_�V�X�e���^�b�`");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//���E�n�}��p����R�}���h
	CoilPictIconGo(800,@150,@50,@500,@350,1000,1000);

}

function CoilBank03b_2(){

	//���w�ėp�x�R�C�����[�P�wCoilAllDelete(�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilAllDelete(300,-50,370);
	//���R�C���҂�
	CoilWait();

}



..��dm1080/dm2080/dm3080/dm4080/dm5080
function CoilBank04(){

	if($GameName=="dm1080.nss"){
		//�ׂɂ����߁i�E�̃G�L�]�`�b�N�]�[���j
		$CoilBankX=-384;$CoilBankY=-373;
		$CoilBankX2=50;$CoilBankY2=-20;
	}else if($GameName=="dm2080.nss"){
		//�m�C�Y�i���̂䂤���񂿃]�[���j
		$CoilBankX=-296;$CoilBankY=-498;
		$CoilBankX2=-70;$CoilBankY2=90;
	}else if($GameName=="dm3080.nss"){
		//�݂񂭁i��̂܂�����]�[���j
		$CoilBankX=-268;$CoilBankY=-312;
		$CoilBankX2=40;$CoilBankY2=-80;
	}else if($GameName=="dm4080.nss"){
		//�������i���̗΃]�[���j
		$CoilBankX=-68;$CoilBankY=-423;
		$CoilBankX2=-100;$CoilBankY2=-100;
	}else if($GameName=="dm5080.nss"){
		//���i�����̃T�C�o�[�]�[���j
		$CoilBankX=20;$CoilBankY=-517;
		$CoilBankX2=-30;$CoilBankY2=50;
	}else{
		//�ׂɂ����߁i�E�̃G�L�]�`�b�N�]�[���j
		$CoilBankX=-384;$CoilBankY=-373;
		$CoilBankX2=50;$CoilBankY2=-20;
	}

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	//CoilPictSet(300,20,"cg/ef/ef�R�C�����ҏ�Z�C_BASE02.png");
	CoilPictSet(303,16,"cg/ef/ef�R�C�����ҏ�Z�C_BASE02.png");

	//���@�R�C�����o�\��
	CoilStartFade();
	//���E�摜�\���P�i�ʏ�\���j
	CoilPictFade();

	//���R�C���҂�
	CoilWait();

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�Q","cg/bg/l/bg001011_1_�ɓ��S�i_l.jpg");
	//���E���[�u�i���̉摜�ɑ΂��āj�wCoilPictMO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x
	CoilPictMO("�Q",0,$CoilBankX,$CoilBankY,Dxl1,true);
	//���E�Y�[���i���̉摜�ɑ΂��āj�wCoilPictZO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x//�����i�b�g�̎w��́u�����v
	CoilPictZO("�Q",0,1500,1500,Dxl1,true);

	//���E�ǉ��摜�\��
	CoilPictFadeCon("�Q");

	CreateSE("coilsound_move","se����_�R�C��_�V�X�e���^�b�`");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//���E�Y�[���i���̉摜�ɑ΂��āj�wCoilPictZO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x//�����i�b�g�̎w��́u�����v
	CoilPictZO("�Q",1000,1000,1000,Dxl1,true);

	//���R�C���҂�
	CoilWait();

	//���E�n�}��p����R�}���h
	CoilPictIconFade(@$CoilBankX2,@$CoilBankY2);
	//���E�n�}��p����R�}���h
	//CoilPictIconGo(800,@150,@50,@500,@350,1000,1000);

	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWait();
}



..��dm1070/dm2070/dm3070/dm4070/dm5070

function CoilBank05a(){
	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	CoilPictSet(303,16,"cg/ef/ef�R�C�����ҏ�Z�C_BASE02.png");

	//���@�R�C�����o�\��
	CoilStartFade();
	//���E�摜�\���P�i�ʏ�\���j
	CoilPictFade();

	//���R�C���҂�
	CoilWait();
}

function CoilBank05b(){
	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPict",300,-50,370);
	//���R�C���҂�
	CoilWait();
}






