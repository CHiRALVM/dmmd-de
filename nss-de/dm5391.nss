//<continuation number="120">
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


scene dm5391.nss_MAIN
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
	$GameName = "dm5400.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;
}


scene dm5391.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304041_5_���]�^���[�����G���A������");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");

	FadeDelete("��w�i", 0, null, true);

//===========================================
//�u�͂��g���v�̏ꍇ
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Now&.&.&. I have no other choice but to use it&.

&.&.&.My power&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,600,0,1100,null,false);

	Move("�G�w�i", 300, @0, @-50, Dxl1, false);
	FadeDelete("�G�w�i", 300, null, true);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9100010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
//���ǂ���A�Ɠ���
	HAFade(2000, 0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I raise my head up and manage to focus&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/9100020b04">
"&.&.&.It's coming&. Trip&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//�Y�[���Ńg���b�v������ƕ\��
	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G���G", 200, Center, 0, "cg/bu/bu�g���b�v_�ʏ�o�b�a_normal.png");
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304041_5_���]�^���[�����G���A������.jpg");

	Request("�G���G", Smoothing);
	SetVertex("�G���G", 525, 200);
	SetShade("�G�w�i", SEMIHEAVY);

	Zoom("�G���G", 300, 2000, 2000, Axl3, false);
	Zoom("�G�w�i", 330, 1400, 1400, Axl3, false);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(150);

	FadeDelete("�G��", 300, Dxl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The moment I'm about to speak&, Trip is already in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 7000, "FFFFFF");
	Fade("�G�t���b�V����", 150, 1000, Dxl1, true);

	Delete("�G�w�i");
	Delete("�G���G");
	Wait(100);
	CreatePlainSP("�G��", 100);
	Shake("�G��", 500, 50, 0, 0, 0, 500, Dxl1, false);
	FadeDelete("�G�t���b�V����", 100, Null,true);

//���j��������
	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9100030a01">
"-!"

{	St("C",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_normal2");
	FadeSt("C",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/9100040b09">
"Even if you try to use your voice&, it's all useless&, Aoba&. Because we've been watching&. Watching how your throat
 works&, how it produces that special voice&."

{	DeleteSt("C", 200,true);
	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9100050a01">
"!?"

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/9100060b04">
"We didn't know at first&, but the truth is&, we've been
 receiving some help from Sei-san&. Why do you think that
 is?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	CreatePlainSP("�G��", 5000);
	CreatePlainSP("�G��", 780);

	CreateMaskSetSP("�G��", 2000, 0, 0, "ci���C��_01_00", true, "ci���C��_01_00z");
	CreateTextureSP("�G��/�G���G", 1000, Center, -210, "cg/fu/x/fu�E�C���X_�ʏ�o�b�a_normal_x01.png");
	CreateTextureSP("�G��/�G�w�i", 800, Center, Middle, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");

	CreateColorEXsub("�G��/�G�F��", 900, "WHITE");

	SetShade("�G��/�G�w�i", MEDIUM);
	SetShade("�G��", MEDIUM);

	Fade("�G�F��", 0, 300, null, true);

	Move("�G��/�G�w�i", 0, @-60, @0, Dxl1, true);
	Move("�G��/�G���G", 0, @-100, @0, Dxl1, true);

	Move("�G��/�G�w�i", 1000, @60, @0, Dxl1, false);
	Move("�G��/�G���G", 1000, @100, @0, Dxl1, false);
	DrawDelete("�G��", 500, 100, null, "slide_05_01_0", true);


	Wait(1000);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/9100070b04">
"We've been making our way around here&, just so Sei-san
 can't manipulate us with his eyes&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Virus pushes up his glasses&.

{	DeleteAllSt(200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/9100080b09">
"Aaaoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G������", 16000, "BLACK");
	DrawTransition("�G������", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	Delete("�G��");
	Delete("�G����");
	Delete("�G��/�G*");
	Delete("�G��*");
	Delete("�G�F��");
	DeleteSt("C", 0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");
	St("C",700, @0,@0,"bu�g���b�v_�ʏ�o�b�a_normal2");
	FadeSt("C",0,true);

	DrawDelete("�G������", 300, 100, Dxl1, "slide_01_01_0", true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9100090a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�t���b�V����", 7000, "FFFFFF");
	Fade("�G�t���b�V����", 150, 1000, Dxl3, true);

	Delete("�G�w�i");
	DeleteSt("C", 0,true);
	Wait(30);

	FadeDelete("�G�t���b�V����", 100, Dxl3, true);

	BGPlainShake(100,300,0,30,0,0,1000,Axl1,false);

//���݂�������������
	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9100100a01">
"-Gah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/9100110b09">
"Don't look away&, now!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_1.png", true);

	DeleteSt("C", 0,true);

	CreateTextureSP("�G�w�i", 100, Center, 0, "cg/bg/l/bg304041_5_���]�^���[�����G���A������_l.jpg");

	Move("�G�w�i", 200, @0, @-500, Dxl2, false);
	DrawDelete("�G����", 200, 100, Dxl1, "slide_02_01_0", true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G�w�i", 300, 0, 50, 0, 0, 500, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Trip's fist sinks into the pit of my stomach and I lose my breath&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�t���b�V����", 7000, "FFFFFF");
	Fade("�G�t���b�V����", 150, 1000, Dxl3, true);

	Wait(30);

	FadeDelete("�G�t���b�V����", 100, Dxl3, true);

	Shake("�G�w�i", 500, 20, 0, 0, 0, 500, null, false);

//���w�����R����
	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9100120a01">
"Uck&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
My knees buckle as someone kicks me in the back&, and I 
shamefully tumble down to the ground&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5400.nss"]

}
