//<continuation number="190">
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


scene dm0850.nss_MAIN
{
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0860.nss";

}


scene dm0850.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	CreateColorSPmul("�G�F���\", 4000, "000000");
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F���\", 0, 200, null, false);
	Fade("�G�F��", 0, 700, null, false);
	DrawTransition("�G�F��", 0, 0, 600, 500, null, "cg/data/circle_08_00_1.png", true);

	CreateTextureSP("�G�w�i100", 100, -109, -630, "cg/bg/l/bg104031_5_���t���_l.jpg");
	SetShade("�G�w�i100", MEDIUM);

	FadeDelete("��w�i", 1500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The sun peeks through the curtains while I'm still lying 
in bed&, drowsy&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���R�C��_�d�b
//�e�F�R�C�����o�͌��
	//���R�C�����M
	CreateSE("coilsound_phone_call","se����_�R�C��_���M���t");
	MusicStart("coilsound_phone_call",0,700,0,1000,null,true);

	Wait(1000);

	Move("�G�w�i100", 500, @0, @50, Dxl1, false);
	FadeDelete("�G�w�i100", 500, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
As I'm about to doze off again&, my Coil suddenly rings&. 
Someone's calling me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��18");
	MusicStart("SE02",0,600,0,1100,null,false);

	Wait(500);

//���w�k���R�C���m�F�x
	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���G�R�C���d�b�ݒu
	//CoilPhone_OutcallSet(368,30,"ko0170","Delivery Works",false);
	CoilPhone_IncallSet(1100,30,"dm0850","Virus",false);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���G�R�C���d�b�\��
	CoilPhone_CallFade();
	//���R�C���҂�
	CoilWait();

	Wait(1000);

	//���G�R�C���d�b�o��
	CoilPhone_CallOn(@0,@0,"st�g��_�ʏ�_cry");

	Wait(1000);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000010a01">
"Yeah?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�E�C���X_�ʏ�_normal");

//�����H�F�R�C���ʘb
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm08/5000020b04">
"Aoba-san? Were you sleeping?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
This voice&.&.&.
Is uh&.&.&.

I look at the name on the Coil screen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_worry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000030a01">
"&.&.&.Huh? Virus?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����H�F�R�C���ʘb
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm08/5000040b04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000050a01">
"Hey&, what's up?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�E�C���X_�ʏ�_serious");

//�����H�F�R�C���ʘb
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm08/5000060b04">
"It's a disaster&. Keep calm and listen to me&. The police
 are going to your house right now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000070a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(500);

	//���w�ėp�x�R�C���ړ��Q�wCoilMove2(�ړ��p�^�[��,"�w��̃R�C����",����,�ړ�X,�ړ�Y,�e���|,�҂�)�x//���ړ��͐�΂̂�
	CoilMove2(1,"CoilPhone",800,368,30,Dxl1,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
I'm now wide awake and bring my Coil closer to my face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000080a01">
"Why?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����H�F�R�C���ʘb
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm08/5000090b04">
"I don't know&. But a lot of them are on their way&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000100a01">
"Are you serious&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�����H�F�R�C���ʘb
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm08/5000110b04">
"Please run away and hide somewhere&. The police came here
 too&, so things are a bit noisy&. If I hear anything I'll
 contact you again&."

//�����H�F�R�C���ʘb
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm08/5000120b04">
"Aoba-san&, please be careful&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	//���G�R�C���d�b�I��
	CoilPhone_End();

	SoundPlay("@dm007a",0,450,true);
	Wait(500);

	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPhone",300,-50,370);
	//���R�C���҂�
	CoilWait();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
The call from Virus ends&.

What? The police?

What's going on?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSPadd("�G�w�i", 100, Center, Middle, "cg/bg/bg104031_5_���t���.jpg");
	CreateColorSP("�G�F��", 4000, "000000");

	Fade("�G�w�i", 0, 400, Axl1, true);
	Fade("�G�F��", 0, 500, null, true);
	DrawTransition("�G�F��", 0, 0, 200, 500, Axl1, "cg/data/circle_08_00_1.png", true);
	DrawTransition("�G�w�i", 0, 0, 800, 100, Axl1, "cg/data/circle_08_00_0.png", true);

	Delete("�G�F���\");

	FadeDelete("�G��", 500, Axl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
At that moment&, I look up and the light in my room becomes brighter&.

Like morning had passed over into noon&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000130a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

//�J�[�e������������������
//�e�FSE���L���̂��G���[�f���̂ŃR�����g�A�E�g

	CreateColorEXadd("�G�F��", 5000, "000000");
	Fade("�G�F��*", 0, 1000, Dxl1, true);
	Fade("�G�w�i", 0, 800, Axl1, true);
	Fade("�G�F��", 0, 200, null, true);
	FadeDelete("�G�F��", 300, Dxl1, true);

	CreateSE("SE01","se����_��_�J�[�e���J���鑁��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawDelete("�G��", 500, 800, Dxl1, "slide_06_00_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I get off my bed&, walk up to the window&, and open the 
curtains a bit&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000140a01">
"&.&.&.So bright&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
I can't open my eyes&.
I look out the window&, frowning&.

The early morning mist still covers the scenery&, and there are police huddled together in a line in front of my house&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���}�C�N������K�K�b�s�[�s�[�݂����ȉ�
	CreateSE("SE01","se����_���K�z��_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�����H�F�g����
//	Fw("fw����_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�����z
<voice name="����" class="����" src="voice/dm08/5000150b08">
"Ah--Ahh-Ahhhhh! Come out this instant! We know you're in
 there! You damn terrorist!"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000160a01">
"&.&.&.What!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
That voice&.&.&. That's Akushima&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i�O", 1000, Center, Middle, "cg/bg/bg104001_1_���t��O�ʂ�.jpg");
	CreateTextureSPadd("�G�w�i�O��", 1001, Center, Middle, "cg/bg/bg104001_1_���t��O�ʂ�.jpg");
	CreateTextureSPmul("�G�w�i�O��", 1002, Center, Middle, "cg/bg/bg104001_1_���t��O�ʂ�.jpg");
	DrawTransition("�G�w�i�O��", 0, 0, 800, 100, Axl1, "cg/data/circle_08_00_0.png", true);

	St("C",1500, @0,@0,"st����_�ʏ�_laugh");
	FadeSt("C",0,true);

	Fade("�G�F��", 0, 800, null, true);

	FadeDelete("�G��", 500, null, true);

//	Wait(500);

//	Fw("fw����_�ʏ�_laugh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�����H�F�g����
//�y�����z
<voice name="����" class="����" src="voice/dm08/5000170b08">
"Aahhhh! This is what you're charged with! Tresspassing&,
 damage to property&, and everything else you can think of
 that goes with those!!!"

{
	St("C",1500, @0,@0,"st����_�ʏ�_shout");
	FadeSt("C",200,true);
//	Fw("fw����_�ʏ�_shout");
}
//�����H�F�g����
//�y�����z
<voice name="����" class="����" src="voice/dm08/5000180b08">
"Come out! Seragaki Aoba&, and your little gang too!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);
	Delete("�G�w�i�O*");
	Fade("�G�F��", 0, 500, null, true);

	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/5000190a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
He calls out my full name&, and I know now that there's no 
way he's thinking of anyone else&.

But wait&, me&, a terrorist?
How did it come to that!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0860.nss"]

}
