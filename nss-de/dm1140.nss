//<continuation number="260">
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


scene dm1140.nss_MAIN
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
	#bg303021_5_��y�{�݃N���u�t���A=true;
	#bg303022_5_��y�{�݃N���u�t���A=true;
	#bg303023_5_��y�{�݃N���u�t���A=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1150.nss";

}


scene dm1140.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);

//���C�g����===========================================================
	CreateColorEXadd("�G�F���C�g1", 1109, "883355");
	CreateColorEXadd("�G�F���C�g2", 1109, "448800");
	CreateColorEXadd("�G�F���C�g3", 1109, "005588");
	DrawTransition("�G�F���C�g1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$���C�g�i�b�g���P = @�G�F���C�g1;
	$���C�g�i�b�g���Q = @�G�F���C�g2;
	$���C�g�i�b�g���R = @�G�F���C�g3;
	$���C�g�i�b�g�����x = 500;
	$���C�g�^�C�� = 500;

	CreateProcess("�v���Z�X���C�g�P", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("�v���Z�X���C�g�P","�v���Z�X���C�g�P");

	CreateTextureSP("�v���Z�X���]�G�w�i", 100, Center, Middle, "cg/bg/bg303021_5_��y�{�݃N���u�t���A.jpg");

	CreateLoopFade("�v���Z�X���]��",200,true,AddRender,cg/bg/bg303024_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);
	CreateLoopFade2("�v���Z�X���]���[�U�[",150,true,false,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);

	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	SetSurface("�v���Z�X���]*","�GSuf");
	Zoom("�GSuf", 0, 1500, 1500, null, true);
	Request("�GSuf", Smoothing);

	Move("�GSuf", 0, 150, @0, null, true);


	GoLoopFade("@�v���Z�X���]��",100);
	GoLoopFade2("@�v���Z�X���]���[�U�[",137);
	Request("@�v���Z�X���C�g�P", Start);


	Delete("��w�i");

//�\���J�n

	SoundPlay("@dm022",0,450,true);
	SetVolumeEX("@dm*", 1000, 800, null);

	Move("�GSuf", 6000, -150, @0, null, false);

	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);


	Wait(4000);

	CreatePlainSP("�G�X�N���[��", 300);
	Move("�GSuf", 0, 0, @0, null, true);
	Zoom("�GSuf", 0, 1000, 1000, null, true);

	Fade("�G�X�N���[��", 1000, 0, null, true);
	Delete("�G�X�N���[��");



//�������u���F�Ɩ��̉��o�v
//http://www.youtube.com/watch?v=3xx8E6R_x1Q&feature=player_embedded#!
//http://www.youtube.com/watch?v=03pGxKJ5-wQ&feature=related

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
We go through the entrance and enter a wide room&. There's 
loud music pounding throughout it and there's a weird 
smell floating around&.

The dark room is covered in fluorescent lights spinning 
around&, and men and women all around are dancing&, talking&, and drinking&.

So it's a club&.

{	SetVolumeEX("@dm*", 3000, 450, null);}
&.&.&.Anyway&, this mystery man&.

I shove off his hand and get a good look at him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y����z
<voice name="����" class="����" src="voice/dm11/4000010b05">
"Oh&, sorry for doing that so suddenly&. It must've been a
 scare&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
One of the lights dance across the floor and hit the man's 
face&, and I can see his distinct&, composed features&.

I only grab a quick glimpse&, but based on his looks&, he 
might be older than me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
He's wearing a kimono&, and that makes me think of Koujaku&.

He's the opposite of Koujaku&, with a blue kimono on&. He 
even has a blue tattoo on his neck&.

He looks calm&, smiling at me&, but his narrow eyes remind 
me of those of a fox&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st����_�ʏ�_shock");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y����z
<voice name="����" class="����" src="voice/dm11/4000020b05">
"I thought you were having some trouble&, so I went up to
 you&. Didn't you want to come in? Am I wrong?"

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000030a01">
"That&.&.&. I did&."

{	St("C",740, @0,@0,"st����_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm11/4000040b05">
"Great&. Glad I could help&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The man flashes a sweet smile&. His eyes now completely 
resemble those of a fox&. His age is still a mystery to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_normal2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000050a01">
"Please excuse me then&. Thank you very much&. But why did
 you do that?"

{	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm11/4000060b05">
"Do what?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000070a01">
"Letting me in&. We've never met before&, have we?"

{	St("C",740, @0,@0,"st����_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm11/4000080b05">
"No&. We're complete strangers&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000090a01">
"Then&, why&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y����z
<voice name="����" class="����" src="voice/dm11/4000100b05">
"No need to ask&. It was just on a whim&. Isn't talking about letting a person who shouldn't be here a bad idea?"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000110a01">
"That's- right&."

{	St("C",740, @0,@0,"st����_�ʏ�_smile");
	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",200,true);
	FadeStPro("C", 12600, 200);
}
//�y����z
<voice name="����" class="����" src="voice/dm11/4000120b05">
"Anyway&, it wasn't out of anything&. Don't look too deep
 into it&. This is paradise&. Go have some fun since I let
 you in&. Oh&, I almost forgot&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
The man reaches into his pocket and pulls out a card&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(16);

//�w�i�����������Ă���Plain��������Ƃ��������Ȃ邽�ߑΏ�
	CreateMask("�G�}�X�N��", 3100, 0, 0, "cg/mask/ci�c���C��_00_00.png", true);
	SetAlias("�G�}�X�N��","�G�}�X�N��");
	Zoom("�G�}�X�N��", 0, 0, 1000, null, true);

	CreateTextureSP("�G�}�X�N��/�G�}�X�N���g", 3110, 0, 0, "cg/mask/ci�c���C��_00_00z.png");
	CreateTextureSP("�G�}�X�N��/�G�摜", 3100, 0, 0, "cg/ef/ef��y�{�݃J�[�h_����.jpg");

	CreateSE("SE01","se����_��_�߂���01");//��
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("�G�}�X�N��", 200, 1000, 1000, Dxl1, true);

	Wait(300);

	Fw("fw����_�ʏ�_normal");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y����z
<voice name="����" class="����" src="voice/dm11/4000130b05">
"You can come here whenever if you have this&. Keep it with
 you&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000140a01">
"Huh&, but-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ�_smile");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y����z
<voice name="����" class="����" src="voice/dm11/4000150b05">
"No 'buts'&. Always accept a person's gift&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000160a01">
"Okay&.&.&."

{	DeleteFw();}

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(16);

	Zoom("�G�}�X�N��", 200, 0, 1000, Dxl1, true);
	Delete("�G�}�X�N��*");

	CreateSE("SE01","se����_��_�߂���01");//��
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
I wanted to refuse it&, but the man pushed it on me and I 
ended up taking it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y����z
<voice name="����" class="����" src="voice/dm11/4000170b05">
"Well&, I must be going now&. Until then&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
He waves his hand politely&, and disappears into the crowd&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_serious");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000180a01">
"What in the world was that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/4000190a06">
"Wasn't it just a kind passerby?"

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000200a01">
"He was really shady&, you know&. And his card&.&.&. what do I
 do with this?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/4000210a06">
"You should keep it&. Either that or you can chase after
 him&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000220a01">
"Well&, that'd be pretty rude&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0068]
He is the reason why I got in here in the first place&.&.&.

I inspect the card he gave me and put it into my coat 
pocket&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G��", 1000, null, true);

//�������u���o�F�R�R��ӂ���������\�����Ă����v
	CreatePlainEX("�G��", 100);
	Zoom("�G��", 0, 1500, 1500, null, true);
	MoveFFP1("@�G��",50000);
	Fade("�G��", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
&.&.&.The mystery man threw me off&, but I need to search for 
Koujaku now&.

I make my way through people who sway to the beat like 
seaweed&, and look around the dance floor&.

It's dark&, except for the flashing lights&, so it's hard to make out any faces&.

Even so&, this rhythm&.&.&.

The unsteady tempo and electric music pound into my head&, 
and I start to feel dizzy&.

I feel a weird sense of floating&, and the sound pressure 
pierces my brain; it all feels sickening&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(100);

	CreatePlainEX("�G��", 1000);
	MoveFFP1("@�G��",5000);

	Zoom("�G��", 500, 1100, 1100, Dxl1, false);
	Fade("�G��", 0, 500, null, true);

	Wait(500);

	Fade("�G��", 500, 0, null, true);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0076]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000230a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0077]
Goosebumps pop up on my skin&, and I can feel the nausea 
build up in my throat&. I cover my mouth with a hand&.

This is bad&, am I drunk&.&.&.?

How can people stand this combination of flashing lights 
and blaring music and not get dizzy?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I look around&, and see that everyone is blasted drunk and 
swinging around&.

They dance&, half-naked&, and it looks like some of them are having sex in a corner&.

Could this be&.&.&.

&.&.&.Some drug club?

I've heard rumors about drugs exploding in popularity when I was in the Old Resident District&.

I never was interested in it&, but someone said that they 
enter some sort of dream-like state when they get high&.

This bizzare music and lighting&.
They're both so intense&.&.&.

The floor is covered in violet smoke&, and soon it's hard 
to tell which is the floor and which is the ceiling&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/4000240a06">
"Aoba&, are you okay?"

{	Fw("fw���t_�ʏ�_sigh3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/4000250a01">
"&.&.&.I think I'm in trouble&.&.&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/4000260a06">
"You should go back and rest&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
My vision goes blurry&, and I can't stand myself up&.&.&.

I think of leaving the floor and start walking&.

But soon it feels like I'm walking on tofu&, rather than a 
hard floor&.

Somehow I keep myself going&.

{
//�������u���F�����ŉ����S�Ăӂ���Ə��������Ɂv
	SetVolumeEX("@dm*", 200, 0, null);
	Fade("�G�F��", 100, 1000, null, true);
}
&.&.&.At least I tried to&, and my vision went dark&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Huh?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");//�������u�r�d�Fse�l��_�Ռ�_�]�|02�v
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//�����t�@�C��["dm1150.nss"]

}
