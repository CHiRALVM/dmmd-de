//<continuation number="230">
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


scene dm3030.nss_MAIN
{

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("hime0240","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);

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
	$GameName = "dm3050.nss";

}


scene dm3030.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm009",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg101041_1_���Z����ʂ藠�H�n05");
	FadeBG(0,true);

	Delete("��w�i");

	DrawDelete("�G�F��", 250, 100, null, "slide_01_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
How far did we run&.&.&.?

We exit the alleyway and come to a stop&. We check our
surroundings&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
I don't hear any footsteps coming after us&.
Did we shake them off?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000010a01">
"Hah&, hah&, hah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//	SoundPlay("@dm006",0,450,true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I lean on a wall and catch my breath&, knowing we're safe 
for now&.

Mink lightly pants&, and keeps a watchful eye around us&.


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
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000020a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
While my breathing calms down&, my Coil rings&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

{	Fw("fwAM�@_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm30/3000030a06">
"It's a game application&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000040a01">
"Again!? And does it really have to be right now&.&.&.!?"

{
//���R�C���̒��M
	CreateSE("SE01","se����_�R�C��_��M�~���N");//�������u�r�d�Fse����_�R�C��_��M�~���N�v
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm30/3000050a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
It looks like something was also sent to Mink's Coil&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	DeleteAllSt(200,true);

{	Fw("fwAM�g��_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm30/3000060b12">
"A game application&, huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000070a01">
"Seriously? The same thing?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm30/3000080a06">
"It seems that it's an automatic installation type&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000090a01">
"Huh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

//	SetVolumeEX("@dm006", 1000, 1, null);
//	SoundPlay("@dm8bit001",0,450,true);

//�������u�R�C���F�v���`�i�W�F�C�����ҏ�v

//������ɃQ�[�����n�܂�

//���Q�[���̓��e�F
//�@�E�҂����A�ɓ���A�󔠂̂Ƃ���܂ōs���B
//�@�󔠂��J����Ƃ��̒��ɂ̓J�M�������Ă��āA���̃J�M�������ē��A�̉��֐i�݁A
//�@�傫�ȃh�A�̑O�ŗ����~�܂�B�J�M�Ńh�A���J����Ƃ��̐�ɂ͂ЂƂ̌�������c�B
//�@���̂��ƁA��ʂ��z���C�g�A�E�g�B

//cono�u���o�F���������Wait�̓R�C�����o���ꂽ��ɏ����Ă��������v
//	Wait(5000);

//	SetVolumeEX("@dm8bit001", 1000, 0, null);
//	SetVolumeEX("@dm006", 1000, 450, null);

//�@��ʂ��؂�ւ��A�v���`�i�E�W�F�C���ւ̏��ҏ󂪉f���o�����B�i����͑��t�̂ݓ͂��Ă�j
//�@���҂̓��e�ڍׁi�؍݊��ԁA�h�̏ꏊ�Ȃǁj��������Ă���B
//�@���̂��ƁA�Q�X�g�h�c�������I�ɃC���X�g�[�������B

//���w�k���R�C���m�F�x����ł����̂��낤���H
//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank01a("@dm006");


	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000100a01">
"I still don't understand this at all&.&.&. And what's
 this invitation about anyway?"

{	Fw("fw�~���N_�ʏ�_serious");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm30/3000110a05">
"Invitation?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000120a01">
"Didn't you get one?"

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm30/3000130a05">
"Show me&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	//���w�ėp�x�R�C���ړ��Q�wCoilMove2(�ړ��p�^�[��,"�w��̃R�C����",����,�ړ�X,�ړ�Y,�e���|,�҂�)�x//���ړ��͐�΂̂�
	CoilMove2(2,"CoilPict",500,1024,-500,Axl1,false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
I show Mink the invitation on my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0049]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000140a01">
"So I'm the only one that got it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank01b();

	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm30/3000150a05">
"Looks suspicious&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I thought so&.
But this game&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000160a01">
"I think that this game actually predicted Granny's
 kidnapping&."

{	Fw("fw���t_�ʏ�_normal");}

{	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm30/3000161a05">
"Predicted?"


{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000170a01">
"I said earlier that I got a game application sent to me
 before&, so this one might mean something too&.&.&."

{	St("C",740, @0,@0,"st�~���N_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm30/3000180a05">
"Then it's a trap&. It must have been from the culprit on
 the scene that knew she was taken&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000190a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I never thought of that&.&.&.

Even if it is a trap&, there must be some significance to
it this time too&.&.&.

A cave&, a treasure chest&, a key&, a large door&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�R�C���Ƀ��[�����M
	CreateSE("SE01","se����_�R�C��_��M���t");//�������u�r�d�Fse����_�R�C��_��M���t�v
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw���t_�ʏ�_worry3");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000200a01">
"&.&.&.This time it's a message&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);


/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�R�C�����[���{�b�N�X�\��
//�����F�v���`�i�E�W�F�C���ւ̔�����
//���o�l�F�H�ꂳ��
//�{���F�˃i�b�g���Fdm1030a
//�{���͎����ē�������肾������ł����A�\��ύX�ł��B�k�n���D-86�܂ŗ��Ă��������B�����ō������܂��傤�v

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
[text0070]
A picture is attached to the message&.
It's a map of the Old Resident District&.

There's a point marked on the left side of the outer walls close to Platinum Jail&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank03b();

	St("C",740, @0,@0,"st�~���N_�ʏ�_serious");
	FadeSt("C",200,true);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000210a01">
"Let's go meet up with Haga-san for now&."

{	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm30/3000220a05">
"The man who knows the way into Platinum Jail?"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/3000230a01">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
We turn in the direction that will take us to our meeting 
spot with Haga-san according to the map&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//�����t�@�C��["dm3050.nss"]

}
