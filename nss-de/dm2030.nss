//<continuation number="420">
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


scene dm2030.nss_MAIN
{

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("hime0240","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);

$TEXTBOX_TYPE="";
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("dm1030a","�H�ꂳ��","�v���`�i�E�W�F�C���ւ̔�����",true,true);

	#MF_1030���[�r�[=true;
	#MF_1030���S=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2040_vs.nss";

}


scene dm2030.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");

//���F�O�t�@�C�����C���ɂ����蕔���C���K�v

	OnBG(10,"bg101022_5_���Z����ʂ藠�H�n02");
	FadeBG(0,true);

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("��w�i", 500, Axl3, true);
	Wait(1000);
	FadeDelete("�G�F��", 2000, DxlAuto, true);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000010a01">
"&.&.&.Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
We come back to the real world&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000020a03">
"Pretty disappointing&, it was just a small fry&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000030a01">
"&.&.&.Then you should've helped out&. If you did&, then Ren
 wouldn't have&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I direct my anger towards the obnoxiously calm Noiz and 
take Ren out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000040a01">
"Ren&, are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//���F�������悤��������폜
//	CreateTextureEX("�G�w�i", 1000, Center, Middle, "cg/ev/ev004���@�N��a.jpg");
//	Fade("�G�w�i", 500, 1000, null, true);
//	DeleteAllSt(0,true);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm20/3000050a06">
"Yes&, I didn't recieve any substantial damage&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000060a01">
"Really&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//	FadeDelete("�G�w�i", 300,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Relieved&, I pat Ren's head and place him back into my bag&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000070a03">
"Are you some kind of idiot? You don't need to carry that
 thing around with you all the time&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000080a01">
"&.&.&.What?"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000090a03">
"Maybe you really are&. Instead of worrying about your
 machine&, worry about yourself&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000100a03">
"That guy just now cut the damage limit&. If you were the
 one that took that damage&, you would've been sorry&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000110a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000120a03">
"But what you said earlier doesn't seem to be a lie&. Even
 if you're in trouble&, you don't remember what to do&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000130a01">
"&.&.&.Did you not help me because you wanted to make sure
 of that?"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000140a03">
"That's right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000150a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I'm absolutely pissed and want to burst out on him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���R�C���̒��M
	CreateSE("SE01","se����_�R�C��_��M���t");//�������u�r�d�Fse����_�R�C��_��M���t�v
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000160a01">
"&.&.&.?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm20/3000170a06">
"It's a game application transmission&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000180a01">
"Again!? And now of all times&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���R�C���̒��M
	CreateSE("SE01","se����_�R�C��_��M�m�C�Y");//�������u�r�d�Fse����_�R�C��_��M�m�C�Y�v
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000190a03">
"&.&.&.&.&."

{	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");}
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm20/3000200c09">
"Game app delivery! Game app delivery!"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000210a01">
"You got it too?"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000220a03">
"Looks like it&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm20/3000230a06">
"It seems to be the auto-play type&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000240a01">
"Huh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//	SetVolumeEX("@dm006", 1000, 1, null);
//	SoundPlay("@dm8bit001",0,450,true);

//������ɃQ�[�����n�܂�

//���Q�[���̓��e�F
//�@�E�҂����A�ɓ���A�󔠂̂Ƃ���܂ōs���B
//�@�󔠂��J����Ƃ��̒��ɂ̓J�M�������Ă��āA���̃J�M�������ē��A�̉��֐i�݁A
//�@�傫�ȃh�A�̑O�ŗ����~�܂�B�J�M�Ńh�A���J����Ƃ��̐�ɂ͂ЂƂ̌�������c�B
//�@���̂��ƁA��ʂ��z���C�g�A�E�g�B

//cono�u���o�F���������Wait�̓R�C�����o���ꂽ��ɏ����Ă��������v
//	Wait(5000);

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank01a("@dm006");

	Wait(3000);

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank01b();

//	SetVolumeEX("@dm8bit001", 1000, 0, null);
//	SetVolumeEX("@dm006", 1000, 450, null);

//�@��ʂ��؂�ւ��A�v���`�i�E�W�F�C���ւ̏��ҏ󂪉f���o�����B�i����͑��t�̂ݓ͂��Ă�j
//�@���҂̓��e�ڍׁi�؍݊��ԁA�h�̏ꏊ�Ȃǁj��������Ă���B
//�@���̂��ƁA�Q�X�g�h�c�������I�ɃC���X�g�[�������

//���F�R�C�����o���

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000250a03">
"This game&.&.&. is weird&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000260a01">
"I told you I got a game that was only in a demo movie
 form&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000270a01">
"But does this invitation thing let us into Platinum Jail?"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000280a03">
"Invitation? I didn't get anything like that&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000290a01">
"Really? Here&, this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank02a();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I show the invitation to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
//	FadeSt("C",200,true);

{	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000300a03">
"&.&.&.I see&."

{
//	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
//	FadeSt("C",200,true);
	Fw("fw�m�C�Y_�ʏ�_serious");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000310a03">
"I thought it was a prank&, but I guess it's not&. It does
 look like the game's been altered&, though&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000320a01">
"Altered?"

{
//	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
//	FadeSt("C",200,true);
	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000330a03">
"I've played that game before&. But it didn't have a scene
 like that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0088]
What does all this mean&.&.&.?

I don't even understand what this game is about yet&.&.&.

&.&.&.No&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank02b();

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000340a01">
"&.&.&.This same game was sent to me when Granny was
 kidnapped&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000350a03">
"You did say so&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000360a01">
"After that&, what happened in the game actually happened in real life&. If that's the case again&, then maybe what the
 game showed will actually happen&." 

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000370a03">
"If that's true&, then it's obviously a trap&. It means you
 got an announcement about your grandma's kidnapping&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000380a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
He's right&.&.&.

But even if it is a trap&, this game must have some meaning&.

A cave&, a treasure chest&, a key&, a large door&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���R�C���Ƀ��[�����M
	CreateSE("SE01","se����_�R�C��_��M���t");//�������u�r�d�Fse����_�R�C��_��M���t�v
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000390a01">
"&.&.&.Now it's a message?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
//�R�C�����[���{�b�N�X�\��
//�����FA passage to Platinum Jail
//���o�l�FHaga-san
//�{���F�˃i�b�g���Fdm1030a
//I intended to actually guide you, but we have a change of schedule. Please come to D-86 of the north district. I'll meet you there.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/
//�������u�R�C���F��ʓW�J�A�}���`�ŕ�����ʊJ���Ă����v
//�������u�R�C���F�|�C���g�}�[�J�[�̓A�j���o��������������c�c�v

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank03a();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
An image is attached to the message&.
It's a map of the Old Resident District&.

A red arrow points around the left side of Platinum Jail's outer wall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank03b();

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000400a01">
"I'm going to join Haga-san now&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/3000410a03">
"I'll go with you&. It'd be a pain if you died before our
 next match&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/3000420a01">
"&.&.&.Let's go&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
I begin to walk with Noiz to where Haga-san is&, albeit 
with mixed feelings&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2040_vs.nss"]

}
