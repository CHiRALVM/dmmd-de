//<continuation number="80">
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


scene dm5392.nss_MAIN
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

}


scene dm5392.nss
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
//�u�͂̏Փ���}����v�̏ꍇ
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
So I guess I have no other choice but to use it&.
&.&.&.This power&.

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,600,0,1100,null,false);

	Move("�G�w�i", 300, @0, @-50, Dxl1, false);
	FadeDelete("�G�w�i", 300, null, true);
}
I raise my face&, focusing&.
<k>&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 12000, "000000");
	Fade("�G�F��", 300, 1000, null, true);

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,Middle,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);

	Fade("�G�������t�U�f", 0, 1000, null, true);
	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");

	TemptationAobaOut(200,true);
	TemptationDelete("@�G�������t�U�f���B");

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.I knew it&, I can't&.

If I use it&, then "he" will&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//�Y�[���Ńg���b�v������ƕ\��
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

	FadeDelete("�G�F��", 300, Dxl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
In that momentary pause&.&.&.
I just noticed that Trip had made his way up to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���j��������
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 7000, "FFFFFF");
	Fade("�G�t���b�V����", 150, 1000, Dxl3, true);

	Delete("�G�w�i");
	Delete("�G���G");
	Wait(100);
	CreatePlainSP("�G��", 100);
	Shake("�G��", 500, 50, 0, 0, 0, 500, Dxl1, false);
	FadeDelete("�G�t���b�V����", 100, Null,true);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9200010a01">
"-!"

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/9200020b04">
"What is it?  Aoba-san&. Are you lost? You seem distracted&."

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/9200030b04">
"If you're a bit lost&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/9200040b09">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");

	DeleteSt("C", 0,true);

	St("C",700, @0,@0,"bu�g���b�v_�ʏ�o�b�a_normal2");
	FadeSt("C",0,true);

	DrawDelete("�G����", 300, 100, Dxl1, "slide_01_01_0", true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9200050a01">
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

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9200060a01">
"Gah&.&.&.!"

{	St("C",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile");
	FadeSt("C",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/9200070b09">
"You'll just be a punching bag&, you know?"

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
[text0040]
Trip punches me in the pit of my stomach and I fall to me 
knees&.

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
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/9200080a01">
"Uck&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Someone kicks my back too&, and I shamefully tumble down to the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5400.nss"]

}
