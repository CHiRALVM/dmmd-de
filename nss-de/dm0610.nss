//<continuation number="570">
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


scene dm0610.nss_MAIN
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
	#ev061�S���W��=true;
//	#bg102021_5_���}�n����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0620.nss";

}


scene dm0610.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102021_5_���}�n����");
	FadeBG(0,true);

	SoundPlay("@dm002",0,450,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
In the storehouse in Heibon's basement&, we start a make-
shift meeting held around a table&, sitting on the sofas&. 

Haga-san seems like he's choosing the smart way to do 
things; he shows us down here and goes back upstairs to 
the shop&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev061�S���W��.jpg");
	Fade("�G�d�u100", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Koujaku&, Clear&, Mink&, and I sit down on a sofa&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u100", 300, null, true);

	Fw("fw�g��_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000010a02">
"&.&.&.So&, let's continue off where we were&. What happened
 to Tae-san? She isn't responding at all&. Just like you
 sometimes&."

{	Fw("fw�g��_�ʏ�_cool");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000020a02">
"We know Tae-san hates Coils&. So that might just be the
 issue here&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000030a01">
"That's&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I hesitate to speak&, and Koujaku flashes a frown&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000040a02">
"What happened?"

{	Fw("fw���t_�ʏ�_worry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000050a01">
"&.&.&.She was taken&."

{	Fw("fw�g��_�ʏ�_angry4");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000060a02">
"By who!?"

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000070a05">
"Morphine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Koujaku laughs scornfully at Mink's words&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_mad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000080a02">
"Hah? Hey now&, don't try to pull my leg here&. Morphine? The ones who mysteriously disappeared? Tae-san doesn't do Rib&, you know that right?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000090a01">
"&.&.&.Koujaku&. I saw it&. Morphine's tag&."

{	Fw("fw�g��_�ʏ�_normal2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000100a02">
"&.&.&.Are you serious?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
When I came home and Granny wasn't there&, when I met Mink&.&.And when I shortly spoke with a member of Morphine&.&.&. No&,  Dry Juice&. 

Coming back to the topic of Mink kidnapping me would only  fan the flames&, so I left it alone&.

Koujaku listened with much seriousness&, let out a small 
sigh&, and leaned back on his chair&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 1000, -832, -140, "cg/ev/l/ev061�S���W��_l.jpg");
	CreateTextureSP("�G�w�i��", 900, 50, 0, "cg/ev/l/ev061�S���W��_l.jpg");

//���r�d�F�\�t�@�[�ə~���
	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i", 500, -832, -96, Dxl1, false);
	FadeDelete("�G��", 500, null, true);

//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000110a02">
"It's unbelievable&. Maybe "Morphine" might just be some
 guys trying to trick you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Koujaku glares Mink's way with obvious hostility&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000120a02">
"So those guys are the culprits&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�w�i", 500, @-50, @0, Dxl1, false);
	Move("�G�w�i��", 500, @-50, @0, Dxl1, false);
	Fade("�G�w�i", 500, 0, null, true);

//	Fw("fw�~���N_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000130a05">
"If you don't believe it&, then you don't have to push
 yourself to join in&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");

	CreateTextureSP("�G�}�X�N�g", 1100, 20, 0, "cg/mask/ci�X���b�V��_05_00z.png");
	CreateMask("�G�}�X�N�E", 100, 20, 0, "cg/mask/ci�X���b�V��_05_01.png", true);
	SetAlias("�G�}�X�N�E","�G�}�X�N�E");
	CreateTextureSP("�G�}�X�N�E/�G�w�i", 1000, -450, -50, "cg/ev/l/ev061�S���W��_l.jpg");

	CreateMask("�G�}�X�N��", 1050, 0, 0, "cg/mask/ci�X���b�V��_05_00.png", false);
	SetAlias("�G�}�X�N��","�G�}�X�N��");
	CreateTextureSP("�G�}�X�N��/�G�w�i", 1000, 0, 0, "cg/ev/l/ev061�S���W��_l.jpg");

	DrawDelete("�G��", 500, 100, null, "blind_02_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0048]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000140a02">
"Oh? Why do you feel the need to say that&, you prick?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000160a02">
"You haven't come up with jack shit here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�~���N_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000170a05">
"You're not the one who decides that&, he does&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Mink points to me with his pipe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000180a05">
"In exchange for helping with the search for his
 grandmother&, he accepted my conditions&. That's
 what we agreed on&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000190a02">
"What the hell&.&.&.What do you mean&, accepted your
 conditions?"

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000200a05">
"I have no obligation to tell you&. I'm just here to point
 out where her general location is&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000210a05">
"And to pursue the members of the team who abducted her&,
 and relay that information&. If you don't believe that
 either&, do whatever you want&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ev/l/ev061�S���W��_l.jpg");
	Zoom("�G�w�i", 0, 1600, 1600, null, true);
	SetShade("�G�w�i", MEDIUM);
	Request("�G�w�i", Smoothing);
	Move("�G�w�i", 0, -1635, 287, null, true);

	St("C",340, @0,@0,"fu�g��_�ʏ푾���Ȃ�_angry3");
	FadeSt("C",0,true);

	FadeDelete("�G�}�X�N�g",10,null);
	Fade("�G�w�i��", 10, 0, null, false);
	Move("�G�}�X�N�E",500,@1024,@0,Dxl1,false);
	Move("�G�}�X�N��",500,@-1024,@0,Dxl1,true);

	Delete("�G�w�i��");
	Delete("�G�}�X�N*");

//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000220a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Koujaku looks at me&. What's with his eyes? 
It's as if they're asking me questions&.

I&.&.&.

&.&.&.I already decided on this&.

I can understand Koujaku's anxieties and doubts all too 
well&. <k>It's not like I trust Mink in the least either&.

But no one else knows where Granny could be&.

I don't know if blindly searching would work at all&.

All I can do&.&.&. is take a bet on him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000230a01">
"&.&.&.Koujaku&, I want to save Granny&. I can't think of any
 other way&."

{	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_angry");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000240a02">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000250a01">
"Please help me with this&."

{	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_worry");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000260a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_think");
	FadeSt("C",200,true);

	Wait(1000);

	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_cool");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Koujaku's anger gradually fades from his face&, and his eyesgain a spark to them&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_cool2");
	FadeSt("C",200,true);
//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000270a02">
"&.&.&.I got it&. That's all you have to say&. I'm not sold&, but I just have to trust you&."

{	Fw("fw���t_�ʏ�_smile");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000280a01">
"Thanks&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_normal");
	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_angry3");
	FadeSt("C",200,true);
	FadeStPro("C", 2800, 200);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000290a02">
"I don't mind if it's for you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);

	CreateTextureSP("�G�w�i", 1000, -450, -50, "cg/ev/l/ev061�S���W��_l.jpg");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
Koujaku once again scowls at Mink&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�}�X�N�g", 1100, 20, 0, "cg/mask/ci�X���b�V��_05_00z.png");
	CreateMask("�G�}�X�N�E", 100, 0, 0, "cg/mask/ci�X���b�V��_05_01.png", true);
	SetAlias("�G�}�X�N�E","�G�}�X�N�E");
	CreateTextureSP("�G�}�X�N�E/�G�w�i", 1000, -450, -50, "cg/ev/l/ev061�S���W��_l.jpg");
	CreateMask("�G�}�X�N��", 1050, 20, 0, "cg/mask/ci�X���b�V��_05_00.png", false);
	SetAlias("�G�}�X�N��","�G�}�X�N��");
	CreateTextureSP("�G�}�X�N��/�G�w�i", 1000, 0, 0, "cg/ev/l/ev061�S���W��_l.jpg");

	Delete("�G�w�i");
	CreateTextureSP("�G�w�i��", 100, 0, 0, "cg/ev/l/ev061�S���W��_l.jpg");

	DrawDelete("�G��", 500, 100, null, "blind_02_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
Mink breathes out a puff of white smoke&, and looks to the  staircase&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�}�X�N*");
	Delete("�G�}�X�N/�G*");

	DrawDelete("�G��", 500, 100, null, "blind_02_00_0", true);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000300a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
At first I thought he as trying to rile up Koujaku by 
ignoring him&.&.&. but he looks like he's observing something instead&.

Is something there?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000310a05">
"Hey&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�H��
	CreateSE("SE01","se����_����_�H�΂�������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�i��", 500, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Mink turns his chin to his cockatoo&.

The cockatoo flaps its wings and goes out the door to the  first floor&.

{
	CreateSE("SE01","se����_���t�����_���J������01");
	MusicStart("SE01",0,500,0,800,null,false);
}
I hear clattering&, and he's brought something back with 
him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm06/1000320c09">
"P!"

{	Fw("fw�g��_�ʏ�_normal2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000330a02">
"What's that?"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/1000340a04">
"A block?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000350a01">
"This&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateMaskSetSPTate("�G��", 3010);//�i�b�g���A�D��x
	CreateTextureSP("�G��/�G�w�i", 100, Center, Middle, "cg/bg/m/bg102021_5_���}�n����_m.jpg");
	CreateTextureSP("�G��/�G���G", 1000, Center, Middle, "cg/fu/x/fuAM�E�T�M���h�L_�ʏ�_normal_x.png");
	CreateColorEX("�G��/�G����", 700, "000000");

	SetShade("�G��/�G�w�i", MEDIUM);

	Fade("�G��/�G����", 0, 300, null, true);

	OpenTateMask("�G��",200, 1000,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
The cockatoo brought back a cube&.

Wait&, this looks familiar&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CloseTateMask("�G��",200,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�

//	Wait(500);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000360a01">
"Noiz&. It's him again&."

{	Fw("fw�~���N_�ʏ�_normal");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000370a05">
"What bad manners&."

{	Fw("fw�g��_�ʏ�_cranky2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000390a02">
"Again? Does he eavesdrop as a hobby?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/1000400a04">
"So this is what I heard at the door earlier&."

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000410a05">
"An aquaintance?"

{	Fw("fw���t_�ʏ�_fake");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000420a01">
"I guess you sort of could call him that&."

{	Fw("fw�~���N_�ʏ�_normal");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000430a05">
"The information gathering type&, huh&. Well&, it looks as
 if that's what this thing is for&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 500, -926, -100, "cg/bg/l/bg102021_5_���}�n����_l.jpg");
	SetShade("�G�w�i", MEDIUM);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 200, 0, 10, 0, 0, 500, Axl3, false);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
Mink holds up my arm as high as his ears&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);

//	Fw("fw�~���N_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000440a05">
"Call him up here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000450a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000460a05">
"Use the same tone of voice you use at the shop&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000470a01">
"How would I call him!?"

{	St("C",740, @0,@0,"fu�~���N_�ʏ�_pride");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/1000480a05">
"Any guy with a decent brain can take advantage of things&.
 A strategy to play cards is a good idea&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");
	DeleteSt("C", 0,true);
	FadeDelete("�G��", 500, null, true);

	Fw("fw�g��_�ʏ�_angry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000490a02">
"Hey&, what are you telling him?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
Koujaku turns his attention over here&, and Mink lets go of me&. 

Most likely&.&.&. Mink is talking about my voice&.

Even if you tell me that&.&.&.

The callers? Is it really okay to just use the  tone I use with customers&.&.&.?

I look at the cube the cockatoo retrieved&, and take a deep breath&.

Honestly&, both Mink and Noiz give me bad feelings that I 
can't really describe&.&.&.

But it's to save Granny&.
I have to do it&.

I'll speak how I usually do to customers&, but change my 
tone of voice a bit&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateMaskSetSPTate("�G��", 3010);//�i�b�g���A�D��x
	CreateTextureSP("�G��/�G�w�i", 100, Center, Middle, "cg/bg/m/bg102021_5_���}�n����_m.jpg");
	CreateTextureSP("�G��/�G���G", 1000, Center, Middle, "cg/fu/x/fuAM�E�T�M���h�L_�ʏ�_normal_x.png");
	CreateColorSP("�G��/�G����", 700, "000000");

	SetShade("�G��/�G�w�i", MEDIUM);

	Fade("�G��/�G����", 0, 300, null, true);

	OpenTateMask("�G��",200, 1000,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

//	Wait(300);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000500a01">
"&.&.&.&.Noiz&, you're there&, right? Are you listening?"

{
	Fw("fwm����_�ʏ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/1000510a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000520a01">
"Some stuff happened&, and it's serious&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000530a01">
"Honestly&, it might not be enough with only us&. So&.&.&. would you lend me a hand until it's over?" 

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000540a01">
"I'll do whatever you want&."

{	Fw("fw�g��_�ʏ�_normal2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/1000550a02">
"Aoba!?"

{	Fw("fw���t_�ʏ�͍s�g_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/1000560a01">
"&.&.&.So please&. Please help me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CloseTateMask("�G��",200,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//�����t�@�C��["dm0620.nss"]

}
