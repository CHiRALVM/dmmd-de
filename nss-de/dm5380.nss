//<continuation number="880">
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


scene dm5380.nss_MAIN
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
	#ev011�E�C�g���o��a=true;
	#evf08���t�o���̔閧=true;
	#evf08���t�o���̔閧a=true;
	#evf08���t�o���̔閧b=true;


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5380sl.nss";

}


scene dm5380.nss
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

	CreateTextureSP("�G���S", 700, Center, Middle, "cg/ef/efl���S�����q�l.jpg");

	Delete("��w�i");

//�e�F�K�v�ł���Ή��L�v���Z�X��
//���O������R�c�R�c�ƃE�C���X���g���b�v���ߕt���Ă���

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	CreateSE("SE01","se�l��_����_����03L");
	MusicStart("SE01",3000,700,0,800,null,true);
	SetPan("SE01", 0, -1000, Dxl3);
	Wait(100);
	CreateSE("SE02","se�l��_����_����03L");
	MusicStart("SE02",3000,700,0,1000,null,true);
	SetPan("SE02", 0, 1000, Dxl3);

	FadeDelete("�G���S", 250, null, true);
}
Amidst my astonishment&, my ears pick up on the sound of 
casually approaching footsteps&.

Someone's walking down the middle of the pathway&.

A security guard?
It's dim so I can't see that well&.

As the footsteps came closer&, I was finally able to see 
the faces of their owners&.

{	SetVolumeEX("SE*", 300, 0, null);}

When I realized who they were&, I&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G�d�u", 1100, Center, InBottom, "cg/ev/ev011�E�C�g���o��a.jpg");
	CreateSE("SE01","se�l��_����_���03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�G�d�u", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
I couldn't stop my eyes from widening&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u", 4500, @0, -3, AxlDxl, true);

	Wait(1000);

	Fade("�G�d�u", 1000, 0, null, true);

	Wait(200);

//�R���ȍ~�A�E�C�g�������G�g���ꍇ�́A�����q�l�o�b�a���藧���G�Łi���q
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("ML",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000010b04">
"Yo&, so you made it all the way in here by yourself&. Well&,
 of course you would&, Aoba-san&."

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/8000020b09">
"We'd expect nothing less&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000030a01">
"You two&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Virus and Trip&.

Why are they&.&.&.

Virus tilts his head to the side and flashes me a strange 
smile&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_fake");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000040b04">
"You're asking yourself why we're here&, aren't you? That's
 what your face says&. Shall I tell you? It's quite simple&."

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000050b04">
"The reason is&.&.&. because we're part of Morphine&."

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile2");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/8000060b09">
"Right?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000070a01">
"Morphine&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
&.&.&.Ths is a lie&, right?

These two are part of Morphine?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i��", 800, Center, Middle, "cg/ev/evf02�����q�l�ÈłɘȂ�.jpg");
	Fade("�G�w�i��", 500, 1000, null, true);

//	Fw("fw�E�C���X_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000080b04">
"Well&, we are part of it&, but we don't do the dirty work
 like the rest do&. We're more like the leaders&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_normal");
	FadeSt("MR",0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Virus jerks his chin to the member in the black parka 
that's restraining me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i��", 500, null, true);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000090a01">
"&.&.&.You were decieving me&."

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000100b04">
"We never had any intention of doing so&. Although&, if
 that's what you believe&, it still doesn't change aything&."

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/8000110b09">
"In truth&, we truly are your fans&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_think");
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("ML",200,true);
	FadeStPro("ML", 4800, 200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000120b04">
"Well&, we're indifferent&. It's useless to talk this over&.
 More importantly&, you've gotten into something big&."

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000130b04">
"Even if I say that&, that person&.&.&. We used to be part of
 Sei-san's group&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000140a01">
"A part of Sei's group?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�K���ɉ��o�����ŏ����ĉ������v
	Delete("�G�d�u");

//�e�F�C�x���g����z

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G�ʂP", 10000);

	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_normal");
	FadeSt("MR",0,true);

	CreateTextureSPadd("��z�G���o", 2000, Center, Middle, "cg/ef/effi�e���r��ʗp���ʃt�B���^�[.jpg");
	Fade("��z�G���o", 0, 300, null, true);
	CreateTextureSP("��z�G���ʔw�i", 1000, Center, Middle, "cg/ev/ev520���]����a.jpg");
	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);
	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

	Wait(500);

	CreateTextureSP("��z�G���ʔw�i2", 999, -1024, Middle, "cg/ev/l/ev520���]����a_l.jpg");
	FadeDelete("��z�G���ʔw�i", 1000, null, true);

	Wait(500);

	CreatePlainSP("�G�ʂQ", 10000);
	Delete("��z*");
	FadeDelete("�G�ʂQ", 500, null, true);

	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000150a01">
"By Sei&, you mean the person that was with Toue at the
 event&.&.&."

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000160b04">
"&.&.&.Aoba-san&. You don't have any knowledge of what happened once you were born&, do you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000170a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);

	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",0,true);

	CreateTextureSP("�G�w�i", 100, Center, -100, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");

	Move("@StNameC/C*", 0, @-70, @0, null, true);
	Move("�G�w�i", 0, @-50, @0, null, true);

	Move("@StNameC/C*", 1000, @70, @0, null, false);
	Move("�G�w�i", 1000, @50, @0, null, false);

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_fake");
	FadeSt("C",500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
Virus grins at my silence&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000180b04">
"You don't&. Well&, you did make it all the way here&, so
 let's talk a little&."

{	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000190b04">
"I said it earlier&, Aoba-san&. You are a fragment of
 Sei-san's twin&."

{	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000200b04">
"At the end of Toue's long research initiative&, he had
 finally gotten his hands on the ultimate power&.&.&.
 He gets his power from Sei-san&."

{	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000210b04">
"You're the same as Sei-san&, something born out of Toue
 Inc&.'s research&, their property&. A child with specific
 genetic engineering&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_think");
	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",200,true);
	FadeStPro("C", 3500, 200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000220b04">
"And Sei-san is your older brother&. You two are fraternal
 twins&."

{	SoundPlay("@dm006",0,450,true);
	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000230a01">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
I'm a child with manipulated genes&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
And Sei is&.&. my brother&.&.&.?

And my twin&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_normal");
	FadeAllSt(0,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000240b04">
"The founder of the theory on what your special abilities were based on was a product of your grandmother's research&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_think");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000250b04">
"It seemed like she had not the slightest idea that her
 research was for engineering a certain child&. It was
 a neural research on the outside&."

{	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000260b04">
"You two twins were designed to have the power to control
 peoples' wills by nature&."

{	St("C",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000270b04">
"But life is a miracle&, and the amount of minute detail and calculations that went into your births were limitless&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�摜", 110, Center, 0, "cg/ev/m/evf08���t�o���̔閧_m.jpg");
	CreateTextureSP("�G�摜��", 107, Center, 0, "cg/ev/m/evf08���t�o���̔閧_m.jpg");
	CreateTextureSP("�G�摜�Q", 105, Center, Middle, "cg/ev/evf08���t�o���̔閧.jpg");
	CreateTextureSP("�G�摜�l", 100, Center, Middle, "cg/ev/evf08���t�o���̔閧a.jpg");
	CreateTextureSPmul("�G����z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");
	CreateColor("�G���o�F", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("�G���o�F","�G���o�F");
	Request("�G���o�F", OverlayRender);

	DeleteSt("C", 0,true);

	FadeDelete("�G��", 1000, null, true);

//	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0165]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000280b04">
"You two were entrusted with unique powers&, and both of you also had no pigment when you were born&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�摜", 2000, @0, @-288, AxlDxl, true);

//	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0167]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000290b04">
"Furthermore&, both your and Sei-san's hair was connected&.
 They also had nerves in them&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�E�C���X_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000300b04">
"The sense in your hair must be the rememnants of that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�����폜���肢���܂��B
//�y���t�z
//<voice name="���t" class="���t" src="voice/dm53/8000310a01">
//"&.&.&.Why would they do such a&.&.&."

	FadeDelete("�G�摜", 500, null, true);

//	Fw("fw�E�C���X_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0175]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000320b04">
"It was a hereditary abnormality&, and you were products
 that were cultivated&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�摜��", 1000, null, true);

//	Fw("fw�E�C���X_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0177]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000330b04">
"And by bad luck&, you two had died just as you were born&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�摜�Q", 500, null, true);

	Wait(800);

//	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0179]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000340b04">
"When Sei-san's hair was severed&, his breathing returned&,
 but yours hadn't&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�摜", 110, 0, 50, "cg/ev/l/evf08���t�o���̔閧_l.jpg");
	CreateTextureSP("�G�摜��", 107, 0, 0, "cg/ev/l/evf08���t�o���̔閧b_l.jpg");
	CreateTextureSP("�G�摜�Q", 100, Center, Middle, "cg/ev/evf08���t�o���̔閧b.jpg");

	Delete("�G�摜�l");

	Move("�G�摜", 1000, @0, @-50, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

//	Fw("fw�E�C���X_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000350b04">
"Your grandmother was absolutely horrified that a child
 that had just been born had died because of her research&."

//{	Fw("fw�E�C���X_�ʏ�_serious");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000360b04">
"And so&, she took your corpse away from the research
 facility&. She may have thought of giving you a funeral
 like a normal human being&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

	FadeDelete("�G�摜", 500, null, true);

	Wait(500);

//	Fw("fw�E�C���X_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0183]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000370b04">
"And despite it all&, you came back to life on the way&. You
 had revived&. Your grandmother&.&.&. She must've been both
 astonished and overjoyed&."

//{	Fw("fw�E�C���X_�ʏ�_think");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000380b04">
"Probably because she had been the one who had killed you&.
 She took you to her hometown on this island and left you
 to the church&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�摜��", 700, null, true);

//	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0185]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000390b04">
"Why did she do that? To end it all? This is my guess&,
 but&.&.&. she was a researcher&, somehow or another&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�E�C���X_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000400b04">
"No matter how much she loved you&, no matter how she raised you&, she still couldn't help to see you as a research
 subject&. She would have not been able to forgive herself&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateColorSP("�G�F��", 1000, "000000");

	Delete("�G�摜�Q");
	Delete("�G��*");
	Delete("�G�w�i*");

	St("C",1720, @0,@0,"bu���t_�ʏ�_normal");
	FadeSt("C",0,true);

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);
	CreateTextureSPmul("��z�g", 2000, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//	Fw("fw�E�C���X_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0195]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000410b04">
"And after that&, as your skin gained pigment and was the
 exact same as a human's&, you grew up quickly&, shut up in
 your little world&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("@StNameC/C*", 1500, @-171, @0, AxlDxl, true);

	Wait(500);

	St("MR",1720, @0,@0,"bu�Z�C_�ʏ�_lost");
	FadeSt("MR",500,true);

//	Fw("fw�E�C���X_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0197]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000420b04">
"But amazingly&, you two siblings kept your powers&. You with
 your voice&, and Sei-san with his eyes&, you can hold
 peoples' hearts captive&."

//{	Fw("fw�E�C���X_�ʏ�_normal");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000430b04">
"You hold a power that a mediocre human could never dream
 of obtaining&. Surely&, gifts from God&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i*");
	Delete("�G�F��");
	Delete("��z*");

	DeleteAllSt(0,true);

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0199]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000440a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",300,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000450b04">
"Now that you know&, is there anything you'd like to ask?"

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000460a01">
"&.&.&.You're lying&."

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000470b04">
"Do you think so? It was all pertaining to you&, and I don't
 care much if you don't think so&. All I spoke of was of
 what I know as truth&."

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000480a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
It's likely&.&.&. that Virus's story is true&.

He wouldn't gain anything from making up a story like that&.

But&.&.&. my mind hasn't proccessed it all yet&.

Not knowing how to take it all in&, my heart beats 
rigorously&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000490a01">
"&.&.&.You two stayed with me for all that time knowing this?"

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000500b04">
"That's incorrect&."

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_normal2");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/8000510b09">
"Incorrect&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
They both reply immediately&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_fake");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000520b04">
"I had said this earlier&, but the fact that we're your fans isn't a lie&."

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/8000530b09">
"You were quite striking as you fought in Rhyme as an
 entertaining psycho&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�摜", 105, Center, Middle, "cg/ev/ev900�̂̍r��Ă����t.jpg");
	CreateTextureSP("�G�摜��", 100, Center, Middle, "cg/ev/ev083���t�a�@��.jpg");

	CreateTextureSPmul("�G����z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");
	CreateColor("�G���o�F", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("�G���o�F","�G���o�F");
	Request("�G���o�F", OverlayRender);

	DeleteAllSt(0,true);

	FadeDelete("�G��", 500, null, true);

//	Fw("fw�E�C���X_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000540b04">
"Yeah&, yeah&. When you used Scrap on your opponent in
 Rhyme&, that was when we became aware of it&. We realized were
 really an amazing person&."

//{	Fw("fw�E�C���X_�ʏ�_think");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000550b04">
"So we investigated a little and put it all together&."

//{	Fw("fw�E�C���X_�ʏ�_normal");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000560b04">
"We were surprised to find that Aoba-san was a peron who
 had the same potential that Sei-san did&."

//{	Fw("fw�E�C���X_�ʏ�_serious");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000570b04">
"But you weren't self-aware of it in the least&. There was
 a danger that you'd unknowingly go on rampages&."

//{	FwPro("fw�E�C���X_�ʏ�_serious",5000,"fw�E�C���X_�ʏ�_normal");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000580b04">
"It would've been troublesome if someone other than us
 noticed as well&. So we made it so that you'd forget
 about Rhyme&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�摜", 500, null, true);

	Wait(500);

//	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000590b04">
"Not exactly Rhyme&, but what accidents you'd leave behind
 after your little brawls&."

//{	Fw("fw�E�C���X_�ʏ�_normal");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000600b04">
"If I were to speak for Morphine&, it's an elite force
 prepared for manipulating human nature&. Erasing memories
 is a trivial thing&."

//{	Fw("fw�E�C���X_�ʏ�_fake");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000610b04">
"Well&, when our control was a little too loose and we were
 too visible&, we famously 'disappeared'&."

//{	Fw("fw�E�C���X_�ʏ�_normal");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000620b04">
"So the ones who erased the memories of your past with
 Rhyme were us&. We're very sorry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�摜*");
	Delete("�G��*");

	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",0,true);

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
Virus apologizes in a tone that doesnt sound very 
apologetic&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_fake");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000630b04">
"But Toue had Sei-san&, so we thought it'd be all right if
 we kept Aoba-san our little secret&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0290]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000640b04">
"Well&, in the end Toue found you anyway&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000650a01">
"&.&.&.&.&."

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_fake");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000660b04">
"Now&, would you come with us&, Aoba-san? You can see Sei-san as well&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000670a01">
"&.&.&.Has Sei been with Toue this entire time?"

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000680b04">
"That's right&. Although he doesn't have much energy to keep on living anymore&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0300]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000690a01">
"!"

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",0,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000700b04">
"Sei-san has had his consciousness continually analyzed
 since he was a child&. The time he can keep himself moving
 is very short&."

{
	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_think");
	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",200,true);
	FadeStPro("C", 6300, 200);
}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000710b04">
"And because of that&, his heart is weak as well&. He's at
 his limit&. Toue has been calling your grandmother to keep
 Sei-san alive longer&." 

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000720a01">
"No way&.&.&."

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000730b04">
"But the luminescence equipment developed to model Sei's
 eyes has been completed&. So in the worst case&, we'll
 be all right even if Sei-san is gone&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0310]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000740a01">
"Luminenscence equipment?"

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("C",0,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000750b04">
"It produces the different signals that are in Sei-san's
 unique vision&."

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_think");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000760b04">
"Once it's been studied and a large scale of them are
 released&, a number of people will be able to replicate
 the same results&."

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",0,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000770b04">
"Well&, Sei-san is a human with the power naturally in him&,
 so we'd rather not lose him if we could&."

{	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_fake");
	FadeSt("C",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000780b04">
"But even if we do lose him&, there'd be no more reason to
 worry&. Because now we have you&, Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0320]
Those words&.&.&. My hair stands up just by hearing them&.

This isn't funny&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0330]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000790b04">
"So if you have no further questions&.&.&. we're very sorry&,
 but we'll be taking you&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i2000", 2000, Center, Middle, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");
	Fade("�G�w�i2000", 500, 1000, null, true);

	CreateSE("SE02","se�l��_����_�ߎC��25");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 3000);
	Shake("�G��", 200, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0340]
The men in black parkas grab onto me and pull me along&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0350]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000800a01">
"&.&.&.! Let me go&.&.!"

{	Fw("fw�E�C���X_�ʏ�_normal");}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000810b04">
"Please be obedient&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0360]
A slight smile rises to Virus's face&.

I stare at it&, thinking of how unbelievable everything is 
right now&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile");
	FadeAllSt(0,true);

	FadeDelete("�G�w�i2000", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0370]
I believed in them&.

I thought that they were good people even if they were 
yakuza&.

But&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0380]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8000820a01">
"&.&.&.Why are you guys working for someone like Toue&.&.&.!?"

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_shock");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�o�b�a_normal");
	FadeAllSt(200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000830b04">
"Us?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0390]
Virus and Trip blankly exchange glances&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_fake");
	FadeSt("ML",200,true);
	FadeStPro("ML", 8000, 200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0400]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000840b04">
"If I were to answer&, well&.&.&. We like interesting things&.
 And very fun things&."

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile2");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/8000850b09">
"Yeah&, yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0410]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000860b04">
"We have no interest in Toue's ideas&. The reason we're here
 is because Sei-san is an amazing person&, and we can relax
 while at Toue's side&."

{	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8000870b04">
"And that's it&."

{	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm53/8000880b09">
"That's it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5380sl.nss"]

}
