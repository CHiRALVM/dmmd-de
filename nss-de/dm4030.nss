//<continuation number="240">
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


scene dm4030.nss_MAIN
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
	CoilMailAdd("dm1030a","Haga-san","Secret path to Platinum Jail",true,true);

	#MF_1030���[�r�[=true;
	#MF_1030���S=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4050.nss";

}


scene dm4030.nss
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
	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06");
	FadeBG(0,true);

	Delete("��w�i");

	DrawDelete("�G�F��", 250, 100, null, "slide_01_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
How far did we run&.&.&.?

{	SetVolumeEX("@dm*", 3000, 0, null);}
As our feet come to a stop&, we check our surroundings&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000010a01">
"&.&.&.Ha&, hah&, hah&.&.&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/3000020a04">
"Ha&, whew&, It should- be fine- the police aren't chasing us anymore&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Clear stands next to me&, slouching over and out of breath&.
I lean on the wall to catch my breath as well&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000030a01">
"How do- you know- they're not after us?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/3000040a04">
"If they were&, I would have heard their footsteps&. Because
 I have not heard any&, I can assume they aren't chasing
 after us anymore&."

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000050a01">
"Just that&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I couldn't hear a thing&. 
Does Clear have really good hearing too?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//���R�C���̒��M
	CreateSE("SE01","se����_�R�C��_��M���t");//�������u�r�d�Fse����_�R�C��_��M���t�v
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw���t_�ʏ�_normal2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000060a01">
"&.&.&.?"

{
	SoundPlay("@dm006",0,450,true);

	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm40/3000070a06">
"A game application is being transmitted&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000080a01">
"Again!? And right now&.&.&.!?"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/3000090a04">
"A game?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm40/3000100a06">
"It appears to be an automatic recovery type&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000110a01">
"Eh&.&.&.!?"


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
//�E�҂����A�ɓ���A�󔠂̂Ƃ���܂ōs���B
//�󔠂��J����Ƃ��̒��ɂ̓J�M�������Ă��āA���̃J�M�������ē��A�̉��֐i�݁A
//�傫�ȃh�A�̑O�ŗ����~�܂�B�J�M�Ńh�A���J����Ƃ��̐�ɂ͂ЂƂ̌�������c�B
//���̂��ƁA��ʂ��z���C�g�A�E�g�B

//cono�u���o�F���������Wait�̓R�C�����o���ꂽ��ɏ����Ă��������v
//	Wait(5000);

//	SetVolumeEX("@dm8bit001", 1000, 0, null);
//	SetVolumeEX("@dm006", 1000, 450, null);

//��ʂ��؂�ւ��A�v���`�i�E�W�F�C���ւ̏��ҏ󂪉f���o�����B�i����͑��t�̂ݓ͂��Ă�j
//���҂̓��e�ڍׁi�؍݊��ԁA�h�̏ꏊ�Ȃǁj��������Ă���B
//���̂��ƁA�Q�X�g�h�c�������I�ɃC���X�g�[�������B


//���w�k���R�C���m�F�x����ł����̂��낤���H
//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank01a("@dm006");


	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000120a01">
"An invitation? So this is for entering Platinum Jail?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm40/3000130a06">
"It seems so&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000140a01">
"I still don't get what the whole game thing is for&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
&.&.&.No&. Wait a second&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000150a01">
"They sent me part of the game when Granny collapsed too&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/3000160a04">
"Is that so?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000170a01">
"Yeah&. When we all went to the Northern District&, her
 character was taken to a landfill by a crow&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/3000180a04">
"Yes&. You did say that&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000190a01">
"After I saw it in the game&, she was actually kidnapped&.
 That means that this time it might also be telling me
 something's going to happen&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/3000200a04">
"The possibility of that is not zero&. But it seems almost
 too suspicious&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000210a01">
"Well&, that's true too&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F�����܂ŃR�C����ʌp���A�����ŕ���v

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank01b();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I don't have any idea who the sender is&, and to put it one way&, they're even predicting crimes before they take place&.
But&.&.&.


A cave&, a treasure chest&, a key&, and a large door&.
What are they supposed to mean?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�R�C���Ƀ��[�����M
	CreateSE("SE01","se����_�R�C��_��M���t");//�������u�r�d�Fse����_�R�C��_��M���t�v
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw���t_�ʏ�_normal2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000220a01">
"Another message?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
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
There's an image attached to it&. It's a map of the Old 
Residential area&. A red arrow marks a spot to the left 
side of Platinum Jail&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank03b_1();

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/3000230a01">
"We're going to go join up with Haga-san&. Let's go&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/3000240a04">
"All right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���o���N�Ƃ��āufunction_coil�v�ɓo�^
	CoilBank03b_2();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
We turn to the direction of our meeting spot&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//�����t�@�C��["dm4050.nss"]

}
