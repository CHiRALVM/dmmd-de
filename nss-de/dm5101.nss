//<continuation number="70">
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


scene dm5101.nss_MAIN
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
	$GameName = "dm5110.nss";

}


scene dm5101.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i100", 100, -111, -440, "cg/bg/l/bg302011_5_�O���b�^�[����01_l.jpg");
	CreateTextureSP("�G�d�u111", 111, -250, -268, "cg/ev/m/ev026�@�����eb_m.jpg");

	Delete("��w�i");

	FadeDelete("�G�d�u111", 500, null, true);
	Wait(300);
	Fw("fw���t_�ʏ�_sad");

//===========================================
//�u�\����Ȃ��C�����ɂȂ�v��I�񂾏ꍇ
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/0100010a01">
"&.&.&.I'm sorry&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm51/0100020a06">
"Why are you apologizing?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/0100030a01">
"No&, well&. You're my important partner&. I wasn't paying
 enough attention&.&.&. And it was my responsibility to&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm51/0100040a06">
"It's not really your fault&."

{	Fw("fw���t_�ʏ�_worry2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/0100050a01">
"I'm awful&. Lately&, I&.&.&. Somehow I've come to dislike
 myself because of all this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm51/0100060a06">
"&.&.&.&.&."

{
	Fw("fw���t_�ʏ�_confuse");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/0100070a01">
"Just kidding&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
My mood sinking&, I take Ren and place him to my forehead&.

{
	CreateSE("SE01","se�l��_����_�ߎC��18");
	MusicStart("SE01",0,500,0,1800,null,false);
}
&.&.&.And something pushes on my cheek&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm5110.nss"]

}
