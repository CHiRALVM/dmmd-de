//<continuation number="40">
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


scene dm4492.nss_MAIN
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

	#bg304181_5_���]�^���[��������=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4493ed.nss";

}


scene dm4492.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg304181_5_���]�^���[��������");
	FadeBG(0,true);

	Lens_Set("�����Y�P",5000,-300,-400,1500,1500);
	Lens_Start(3500);

	FadeDelete("��w�i", 1000, null, true);

//�����o�F��ʈÓ]

	DrawTransition("�G�F��", 500, 1000, 800, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	DrawTransition("�G�F��", 500, 800, 1000, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(1000);
	DrawTransition("�G�F��", 1500, 1000, 300, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",3000,250,0,100,null,true);

	CreateSE("SE02","se�[��_�R�~�J��_�V���R�[01");
	MusicStart("SE02",3000,300,0,500,null,true);

	Wait(2000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
...When I open my eyes&, all I see is pure white&.

A while ceiling&, white walls&, a white floor&.

But it's different from Oval Tower&.

It's even more inhumanly cold&.

I can hear electric sounds beeping at fixed intervals&, and it bothers me&.

Unable to move&, I do nothing but stare at the ceiling&.

Drops of a clear liquid fall&, descending ever so slowly&.

Like a small snake eating at me&, a tube is fixated to my 
body&.

I don't know how many times my body has been tampered with&.

The violent pain from the examinations and the repeated 
experiments&.&.&.

I can't feel anything anymore&.

I wonder when I started to forget&.

All that I have is my white world&.

A completely isolated world&.

Whether I'm dead or alive&, it doesn't matter anymore&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE*", 3000, 0, null);

	TextBoxDelete(0);

	DrawTransition("�G�F��", 3000, 300, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(2000);

//�������ƌC�����ߕt���Ă��āA�����~�܂�
	CreateSE("SE03","se�l��_����_����03L");
	MusicStart("SE03",3500,600,0,900,null,false);

	CreateTextureSP("�G�w�i2", 2000, -383, -207, "cg/bg/m/bg304181_5_���]�^���[��������_m.jpg");

	Delete("�����Y*");

	Wait(4500);

	SetVolumeEX("SE*", 50, 0, null);

	CreateColorSP("�G����", 5000, "BLACK");

	Wait(600);

	Delete("�G�F��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/9200010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Someone walks up to me&.

It must be another researcher in a white coat&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

	CreateColorSPadd("�G�F��", 2000, "FFFFFF");
	Fade("�G�F��", 1500, 500, null, false);

	DrawDelete("�G����", 1500, 100, null, "slide_05_00_0", true);
	Move("�G�w�i2", 800, @-80, @0, Dxl1, false);
	FadeDelete("�G�F��", 800, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Or so I thought&, but a bright color comes to my eyes&.

And my world begins to blur&.&.&.<k>
It's like a bulb of light&.

A small light that shines over me as I lay trapped in this white world&.

I see two moles on his chin&.<k>
When I see them&, an old happiness fills my chest&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(200);

	CreatePlainSP("�G��", 10000);
	Delete("�G�w�i2");

//�����o�F���o����_�����ړ���st�̑���or������\����
	CreateTextureSP("�G�w�i", 200, Center, -250, "cg/bg/m/bg304181_5_���]�^���[��������_m.jpg");
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);

	CreateTextureSP("�L����", 210, Center, -1550, "cg/st/x/st�N���A_�ʏ�}�X�N�Ȃ�_normal_x.png");

	FadeDelete("�G��", 1000, null, false);

	Move("�G�w�i", 3000, @0, @300, Dxl1, false);
	Move("�L����", 3000, @0, @150, Dxl1, true);

	CreatePlainSP("�G��", 1000);

	Move("�L����", 0, @0, -400, null, true);

	Wait(400);

	FadeDelete("�G��", 1000, null, false);

	Move("�G�w�i", 3000, @0, @150, Dxl1, false);
	Move("�L����", 3000, @0, -237, Dxl1, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9200020a04">
"Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
He smiles&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9200030a04">
"From now on&, we'll always be together&. I've gotten
 permission from Toue&. Always&, and forever&.&.&."

{
	CreatePlainSP("�G��", 500);

	CreateTextureEX("�L����2", 211, Center, -237, "cg/st/x/st�N���A_�ʏ�}�X�N�Ȃ�_normal2_x.png");
	Fade("�L����2", 0, 1000, null, true);

	FadeDelete("�G��", 300, null, true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9200040a04">
"You're mine now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 4000, 1000, Axl1, true);

	Wait(2000);

	ClearFadeAll(2000, true);

//�����t�@�C��["dm4493ed.nss"]

}
