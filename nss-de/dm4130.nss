//<continuation number="430">
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


scene dm4130.nss_MAIN
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
	#ev413�N���A���G�v����=true;
	#bg302031_5_�O���b�^�[�o�[�J�E���^�[=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4140.nss";

}


scene dm4130.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302031_5_�O���b�^�[�o�[�J�E���^�[");
	FadeBG(0,true);

	CreateTextureEX("�G�ꖇ�G", 500, -190, 0, "cg/ev/l/ev413�N���A���G�v����_�l���N���A�Ɣw�i_l.jpg");
	CreateTextureEX("�G�ꖇ�G��", 110, Center, Middle, "cg/ev/ev413�N���A���G�v����.jpg");
	CreateTextureEX("�G�ꖇ�G�Q", 100, Center, Middle, "cg/ev/m/ev413�N���A���G�v����_�l���N���A�Ɣw�i_m.jpg");
	CreateTextureEX("�G�ꖇ���t", 105, InRight, -10, "cg/ev/m/ev413�N���A���G�v����_�l�����t_m.png");
	CreateTextureEX("�G�ꖇ���t�k", 107, InRight, -10, "cg/ev/m/ev413�N���A���G�v����_���ʃQ�W�Q�W_m.png");

	Kirakirakirakira_Set(2000, 350, 500, "cg/ev/ev413�N���A���G�v����_���ʃL���L��.png", "cg/ev/m/ev413�N���A���G�v����_���ʃL���L��_m.png", "cg/ev/m/ev413�N���A���G�v����_���ʃL���L��_m.png");

	Request("�G�ꖇ�G��", Smoothing);
	Request("�G�ꖇ�G�Q", Smoothing);

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	Fw("fw�N���A_�ʏ�}�X�N����_normal");
	ClearComicNext(20001,85,411,3,"");
}
//�y�N���A�z�������F���͂ȁH
<voice name="�N���A" class="�N���A" src="voice/dm41/3000010a04">
"Ah&, Master&. Good morning!"

{	ClearComicNexDelete();
	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	ClearComicNexDelete();
	TextBoxDelete(0);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 1000, 1000, null, true);

	CreateTextureSP("�G�A", 510, 0, 0, "cg/ev/ev413�N���A���G�v����_���ʃV���{��01.png");
	CreateTextureSP("�G�A��", 509, 300, 300, "cg/ev/ev413�N���A���G�v����_���ʃV���{��01.png");
	CreateTextureSP("�G�A�Q", 508, 20, 500, "cg/ev/ev413�N���A���G�v����_���ʃV���{��02.png");
	CreateTextureSP("�G�A�l", 507, 200, 190, "cg/ev/ev413�N���A���G�v����_���ʃV���{��02.png");
	CreateTextureSP("�G�A��", 506, 500, 200, "cg/ev/ev413�N���A���G�v����_���ʃV���{��03.png");
	CreateTextureSP("�G�A�Z", 505, 200, 350, "cg/ev/ev413�N���A���G�v����_���ʃV���{��04.png");
	CreateTextureSP("�G�A��", 504, 900, 50, "cg/ev/ev413�N���A���G�v����_���ʃV���{��04.png");
	CreateTextureSP("�G�A��", 503, 270, -170, "cg/ev/m/ev413�N���A���G�v����_���ʃV���{��01_m.png");
	CreateTextureSP("�G�A��", 502, 500, 150, "cg/ev/l/ev413�N���A���G�v����_���ʃV���{��01_l.png");
	CreateTextureSP("�G�摜", 100, -512, -576, "cg/ev/l/ev413�N���A���G�v����_l.jpg");

	FadeDelete("�G�F��", 2000, Axl1, false);

	Wait(500);

	CreateSE("SE01","se�[��_�R�~�J��_�L���L��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�A", 3500, @300, @0, null, false);
	Move("�G�A��", 3000, @250, @0, null, false);
	Move("�G�A�Q", 4000, @700, @0, null, false);
	Move("�G�A�l", 2000, @200, @0, null, false);
	Move("�G�A��", 3000, @200, @0, null, false);
	Move("�G�A�Z", 4000, @200, @0, null, false);
	Move("�G�A��", 3000, @-100, @0, null, false);
	Move("�G�A��", 2500, @300, @0, null, false);
	Move("�G�A��", 2500, @-800, @0, null, false);

	FadeDelete("�G�A", 1800, Axl3, false);
	FadeDelete("�G�A��", 1200, Axl3, false);
	FadeDelete("�G�A�Q", 2000, Axl3, false);
	FadeDelete("�G�A�l", 700, Axl3, false);
	FadeDelete("�G�A��", 2500, Axl3, false);
	FadeDelete("�G�A�Z", 3000, Axl3, false);
	FadeDelete("�G�A��", 2300, Axl3, false);
	FadeDelete("�G�A��", 2200, Axl3, false);
	FadeDelete("�G�A��", 2500, Axl3, true);

	Kirakirakirakira_Fade();

	Wait(500);

	Move("�G�摜", 3000, -190, 0, AxlDxl, true);

	Wait(800);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Something really&, really strange stood in front of me&.

The only things that covered it were a cute apron&, a gas 
mask&, and a pair of gloves&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�F��", 10000, "WHITE");
	Fade("�G�F��", 500, 1000, null, true);
	Delete("�G�v��*");
	Delete("�v��*");
	Delete("�G�摜");
	Fade("�G�ꖇ�G�Q", 0, 1000, null, true);

	CreateTextureSP("�G��", 101, Center, Middle, "cg/ev/m/ev413�N���A���G�v����_�l���N���A�Ɣw�i_m.jpg");
	SetShade("�G��", HEAVY);

	Move("�G��", 0, @-50, @0, null, true);
	Move("�G�ꖇ���t", 0, @100, @0, null, true);

	Fade("�G�ꖇ���t", 0, 1000, null, true);

	Move("�G��", 500, @50, @0, Dxl1, false);
	Move("�G�ꖇ���t", 500, @-100, @0, Dxl1, false);
	FadeDelete("�G�F��", 500, Dxl1, true);

	Fade("�G�ꖇ���t�k", 300, 1000, Dxl3, false);
	CreateSE("SE01","se�[��_�R�~�J��_�|�C01");
	MusicStart("SE01",0,700,0,800,null,false);
	Shake("�G�ꖇ���t", 300, 1, 1, 0, 0, 1000, Dxl1, true);

	CreateSE("SE01","se�[��_�R�~�J��_�|�C01");
	MusicStart("SE01",0,700,0,800,null,false);
	Shake("�G�ꖇ���t", 100, 1, 1, 0, 0, 1000, Dxl1, true);
	CreateSE("SE02","se�[��_�R�~�J��_�|�C01");
	MusicStart("SE02",0,700,0,800,null,false);
	Shake("�G�ꖇ���t", 200, 1, 1, 0, 0, 1000, Dxl1, true);

	FadeDelete("�G��", 1000, null, true);

	Wait(1000);

	CreateSE("SE01","se�[��_����_�h��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�ꖇ�G��", 0, 1000, null, false);
	Zoom("�G�ꖇ�G��", 200, 2500, 2500, Dxl3, false);
	Wait(150);
	Zoom("�G�ꖇ�G��", 200, 1000, 1000, Dxl3, true);

	Wait(500);

	SoundPlay("@dm003",0,450,true);

	Delete("�G�ꖇ��*");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I shake my head - mostly out of embarrassment - as Clear 
still stands there&, almost butt naked&, holding a knife 
in the kitchen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000030a04">
"Breakfast preparations are almost done&, so please sit
 down&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000040a01">
"&.&.&.&.&."

{	DeleteFw();}
//�y�N���A�z�������F�L���L���H
<voice name="�N���A" class="�N���A" src="voice/dm41/3000050a04">
"Did you sleep well last night? Wasn't your room sparkling? I took the time to finish cleaning while you were asleep&,  Master�`��"

//{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000060a01">
"&.&.&.You know&,"

{	DeleteFw();
	ClearComicNext(800,213,122,3,"fw");}
//�y�N���A�z�������F���͂�
<voice name="�N���A" class="�N���A" src="voice/dm41/3000070a04">
"Yes&, what is it&, Master?"

{	ClearComicNexDelete();}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000080a01">
"&.&.&.Are you retarded!?!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���������ƃN���A�ɉ񂵏R��

	CreateTextureEX("�G�ꖇ�G�Q", 1000, 0, InBottom, "cg/ev/m/ev900���t�R��ėp_m.jpg");
	CreateColorEXadd("�G�F��", 5000, "WHITE");

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,1200,null,false);
	Move("�G�ꖇ�G�Q", 180, @-288, @288, Axl2, false);
	Fade("�G�ꖇ�G�Q", 180, 1000, Dxl1, true);

	SetVertex("�G�ꖇ�G", 380, 250);


	Fade("�G�F��", 200, 1000, Dxl3, true);

	Delete("�G�ꖇ�G��");
	Delete("�G�ꖇ�G�Q");

	Fade("�G�ꖇ�G", 0, 1000, Dxl3, true);
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("�G�ꖇ�G", 200, 1500, 1500, Axl3, false);
	FadeDelete("�G�F��", 200, Axl2, true);

	Wait(50);
	FadeDelete("�G�ꖇ�G", 0, Dxl3, true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(500,300,0,5,0,0,1000,Dxl1,true);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
	ClearComicNext(20001,77, 313,2,"");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A�z�������F���ɁH
<voice name="�N���A" class="�N���A" src="voice/dm41/3000090a04">
"Ouch!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	ClearComicNexDelete();
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Still somewhat horrfied from the scene&, I thoughtlessly 
give Clear a roundhouse kick&. 

Clear's jaw recieves a harsh blow and he falls to the 
floor and starts to cry&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
	ClearComicNext(21000,58,358,16);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�N���A�z�������F�Y�[��
<voice name="�N���A" class="�N���A" src="voice/dm41/3000100a04">
"So- So mean&.&.&. I was working so hard for you&, Master!"

{	ClearComicNexDelete();
	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000110a01">
"Your idea of working hard is friggin' weird!"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");
	ClearComicNext(21000,58,358,16);}
//�y�N���A�z�������F�Y�[��
<voice name="�N���A" class="�N���A" src="voice/dm41/3000120a04">
"But don't they say that a man's romantic fantasy is some-
 one naked in an apron cooking for them? So I thought you'd
 like it too!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	ClearComicNexDelete();

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000130a01">
"Where did you learn that!? Anyway&, go and change out of
 that freaking apron!"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");
	ClearComicNext(21000,58,358,16);}
//�y�N���A�z�������F�Y�[��
<voice name="�N���A" class="�N���A" src="voice/dm41/3000140a04">
"Unngh&, yes&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	ClearComicNexDelete();
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Clear gets up&, still crying&, and leaves the counter&. 

He looks pathetic in that apron&. And his ass is still 
showing&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000150a01">
"Sheesh&, what was he thinking? That's so messed up&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm41/3000160a06">
"Surely that was an example of 'Don't cover your head and
 leave your bottom bare'&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000170a01">
"&.&.&.Yeah&, that's for sure&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(1000,true);

	Delete("�G*");

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg302021_5_�O���b�^�[����.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
I give Clear a sidelong glance when he comes back into the room&. Sighing&, I sit on the sofa&.

On the table in front of me is an entire menu's worth of 
breakfast foods piled up&.

&.&.&.This is amazing&. It all looks delicious&.

But Clear's the one who made all of this&.&.&.

I don't know how it tastes just by staring at it either&, 
so all of this might even taste awful&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_����_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0124]
&.&.&.I'm hungry&.

Because of the smells&, my empty stomach roars&, and I 
timidly reach for the fork&.

I stab something that looks like chicken&, and prepare 
myself&.&.&. <k>I bring it up to my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000180a01">
"&.&.&.Tasty&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000190a04">
"Isn't it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000200a01">
"Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("�G��", 5000);
	DeleteSt("C", 0,true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G��", 500, 0, 10, 0, 0, 500, Dxl1, false);
	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
Clear suddenly appears in front of me and I throw myself 
back&.

That was dangerous&, especially while I was holding this 
fork&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000210a01">
"You surprised me&.&.&. Don't scare me like that&."

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000220a04">
"I'm sorry&. But I did change clothes!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000230a01">
"Did you make all of this?"

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000240a04">
"Yes&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000250a01">
"Is that so&.&.&."

{	DeleteFw();}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000260a04">
"Is it good? It's delicious&, right? You did say that
 earlier&."

{
	Fw("fw���t_�ʏ�_sigh");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000270a01">
"Well&.&.&. Yeah&. It's good&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�N���A�z�������F�P���P��
<voice name="�N���A" class="�N���A" src="voice/dm41/3000280a04">
"Oh&, that's great! My effort paid off for you&, Master!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
Clear claps his hands together in high spirits&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000290a01">
"Did you take lessons on cleaning or cooking?"

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000300a04">
"Half of it was self taught&. Some of it was because I took
 care of Grandpa&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000310a01">
"Oh&, I see&. But how did you get all these ingredients?"

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000320a04">
"I got them from somewhere like a supermarket&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000330a01">
"You 'got' them?"

{
	DeleteFw();
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000340a04">
"Yes&. Everyone here gives things to others freely&."

{	Fw("fw���t_�ʏ�_cranky3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000350a01">
"Huh&.&.&. Of course the enlightened people under Toue-sama
 would do something like that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
As I speak&, I give into my hunger and start eating things 
one by one off the table&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000360a04">
"That corn soup over there is something I'm very confident
 in&. It's full of creamed corn&."

{	FwPro("fw���t_�ʏ�_think",2150,"fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000370a01">
"&.&.&.Mhm&, it's great&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",0,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/3000380a04">
"And I also thought I made this omelette well&. How is it?"

{	FwPro("fw���t_�ʏ�_think",2750,"fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000390a01">
"&.&.&.Delicious&."

{	DeleteFw();}
//�y�N���A�z�������F�P���P��
<voice name="�N���A" class="�N���A" src="voice/dm41/3000400a04">
"That's wonderful�`!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se�l��_�Ռ�_�@��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G��", 300, 5, 30, 0, 0, 500, Dxl2, false);
	FadeDelete("�G��", 300, null, true);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0241]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000410a01">
"Wait! We don't have the time to enjoy elegant breakfasts
 like this!!"

{	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z�������F�K�[��
<voice name="�N���A" class="�N���A" src="voice/dm41/3000420a04">
"W-Wah! Watch out&, Master!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/3000430a01">
"&.&.&.Ah&, my bad&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
The table could have flipped over if I had gotten up too 
roughly&.

It would have been bad to ruin all of this delicious food&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4140.nss"]

}
