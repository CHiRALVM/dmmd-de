//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0840sl.nss_MAIN
{
//�������ݒ�Ȃ�
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	//


}


scene dm0840sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	TextBoxDelete(150);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t�������");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F���|�C���g�L����
//�����g�����v�������ׂ�i�g���|�C���g�{�P�j
//�����m�C�Y���v�������ׂ�i�m�C�Y�|�C���g�{�P�j
//�����~���N���v�������ׂ�i�~���N�|�C���g�{�P�j
//�����N���A���v�������ׂ�i�N���A�|�C���g�{�P�j

//�����[�g����(3/3)
//�|�C���g���������Ă���L�����̂݁A�I�����o��

//�������̑I�����ŃL�������[�g�m��B
//$DM_ROUTE_SEL=[0, 0,0,0,0]
//�L�����������A�g���A�m�C�Y�A�~���N�A�N���A


//���I����
	if($DM_ROUTE_SEL[0]==4){
		SetChoice04(" Think of Koujaku"," Think of Noiz"," Think of Mink"," Think of Clear");
		WaitChoice04();
		
		if($SetChoiceSelect==0){		$DM_ROUTE=1;}
		else if($SetChoiceSelect==1){	$DM_ROUTE=2;}
		else if($SetChoiceSelect==2){	$DM_ROUTE=3;}
		else if($SetChoiceSelect==3){	$DM_ROUTE=4;}
	}else if($DM_ROUTE_SEL[0]==3){
	
		if($DM_ROUTE==31){
			SetChoice03(" Think of Koujaku"," Think of Noiz"," Think of Mink");
			WaitChoice03();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=2;}
			else if($SetChoiceSelect==2){	$DM_ROUTE=3;}
		
		}else if($DM_ROUTE==32){
			SetChoice03(" Think of Koujaku"," Think of Noiz"," Think of Clear");
			WaitChoice03();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=2;}
			else if($SetChoiceSelect==2){	$DM_ROUTE=4;}
		
		}else if($DM_ROUTE==33){
			SetChoice03(" Think of Koujaku"," Think of Mink"," Think of Clear");
			WaitChoice03();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=3;}
			else if($SetChoiceSelect==2){	$DM_ROUTE=4;}
		
		}else if($DM_ROUTE==34){
			SetChoice03(" Think of Noiz"," Think of Mink"," Think of Clear");
			WaitChoice03();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=2;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=3;}
			else if($SetChoiceSelect==2){	$DM_ROUTE=4;}
		}
	
	}else if($DM_ROUTE_SEL[0]==2){
	
		if($DM_ROUTE==21){
			SetChoice02(" Think of Koujaku"," Think of Noiz");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=2;}
		
		}else if($DM_ROUTE==22){
			SetChoice02(" Think of Koujaku"," Think of Mink");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=3;}
		
		}else if($DM_ROUTE==23){
			SetChoice02(" Think of Koujaku"," Think of Clear");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=4;}
		
		}else if($DM_ROUTE==24){
			SetChoice02(" Think of Noiz"," Think of Mink");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=2;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=3;}
		
		}else if($DM_ROUTE==25){
			SetChoice02(" Think of Noiz"," Think of Clear");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=2;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=4;}
		
		}else if($DM_ROUTE==26){
			SetChoice02(" Think of Mink"," Think of Clear");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=3;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=4;}
		
		}
	
	}else{
		CreateText("�Gtt01", 25001, 280,410, 200, 50, "���򎸔s(<VALUE name=$DM_ROUTE>)");WaitKey();
	}

	if($DM_ROUTE==1){	$GameName = "dm0841.nss";}
	else if($DM_ROUTE==2){$GameName = "dm0842.nss";}
	else if($DM_ROUTE==3){$GameName = "dm0843.nss";}
	else if($DM_ROUTE==4){$GameName = "dm0844.nss";}
	else {$GameName = "";$GameCircle=false;}

//	ClearFadeAll(1000, true);

}
