//<continuation number="210">
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


scene dm3690.nss_MAIN
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

	#bg304121_5_���]�^���[���]�̊�=true;
	#bg304122_5_���]�^���[���]�̊�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3700_vs.nss";

}


scene dm3690.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304122_5_���]�^���[���]�̊�");
	FadeBG(0,true);

/*
����������̓~���N���_������܂��B
�@�~���N���_�̎��̓Z���t�݂̂ŐS������i�`�ʂ͏o�Ă��܂���B


���w�i�F�^���[���^���]�̕���

���h�A���X���C�h���ĕ����̒��Ƀ~���N������B
�@�~���N�A�����Ă����ė����~�܂�B
�@�ڂ̑O�ɓ��]������B���]�Ƃ̋����͂Q�����炢�B
�@���\��ɓ��]�����߂�~���N�B���]�͔����΂��Ă���B
*/

	CreateSE("SE01","se����_�h�A���]�̊�_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(5000);

	FadeDelete("��w�i", 1000, null, true);

	Wait(2000);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);

	St("C",740, @0,@0,"bu���]_�ʏ�_normal");

	Fade("�G�w�i", 500, 1000, null, false);
	FadeSt("C",500,true);

	Wait(1000);
{	Fw("fw�~���N_�ʏ퐳��_serious");}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/9000010a05">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000020b02">
"I was waiting for you&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	SoundPlay("@dm019",0,450,true);

	CreatePlainSP("�G��", 5000);
	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	Delete("�G�w�i");
	FadeDelete("�G��", 1000, null, true);

	Wait(500);
	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",300,true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000030b02">
"&.&.&.No&, actually I admire your efforts&. You were able to
 make it this far without being torn apart by the song&."

//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000040b02">
"The bodily sensation that song evokes is a vicarious
 experience within the listener&, their deepest wounds
 amplified to the maximum&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000050b02">
"Most people end up with their central nerves beyond
 repair&. However you climbed over that hurdle&. As expected
 of a survivor from such a race&."

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/9000060a05">
"It was him who broke that song apart&. Not me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000070b02">
"Aoba-kun&, right? Speaking of which&, wasn't he here
 with you before?"

{	Fw("fw�~���N_�ʏ퐳��_serious");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/9000080a05">
"My objective is you&. He has nothing to do with this&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000090b02">
"I see&. So you let him free&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000100b02">
"I supposed that you were the kind to not let anyone close
 &.&.&. I guess he is a special case&."

{	Fw("fw�~���N_�ʏ�_angry2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/9000110a05">
"Who said I let him free? Don't put words into my mouth&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/9000130a05">
"I don't need your pretentious speeches&. I've always
 been waiting for this moment&.&.&. You're going to die&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000140b02">
"Keep at that then&. It's nothing you need to rush&. The
 truth is that as I had guessed as to when you would make
 it here&, I had some time to think about some things&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000150b02">
"Like how it would be such a splendid thing if you were
 thinking about killing me&. God decided that I would be
 killed by you&."

{	St("C",740, @0,@0,"st���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000160b02">
"However&, it's just not as fun if it's simply an instant
 kill&. Don't you think so?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw�~���N_�ʏ퐳��_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/9000170a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000180b02">
"It wouldn't have been necessary if you didn't make it this
 far&.&.&. but I think I'll be trying out my last bit of
 resistance&. It'll be a very simple thing&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����]�A�����O�֐i��Ń~���N�Ƃ̋�����������Ƃ����l�߂�B
//�@�~���N�A���]�̓����Ɍx���B

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	//St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
	//FadeSt("C",0,true);

	Wait(300);

	SetVolumeEX("SE01", 500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000190b02">
"I won't use any weapons&. And I won't fight back&. However
 the effectivness is amazing&. Now let me give a gift&.&.&.
 to you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(36);

//�������u���F���]�K���ɃJ�b�g�C���A���t�̗͔�����^���銴���Łv
	CreateSE("SE01","se�[��_����_�͓��]01");

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);

	CreateColorEX("�G�F��", 5000, "000000");
	DrawTransition("�G�F��", 0, 400, 400, 200, null, "cg/data/slide_05_00_0.png", true);

	CreateTextureEX("��", 100, Center, 110, "cg/bu/bu���]_�ʏ�_serious.png");
	Request("��", Smoothing);
	Fade("��", 0, 1000, null, true);
	Zoom("��", 0, 1500, 1500, null, true);


//	St("C",740, @0,@0,"bu���]_�ʏ�_serious");

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�F��", 500, 500, null, false);
	Fade("��", 500, 1000, null, false);
	Fade("�G�w�i", 500, 1000, null, true);


	CreatePlainSP("�G��", 5000);

	Fade("�G��", 0, 500, null, true);
	Shake("�G��", 500, 5, 3, 0, 0, 1000, null, false);
	FadeDelete("�G��", 300, null, false);
	Zoom("�G��", 300, 1100, 1100, null, false);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//���͔���
//�y���]�z
<voice name="���]" class="���]" src="voice/dm36/9000200b02">
"&.&.&.You won't die&. You can't die&. Ever&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw�~���N_�퓬_pinch");}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/9000210a05">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1500, 0, null);

	ClearFadeAll(1000, true);
	Wait(1500);

//�����t�@�C��["dm3700_vs.nss"]

}
