//<continuation number="60">
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


scene dm5400.nss_MAIN
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
	$GameName = "dm5400sl.nss";

}


scene dm5400.nss
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

	CreateTextureSP("�G�ꖇ�G", 1000, Center, Middle, "cg/ev/evf02�����q�l�ÈłɘȂ�.jpg");
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304041_5_���]�^���[�����G���A������.jpg");
	CreateColorEX("�G�F��", 5000, "000000");
	SetShade("�G�w�i", MEDIUM);

	Fade("�G�F��", 0, 100, null, true);

//===========================================
//�ȉ��A����
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	FadeDelete("��w�i", 500, null, true);
}
I lift my head&, putting up with the nausea&, and I see the 
world filled with peoples' glassy eyes&.

{
	CreatePlainSP("�G��", 5000);
	SetShade("�G�w�i", DONTCARE);
	FadeDelete("�G��", 300, null, true);
}

&.&.&.Morphine&.

Their eyes&, looking at me but weren't seeing anything&.

The eyes of humans that have turned into machines that 
only abide orders&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Delete("�G�ꖇ�G");
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 500, 50, 50, 0, 0, 500, null, false);
	Fade("�G�F��", 200, 1000, Dxl2, true);
	Fade("�G�F��", 100, 500, null, true);
	Fade("�G�F��", 200, 0, Dxl2, true);

	Wait(500);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 500, 50, 50, 0, 0, 500, null, false);
	Fade("�G�F��", 200, 1000, Dxl2, true);
	Fade("�G�F��", 100, 600, null, false);
	Fade("�G�F��", 200, 0, Dxl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Someone kicks my face&, and my mouth fills with the taste 
of blood&.

Pain running throughout my entire body&, I curl up to 
protect myself&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,500,0,1000,null,false);
	Shake("�G�w�i", 500, 50, 50, 0, 0, 500, null, false);
	Fade("�G�F��", 200, 1000, Dxl2, true);
	Fade("�G�F��", 1000, 700, null, false);
	Fade("�G�F��", 200, 0, Dxl2, true);

	Wait(500);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,300,0,1000,null,false);
	Shake("�G�w�i", 500, 50, 50, 0, 0, 500, null, false);
	Fade("�G�F��", 200, 1000, Dxl2, true);
	Fade("�G�F��", 1000, 800, null, false);
	Fade("�G�F��", 200, 0, Dxl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Taking countless hits&, my consciousness slowly starts to 
fade out&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/0000010b04">
"Is this enough?"

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_think");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm54/0000020b09">
"Maybe&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/0000030b04">
"What now?"

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_normal2");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm54/0000040b09">
"Yeah?"

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/0000050b04">
"Aoba-san&."

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_normal");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm54/0000060b09">
"Oh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5400sl.nss"]

}
