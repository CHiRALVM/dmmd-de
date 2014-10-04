//<continuation number="240">
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


scene dm0470.nss_MAIN
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
	$GameName = "dm0480.nss";

}


scene dm0470.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101022_5_���Z����ʂ藠�H�n02");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i90", 90, 0, Middle, "cg/bg/bg101021_5_���Z����ʂ藠�H�n01�����q�l.jpg");

	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal");
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_serious");
	FadeAllSt(0,true);

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se�l��_����_����04����");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i", 1000, Center, Middle, "cg/bg/m/bg101022_5_���Z����ʂ藠�H�n02_m.jpg");
	Move("�G�w�i", 300, @-100, @0, Dxl1, false);
	Fade("�G�w�i", 300, 1000, null, true);

	DeleteAllSt(0,true);

	Fw("fwm�x��A_�ʏ�_normal");
}
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm04/7000010e15a">
"Hey&, you all over there! What're you up to!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
We were exposed and policemen started to run after us in 
hordes&. They're the ones who patrol this area&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�e_�\����01����");
	MusicStart("SE01",0,700,0,800,null,false);
//	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
//	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
//	Wait(30);
//	Fade("�G�t���b�V����", 100, 0, Dxl1, true);

	Wait(500);

	Fw("fwm�x��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm04/7000020e15b">
"Don't move! If you do&, I'll shoot!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
The policemen all point their guns at the same time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm009",0,450,true);

	St("C",740, @0,@0,"st�g��_�ʏ�_cranky2");
	FadeSt("C",0,true);

	Fade("�G�w�i", 300, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/7000030a02">
"Well&, we're in trouble&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_shock");
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_normal");
	FadeSt("ML",180,true);
	FadeStPro("ML", 3800, 200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/7000040b04">
"Oh my&, they're even more noisy today than ever&. They're
 so full of energy&."

{
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_smile");
	FadeSt("MR",200,true);
}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/7000050b09">
"Isn't this where we split up?"

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_fake");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/7000060b04">
"We're not too good at that either&. Please escape&,
 Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/7000070a01">
"Got it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @0,@0,"st�g���b�v_�ʏ�_normal");
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_normal");
	FadeAllSt(180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/7000080b09">
"We'll all run in like a kamikaze attack&. Then feel free to
 split up&. Run on my signal&."

{	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_normal2");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/7000090b09">
"One&, two&.&.&. three!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//������_����_����o��
	CreateSE("SE01","se�l��_����_���苎��01����");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",0,700,0,900,null,false);

	CreateColorSP("�G����", 6000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl2, "cg/data/slide_01_01_0.png", true);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Trip gives the signal&, and we all start running&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�w�i", 0, 1000, null, true);

	DrawDelete("�G����", 300, 100, Dxl2, "slide_01_01_1", true);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm04/7000100e15a">
"You fuckers!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�e_���C�x����01����");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 50, 1000, Dxl1, true);
	Wait(30);
	Fade("�G�t���b�V����", 50, 0, Dxl1, true);
	Wait(30);
	Fade("�G�t���b�V����", 50, 1000, Dxl1, true);
	Wait(30);
	Fade("�G�t���b�V����", 50, 0, Dxl1, true);
	Wait(30);
	Fade("�G�t���b�V����", 50, 1000, Dxl1, true);
	Wait(30);
	Fade("�G�t���b�V����", 50, 0, Dxl1, true);
	Wait(30);
	Fade("�G�t���b�V����", 50, 1000, Dxl1, true);
	Wait(30);
	Fade("�G�t���b�V����", 50, 0, Dxl1, true);

	Delete("�G�w�i90");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
The policemen start firing&. But they never found the effort
to train every day&, so not a bullet even scratched us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�E�C���X_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/7000101b04">
"All-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�t���b�V����", 0, 1000, Dxl1, true);
	Wait(30);
	Fade("�G�t���b�V����", 200, 0, Dxl1, true);

	Fw("fw�g���b�v_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/7000110b09">
"-Right!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�t���b�V����", 0, 1000, Dxl1, true);
	Wait(30);
	Fade("�G�t���b�V����", 200, 0, Dxl1, true);

	Fw("fwm�x��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm04/7000120e15b">
"Whoa!? Y-You!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//	BG(10,"bg101022_5_���Z����ʂ藠�H�n02");
//	FadeBG(0,true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02����");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
//	Wait(30);
//	Fade("�G�t���b�V����", 100, 0, Dxl1, true);

//	Shake("�G�w�i", 400, 5, 15, 0, 0, 500, Dxl3, false);
	FadeDelete("�G�w�i", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0037]
Trip and Virus jump onto a policeman&, and they all fall 
like dominos&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�_normal");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm04/7000130b04">
"See you later then&, Aoba-san!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",720, @0,@0,"st�g���b�v_�ʏ�_smile");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm04/7000140b09">
"Bye bye!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/7000150a01">
"Thanks!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",0,700,0,900,null,false);

	DeleteFw();
	DeleteAllSt(180,true);

	SetVolumeEX("SE*", 3000, 0, null);

	St("C",740, @0,@0,"st�g��_�ʏ�_shout");
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/7000160a02">
"Let's go&, Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm04/7000170e15a">
"B-Bastards&.&.&.&. Stay right there!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
Virus and Trip go to the right&, and Koujaku and I run to 
the left as fast as we can&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_���苎��01����");
	MusicStart("SE01",0,700,0,1000,null,true);

	SetVolumeEX("@dm*", 1000, 0, null);
	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	OnBG(10,"bg101011_1_���Z����ʂ�\");
	FadeBG(0,true);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(2000);

	CreateSE("SE02","se��_����_���l������ʂ�01L");
	MusicStart("SE02",2000,700,0,1000,null,true);

	DrawDelete("�G����", 250, 100, Dxl1, "slide_01_01_0", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Behind us I could hear the sound of gunshots and angry 
yelling&, but as we ran from Yukisagi to Aoyagi I couldn't 
hear anything at all&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/7000180a01">
"Ha&.&.&. Haah&, hah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_worry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/7000190a02">
"Haa&.&.&. We're having an awfully bad day&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
We really are&.&.&.

I catch my breath and close my eyes&, and my vision slowly  becomes clearer&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE02", 1000, 1, null);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1000, 0, Middle, "cg/bg/m/bg101021_5_���Z����ʂ藠�H�n01�����q�l_m.jpg");

	EfRecoIn2(500);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
The Dry Juice tag painted out in black&.
The bloodstains scattered everywhere&.

Where did Mizuki go?

I wonder if he's okay&.
Who did this?

Maybe another team held a grudge against Dry Juice or 
something&.&.&.

Maybe it was&.&.&. Morphine?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE02", 1000, 500, null);

	EfRecoOut1(100);

	Delete("�G����*");
	DeleteSt("C", 0,true);

	EfRecoIn2(400);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/7000200a01">
"What the hell's going on?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_sad");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/7000210a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
A few moments pass and I boil over in vivid anger&. 

No matter the reason&, this is unforgivable&.

Going around doing things like this&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/7000220a01">
"I'm definitely going to find the guys who did this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_cool");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/7000230a02">
"That's right&. I'll go ask my team members if they saw
 anything&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/7000240a01">
"I'm counting on you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
I don't know who or what Morphine is&, but they've got to 
be the criminals&.

If Mizuki and the others are hurt when I catch Morphine&.&.&. I won't go easy on them&.

I'll never forgive them for this&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(1000, true);
	Wait(1000);

//�����t�@�C��["dm0480.nss"]

}
