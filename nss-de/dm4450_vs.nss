//<continuation number="310">
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


scene dm4450_vs.nss_MAIN
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
	$GameName = "dm4460_vs.nss";

}


scene dm4450_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm019",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	St("C",740, @0,@0,"st���]_�ʏ�_smile");
	FadeSt("C",0,true);

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	DeleteAllSt(180,true);

	St("MR",700, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	St("ML",700, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");

	CreateSE("SE01","se�l��_����_���03");
	MusicStart("SE01",0,800,0,1000,null,false);
	SetPan("SE01", 0, 300, Dxl3);
	Wait(200);
	CreateSE("SE02","se�l��_����_���03");
	MusicStart("SE02",0,800,0,1000,null,false);
	SetPan("SE02", 0, -300, Dxl3);

	FadeAllSt(180,true);

	Wait(500);
}
Toue raises his right hand&, and the two walk up on his 
signal&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���]_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/5000010b02">
"These two are your little brothers&, R-2E's SP Series&. Of
 course the R-2E series has higher abilities than you -
 they're close to perfection&."

{	Fw("fw���]_�ʏ�_normal");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/5000020b02">
"To your right is ��&, and to your left&, ���Q&."

{	Fw("fw���]_�ʏ�_smile");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/5000030b02">
"Now&, isn't this a touching family reunion?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg304121_5_���]�^���[���]�̊�_m.jpg");


	Wait(500);
	FadeDelete("�G��", 500, null, true);

	Wait(800);

	St("C",700, @0,@0,"bu�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	CreateSE("SE01","se�l��_����_���03");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",500,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The one named �� walks up to Clear&. He wears a smiling 
face full of pride&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",700, @0,@0,"bu�N���A��_�ʏ�}�X�N�Ȃ�_sigh");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/5000040b18">
"Ahh&. I don't really want to do this&, but it's not like I
 can go against Master's orders&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",700, @0,@0,"bu�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/5000050b18">
"Anyway&, you can't even fight back against us&, can you?"

{	St("C",700, @0,@0,"bu�N���A��_�ʏ�}�X�N�Ȃ�_pride");
	FadeSt("C",200,true);}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/5000060b18">
"If you go against your key lock&, won't your Auto Repair
 cease to work? Aren't you already breaking down&, my stupid
 older brother?"

{	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_pinch");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/5000070a04">
"&.&.&.!"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/5000080a01">
"Breaking down&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);
	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",0,true);

	Delete("�G�w�i");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/5000090b02">
"They have a key lock that is set so they can't oppose
 their own kind&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/5000100b02">
"Usually their programming doesn't allow it in the first
 place&, but Clear is an exception&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/5000110b02">
"In the case they disobey their programming&, measures are
 taken: Auto Repair is turned off and ceases to function&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/5000120b02">
"In other words&, their body will break down and they will
 be unable to recover&. At that point our help is necessary
 for restoration&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	OnBG(10,"bg304122_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	DeleteSt("C", 0,true);
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_worry4");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/5000130a01">
"That&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
So that must be why Clear's been in so much pain&.&.&.

{
	CreateSE("SE01","se�[��_���__�K�т�01");
	MusicStart("SE01",0,450,0,2000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);
}
As if to only support Toue's words more&, fragments of skin start to peel off of Clear's arm and fall to the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/5000140a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	DeleteSt("C", 0,true);
	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/5000150b02">
"Clear's younger brothers also have a key lock&, but it has
 been overridden now&, justified because they mean to punish
 a wrongdoer&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/5000160a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("@dm*", 2000, 0, null);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�g�w�i", 100, Center, Middle, "cg/bg/m/bg304121_5_���]�^���[���]�̊�_m.jpg");
	CreateTextureSP("�G�g���G", 1000, Center, Middle, "cg/bu/bu�N���A��_�ʏ�}�X�N�Ȃ�_pride.png");

	DeleteAllSt(0,true);

	SetVertex("�G�g���G", center, 300);

	SoundPlay("@dm008",0,450,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/5000170b18">
"Let's go&, older brother!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 4000, Center, Middle, "cg/bg/bg304122_5_���]�^���[���]�̊�.jpg");
	CreateMovieEX("�G�g����", 1000, 286, 50, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("�G�g����", 0, 3000, 3000, Dxl1, true);

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�g����", 0, 1000, null, true);
	Zoom("�G�g���G", 400, 2000, 2000, Dxl3, false);
	Zoom("�G�g�w�i", 400, 1400, 1400, Dxl2, false);
	Zoom("�G�g����", 400, 3500, 3500, Dxl2, false);
	Wait(60);
	Fade("�G�w�i", 200, 1000, Dxl1, true);

	Delete("�G�g*");

	OnBG(10,"bg304122_5_���]�^���[���]�̊�");
	FadeBG(0,true);
	Delete("�G�w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
�� starts to run towards Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/5000180a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 0, 1000, null, true);
	DrawTransition("�G�F��", 100, 0, 1000, 100, Dxl3, "cg/data/circle_05_00_0.png", true);
	Delete("�G�w�i");
	DeleteSt("C", 0,true);
	Wait(50);
	Fade("�G�F��", 50, 0, null, true);


	Wait(30);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("�G�F��", 0, 1000, null, true);
	DrawTransition("�G�F��", 100, 0, 1000, 100, Dxl3, "cg/data/circle_08_00_0.png", true);
	Wait(50);
	Fade("�G�F��", 50, 0, null, true);

	Wait(30);


	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);
	DrawTransition("�G�F��", 100, 0, 1000, 100, Dxl3, "cg/data/zzex_circle_01_00_0.png", true);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(50);
	Fade("�G�F��", 50, 0, null, true);


	Wait(30);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��03");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("�G�F��", 100, 1000, null, true);
	Wait(50);
	Fade("�G�F��", 100, 0, null, false);
	BGPlainShake(1000,300,10,10,0,0,1000,Dxl2,true);

	Wait(30);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
�� bashes into Clear in no time&, and then draws a fist and readies a kick&.

Clear tries to defend himself&, But �� is too overwhelmingly
fast for him&. He ends up taking the blow&.

If only he didn't have that key lock&, Clear could fight 
back&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_���03");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,500,0,1000,null,false);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_pinch");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/5000190a04">
"&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	St("C",700, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_pride");
	FadeSt("C",0,true);

	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/5000200b18">
"If I keep this up&, soon you won't even be able to move!
 But come on&, you're boring me!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Move("@StNameC/C*", 300, @500, @0, Dxl3, false);
	Fade("�G�t���b�V����", 150, 1000, Dxl1, true);
	DeleteSt("C", 0,true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 200, 5, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("�G�t���b�V����", 150, Dxl1, true);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0125]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/5000210a04">
"Ugh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�[��_���__�K�т�01");
	MusicStart("SE02",0,600,0,2000,null,false);

	SetVolumeEX("SE*", 1800, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
Clear takes a direct hit from�@��'s leg&, and parts of his 
body splinter off&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/5000220a01">
"&.&.&.Clear!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
Without even caring to look&, I just run up to Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/5000230a04">
"Please don't come over here!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
His words cause my entire body to go numb and freeze in 
place&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Fade("�G�w�i", 0, 0, null, true);

	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",0,true);

	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/5000240a04">
"Please don't come here&, Aoba-san&. Please&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0185]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/5000250a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	St("C",700, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_sigh");
	FadeSt("C",0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");

	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/5000260b18">
"You're weak&, brother&. I thought that we could have at
 least had some fun&. Too bad&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�t���b�V����", 5000, "WHITE");
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��03");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("�G�t���b�V����", 150, 1000, Dxl3, true);
	Wait(30);
	DeleteAllSt(0,true);
	Delete("�G���o");

	BGPlainShake(1000,200,10,10,0,0,1000,Axl1,false);
	FadeDelete("�G�t���b�V����", 100, Dxl1, true);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0195]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/5000270a04">
"Uh&.&.&. Ugh!"

{	Fw("fw���t_�ʏ�_shout2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/5000280a01">
"Clear!"

{	St("C",700, @0,@0,"bu�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/5000290b18">
"Doesn't it hurt? You can't even fight back&. That's just
 the proof that you were made like the rest of us&."

{	St("C",700, @0,@0,"bu�N���A��_�ʏ�}�X�N�Ȃ�_pride");
	FadeSt("C",200,true);}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/5000300b18">
"We're not human&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�t���b�V����", 5000, "WHITE");
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�t���b�V����", 150, 1000, Dxl3, true);
	Wait(30);
	Delete("�G���o");
	DeleteAllSt(0,true);
	BGPlainShake(1000,200,10,10,0,0,1000,Axl1,false);
	FadeDelete("�G�t���b�V����", 100, Dxl1, true);

//	Wait(500);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/5000310a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4460_vs.nss"]

}
