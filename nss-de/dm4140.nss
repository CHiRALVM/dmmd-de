//<continuation number="100">
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


scene dm4140.nss_MAIN
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
	$GameName = "dm4150.nss";

}


scene dm4140.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg302021_5_�O���b�^�[����.jpg");

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/4000010a04">
"By the way&, Master&. I'm changing the topic&, but do we have our sights on Oval Tower?"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/4000020a01">
"I haven't decided yet&, but I think it'd be best to gather
 information on it to make sure&."

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/4000030a04">
"Then why don't we head over to the tower later?
 Information gathering is important&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/4000040a01">
"Sure&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I nod and pluck a strawberry off some pancakes&.
I'd planned to go there from the start&, anyway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/4000050a01">
"Alright&, let's go out to make preparations&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/4000060a04">
"Yes&. I'll tidy up&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/4000070a01">
"No&, I ate so I'll help out&."

{	DeleteFw();
	ClearComicNext(800,430,71,17,0);}
//�y�N���A�z�������F�n�[�g
<voice name="�N���A" class="�N���A" src="voice/dm41/4000080a04">
"Really? Thank you so much&, D-e-a-r!"

{	ClearComicNexDelete();
	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/4000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
//�������u���F�����ł��C�x���g�G���g�p���ĉ������v
//�����t�A�����ŃN���A���R��
	CreateTextureEX("�G�ꖇ�G", 1000, 0, InBottom, "cg/ev/m/ev900���t�R��ėp_m.jpg");
	CreateColorEXadd("�G�F��", 5000, "WHITE");

	Move("�G�ꖇ�G", 200, @-288, @288, Axl2, false);
	Fade("�G�ꖇ�G", 180, 1000, Dxl1, true);

	DeleteSt("C", 0,true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 200, 1000, Dxl3, true);

	Delete("�G�ꖇ�G");

	Fade("�G�ꖇ�G", 0, 1000, Dxl3, true);
	Shake("�G�ꖇ�G", 500, 50, 50, 0, 0, 500, null, false);

	Shake("�G�w�i", 300, 50, 50, 0, 0, 500, Axl2, false);
	FadeDelete("�G�F��", 300, Axl2, true);

	Wait(300);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);

*/

	DeleteFw();
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(100,true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 15, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw�N���A_�ʏ�}�X�N����_normal");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�N���A�z�������F�K�[��
<voice name="�N���A" class="�N���A" src="voice/dm41/4000100a04">
"Ow! Y-You're awful&, Master!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	ClearComicNexDelete();
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
&.&.&.Continuing on like a slapstick comedy&, we finish 
cleaning up breakfast&, get our clothes together&, and leave 
Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm4150.nss"]

}
