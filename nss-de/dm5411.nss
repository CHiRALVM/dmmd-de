//<continuation number="160">
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


scene dm5411.nss_MAIN
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

	#bg304171_5_���]�^���[�E�C���X����=true;
	
	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5412ed.nss";

}


scene dm5411.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i100", 100, -1492, -406, "cg/bg/l/bg304171_5_���]�^���[�E�C���X����_l.jpg");
	Zoom("�G�w�i100", 0, 1800, 1800, null, true);
	Request("�G�w�i100", Smoothing);

	CreateTextureSP("�G�w�i101", 101, -1492, -406, "cg/bg/l/bg304171_5_���]�^���[�E�C���X����_l.jpg");
	Zoom("�G�w�i101", 0, 1800, 1800, null, true);
	Request("�G�w�i101", Smoothing);
	SetShade("�G�w�i101", MEDIUM);

	Wait(3000);

	FadeDelete("��w�i", 2000, null, true);

	FadeDelete("�G�w�i101", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.The next time I open my eyes&, I'm laying on a bed 
in an unknown room&.

This is&.&.&.

My hazy vision clears&, and I see Virus's face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100010b04">
"Are you awake?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/1100020a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g���b�v_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm54/1100030b09">
"Looks like you had a nice rest&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Trip sits on the bedside and strokes my cheek&. Virus 
stands up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100040b04">
"We had actually planned on taking you to Toue first&, but
 we ended up not&, in the end&."

{
	Fw("fw�E�C���X_�ʏ�_think");
}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100050b04">
"When we saw you just writhing around at your wit's end&, we thought of something&."

{
	FwPro("fw�E�C���X_�ʏ�_serious",6000,"fw�E�C���X_�ʏ�_normal");
}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100060b04">
"You're a carp on the chopping board&. And you've struck
 lucky&, heh&."

{
	SoundPlay("@dm006",0,450,true);
}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100070b04">
"We didn't exactly pledge our allegiance to Toue or
 anything&. We just like fun&, amusing things&."

{
	Fw("fw�E�C���X_�ʏ�_serious");
}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100080b04">
"Toue has Sei by his side&. So we thought that we might as
 well have you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g���b�v_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm54/1100090b09">
"Because we both love you so much&, Aoba&."

{
	Fw("fw�E�C���X_�ʏ�_normal");
}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100100b04">
"That's right&. So from now on&, you'll be with us if you
 don't mind&. We'll treasure you for a lifetime&, Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,500,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/1100110a01">
"&.&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
&.&.&.I have to get away&.
My instincts are screaming at me&, telling me to escape&.

Virus is staring at me with a terribly calm face&, as if he was looking at something he adored&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
&.&.&.They've gone insane&.

If I'm with them&, who knows what'll happen to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100120b04">
"It's all right for you to be frightened&. Humans are
 especially sensitive to changes in their environment&."

//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100130b04">
"Both your body and soul will become used to us
 eventually&."

{
	Fw("fw�g���b�v_�ʏ�_smile");
}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm54/1100140b09">
"We'll take our time&."

{
	Fw("fw�E�C���X_�ʏ�_fake");
}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/1100150b04">
"Yeah&. So for now&.&.&. go to sleep&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,600,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 20, -10, 10, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/1100160a01">
"-! &.&.&.Ugh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(5000);

//�����t�@�C��["dm5412ed.nss"]

}
