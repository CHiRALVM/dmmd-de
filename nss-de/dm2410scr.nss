//<continuation number="120">
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


scene dm2410scr.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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

	#bg203011_0_�\�I�m�C�Y=true;
	#bg203011_0_�\�I�m�C�Y��=true;

	//�����o��`�폜
	Shake_LoopFreeDelete();
	Proc_dm2410scr_01Delete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2420scr.nss";

}


scene dm2410scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);
	CreateColorSP("�G�F��", 5000, "000000");

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");
	CreateTextureSP("�b/�G�w�i��", 500, Center, Middle, "cg/bg/bg203011_0_�\�I�m�C�Y��.png");
	CreateTextureEXadd("�b/�G�w�i������", 500, Center, Middle, "cg/bg/bg203011_0_�\�I�m�C�Y��.png");
	Fade("�b/�G�w�i������", 0, 250, null, true);
	CreateTextureSP("�b/�G�w�i��O��", 500, 671, 150, "cg/bg/bg203011_0_�\�I�m�C�Y��.png");
	CreateTextureSP("�b/�G�w�i��O", 500, Center, Middle, "cg/bg/bg203011_0_�\�I�m�C�Y��O.png");

	CreateColorEXadd("�b/�G�F����", 500, "FFFFFF");
	DrawTransition("�b/�G�F����", 1, 0, 100, 500, null, "cg/data/circle_08_00_0.png", true);

	MoveCamera("�b", 0, @0, @0, 500, null, true);

	Lens_Set("�����Y�P",4500,-288,-512,1600,1600);
	Fade("�����Y�P", 0, 0, null, true);

	FadeDelete("��w�i", 0, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.&.&.

&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�F��", 60000, 850, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
It's pitch black&.

I can't see anything&.
I can't hear anything&.

I can't tell if there's anything on any side of me&.

This&.&.&.
Is this the inside of Noiz's head?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Fade("�G�F��", 5000, 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
I stood there still for a while as my eyes adjusted to the dark&. I'm still able to make out some shapes&.

But all I could see was the outline of the floor&, the 
walls&, and the ceiling&. Nothing else but those&.

This is a room without anything in it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�F��", 6000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020a]
Where is Noiz?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�b/�G�w�i��O��", 10000, @512, @0, null, false);
	Fade("�b/�G�F����", 10000, 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020b]
Suddenly&, a rectangular hole widens on the wall to my 
right&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�l��_����_��������01");
	MusicStart("SE01",4000,200,0,600,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020c]
A white light fills the dark room and I see the figure of 
a human&.

The grey shape slugglishly walks into the room&, hunched 
over&, a white mask concealing its face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE02","se�l��_����_��������01");
	MusicStart("SE02",4000,150,-150,750,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
And groups of more figures with the exact same look were 
coming in&.

They were a ghastly sight&, as if they were people who had 
sucked the life and color from the earth only to let it 
rot inside of them&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE03","se�l��_����_��������01");
	MusicStart("SE03",4000,150,150,450,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
The masked people gather in the center of the room&, making a circle&.

In the center of the darkness&, a crying mask comes to the  surface and starts to spin around&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�b/�G�w�i��O��", 0, @512, @0, null, false);
	Fade("�b/�G�F����", 0, 500, null, false);

	CreateSE("SE11","se�[��_����_�m�C�Y01L");
	MusicStart("SE11",0,1200,0,1000,null,true);
	CreateTextureEXsub("�G������", 2990, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G������", 0, 1100, 1100, null, true);
	FadeFFR2("�G������", 0,1000, 10, 0, 0, 50,null, true);
	Fade("�G������", 0, 0, null, true);
	SetVolumeEX("SE11", 100, 10, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
My eyes glued to the bizarre display&, I notice something 
in the center of the circle&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 2000, "000000");
	CreateStencil("�G����",0,-475,-24,128,"cg/ev/x/ev241�������܂�m�C�Y_xl_�l���̂�.png",false);
	SetAlias("�G����","�G����");
	CreateTextureEX("�G����/�G�w�i", 2110, Center, Middle, "cg/data/noize_01_00_0.png");
	CreateTextureEXsub("�G����/�G���{��", 2120, -475,-24, "cg/ev/x/ev241�������܂�m�C�Y_xl_�l���̂�.png");

	Request("�G������", NormalRender);

	SetVolumeEX("SE11", 0, 1200, null);
	FadeFFR2("�G������", 0,1000, 10, 0, 0, 50,null, true);
	Fade("�G�F��", 0, 1000, null, true);
	Fade("�G������", 0, 0, null, true);
	SetVolumeEX("SE11", 100, 10, null);

	Wait(100);

	SetVolumeEX("SE11", 0, 1200, null);
	FadeFFR2("�G������", 0,1000, 10, 0, 0, 50,null, true);
	Zoom("�G����/�G�w�i", 0, 1100, 1100, null, true);

	Shake_LoopFree("@�G����/�G�w�i",30,20,20,30,1000);
	Fade("�G����/�G�w�i", 0, 1000, null, false);

	Fade("�G������", 0, 0, null, true);
	SetVolumeEX("SE11", 100, 10, null);
	Wait(100);
	SetVolumeEX("SE11", 5000, 200, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
A seemingly out of place monitor sits there&, and on it is  something like a sandstorm&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G����", 4000, -1024, -160, DxlAuto, false);
	Move("�G����/�G���{��", 4000, -1024, -160, DxlAuto, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
In it&.&.&. it looks like someone is cowering on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Fade("�G����/�G���{��", 0, 500, null, true);
	Wait(30);
	Fade("�G����/�G���{��", 70, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
That's&.&.&.

Noiz?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G����", 0, -1024, -160, DxlAuto, true);
	Move("�G����/�G���{��", 0, -1024, -160, DxlAuto, true);
	Fade("�G����/�G���{��", 2000, 1000, null, true);

	Position("@�G����/�G���{��", $x1, $y1);
	CreateTextureEXmul("�G����/�G���{�̐F", 2110, $x1, $y1, "cg/ev/x/ev241�������܂�m�C�Y_xl_�l���̂�.png");

	SetVolumeEX("SE11", 3000, 0, null);
	Fade("�G����/�G�w�i", 2000, 700, null, false);
	Fade("�G����/�G���{�̐F", 2000, 1000, null, false);
	Fade("�G����/�G���{��", 2000, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033a]
&.&.&.It's Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Proc_dm2410scr_03("��������","@�G����/�G���{�̐F");

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033b]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/1000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
It looks like he's sleeping with his eyes closed&.

&.&.&.Noiz&.

I try to call him&, but my voice won't come out&.
All that'll come out of my mouth is air&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Request("��������", Stop);
	Delete("��������");
	Delete("@�G����");
	Delete("�G�F��");
	FadeDelete("�G��", 1000, null, true);

	Request("SE01", Pause);
	Request("SE02", Pause);
	Request("SE03", Pause);

	SetFrequency("SE01", 0, 1000, Dxl3);
	SetFrequency("SE02", 0, 1000, Dxl3);
	SetFrequency("SE03", 0, 1000, Dxl3);

	SetVolumeEX("SE*", 1000, 200, null);
	Request("SE01", Resume);
	Request("SE02", Resume);
	Request("SE03", Resume);

	SoundPlay("@dm017",0,450,true);//�\�I

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
At that moment&, the orderly masks started to move around 
strangely&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE*", 1000, 300, null);
	SetFrequency("SE01", 0, 1500, Dxl3);
	SetFrequency("SE02", 0, 1500, Dxl3);
	SetFrequency("SE03", 0, 1500, Dxl3);

	CreateSE("SE01","se�l��_�Ռ�_���a��02");
	MusicStart("SE01",0,1200,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
The sound of cracking bones caused them all to scatter 
about&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE*", 1000, 400, null);
	SetFrequency("SE01", 0, 2000, Dxl3);
	SetFrequency("SE02", 0, 2000, Dxl3);
	SetFrequency("SE03", 0, 2000, Dxl3);

	CreateSE("SE01","se�l��_�Ռ�_���a��01");
	MusicStart("SE01",0,1200,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
The awful sounds piled over&, and then music came flowing 
in&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE*", 2000, 0, null);

	CreateSE("SEL21","se�[��_����_���ǂ남�ǂ�01");
	MusicStart("SEL21",3000,400,0,2000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
The rhythm distorted and turned into a faint sound of an 
old record&.

What was happening now was stirring up even more uneasinessthan I had before&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�t�t�A�N�X�N�X�N�X�A�t�t�t�b�Ƃ��̂я΂����ƒj�̐��i�m�C�Y�̗��e�j

	CreateSoundAkk("��","voice/dm24/1000030e04");
	SoundEffect("��","Echo",100,50,300,300);
	MusicStart("��",0,1500,-150,1000,null,false);

	CreateSoundAkk("��","voice/dm24/1000050e05");
	SoundEffect("��","Echo",100,50,300,300);
	MusicStart("��",0,1500,150,1000,null,false);

	WaitKey(500);

{	Fw("fw���t_�ʏ�_worry4");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/1000020a01">
"&.&.&.?"{	Wait(6000);}
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("��", 300, 0, null);
	SetVolumeEX("��", 300, 0, null);

//�������u���F�����݂̂̉��o�ɂ��܂����v
	Proc_dm2410scr_01();

//
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y��z
//<voice name="��" class="��" src="voice/dm24/1000031e04">
//<voice name="��" class="��" src="voice/dm24/1000040e04">
"Honesly&, why did he do that&.&.&.? <k>I wonder if it would
 just be better to have him not go outside&."

//�y���z
//<voice name="��" class="��" src="voice/dm24/1000051e05">
//<voice name="��" class="��" src="voice/dm24/1000060e05">
"The shame he's brought onto us will always linger&.<k>
 If he hadn't been brought to this world&, I would've
 considered it a blessing&." 

//�y��z
//<voice name="��" class="��" src="voice/dm24/1000070e04">
"Dear&, you've gone too far&.&.&."

//�y���z
//<voice name="��" class="��" src="voice/dm24/1000080e05">
"You don't have any intention of letting him out either&,
 do you?"

//�y��z
//<voice name="��" class="��" src="voice/dm24/1000090e04">
"&.&.&.That is true&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
//

	CreateTextureEX("�G������b", 2100, Center, Middle, "cg/ef/ef���m�g�[���l�Ԃ̖W�Q.png");

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/1000100a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�����艳", 2100, Center, Middle, "cg/ef/ef���m�g�[���l�Ԃ̖W�Qa.png");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
&.&.&.This conversation&.

This is inside Noiz's mind&.
Everything inside of him is manifesting&.

So this is a conversation Noiz has heard before&.

And the two talking are probably his parents&.

&.&.&.How awful&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�����蕸", 2100, Center, Middle, "cg/ef/ef���m�g�[���l�Ԃ̖W�Qb.png");

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/1000110a01">
"&.&.&.Noiz!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Proc_dm2410scr_01Delete();

	CreateSE("SE51","se�퓬_����_����01");
	MusicStart("SE51",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
I push my way through the jumble of masked people and make my way to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���o�F���m�g�[���l�Ԃ̖W�Q�A������v
/*
	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G��������b", 1100, Center, Middle, "cg/ef/ef���m�g�[���l�Ԃ̖W�Q.png");
	FadeDelete("�G��", 1000, null, true);
*/

	CreateColorSP("�G�F��", 5000, "FFFFFF");
	Wait(30);

	//Lens_Set("�����Y�P",4500,-288,-512,1600,1600);
	Fade("�����Y�P", 0, 1000, null, true);
	Lens_Start(4000);

	//CreateTextureSP("�G���o�w�i", 100, Center, Middle, "cg/bg/bg203011_0_�\�I�m�C�Y��.jpg");
	//Zoom("�G���o�w�i", 0, 1200, 1200, null, true);

//�������u���F�ꊇ�Œ�`����Əd���̂ŕ������܂��������v
	//CreateTextureEX("�G������b", 2100, Center, Middle, "cg/ef/ef���m�g�[���l�Ԃ̖W�Q.png");
	//CreateTextureEX("�G�����艳", 2100, Center, Middle, "cg/ef/ef���m�g�[���l�Ԃ̖W�Qa.png");
	//CreateTextureEX("�G�����蕸", 2100, Center, Middle, "cg/ef/ef���m�g�[���l�Ԃ̖W�Qb.png");


	Move("�G�����艳", 0, @0, @50, null, true);
	Move("�G�����蕸", 0, @0, @-30, null, true);
	Zoom("@�G������*", 0, 1250, 1250, null, true);
	CreateSE("MONOSE01","se�l��_�Ռ�_���a��02");
	MusicStartSet("MONOSE01",700,0,1000,null,false);

	//CreateSurfaceEX("�G���ʃT�t", 110,1000,"@�G���o�w�i");
	//MoveFFP1("@�G���ʃT�t",50000);
	//Fade("�G���ʃT�t", 0, 1000, null, true);

	$���[�v���[�u�i�b�g�� = "@�G������b";
	$���[�v���[�u�^�C�� = 400000;
	CreateProcessEX("�v���Z�X�V���N�V��", "FlyMovingXXX");
	Request("�v���Z�X�V���N�V��", Start);

	$���[�v���[�u�i�b�g���Q = "@�G�����艳";
	$���[�v���[�u�^�C���Q = 500000;
	CreateProcessEX("�v���Z�X�V���N�V���j", "FlyMovingXXX2");
	Request("�v���Z�X�V���N�V���j", Start);

	$���[�v���[�u�i�b�g���R = "@�G�����蕸";
	$���[�v���[�u�^�C���R = 600000;
	CreateProcessEX("�v���Z�X�V���N�V���T��", "FlyMovingXXX3");
	Request("�v���Z�X�V���N�V���T��", Start);

	CreateProcessEX("�v���Z�X�V���N�V������", "Proc_dm2410scr_02Act");
	Request("�v���Z�X�V���N�V������", Start);

	FadeDelete("�G�F��", 70, null, true);
	CreateSE("SE51","se�퓬_����_����01a");
	MusicStart("SE51",0,1000,0,1000,null,false);
	Shake("�����Y�P", 200, 0, 6, 0, 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072a]
But the masked figures started to change when I tried to 
get closer to him; they all began to sway around and 
blocked me off from Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_��_�ۂ߂�01");
	MusicStartSet("SE01",1000,0,1500,null,false);
	CreateColorEX("�G�F��", 4000, "FFFFFF");

	CreateProcessEX("�v���Z�X", "Proc_dm2410scr_04Act");
	Request("�v���Z�X", Start);

	FwPro("fw���t_�ʏ�_shout", 1300, "fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072b]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/1000120a01">
"Move! &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
A disgusting feeling goes through my fingers when I try to 
push them out of my way&. I pull my hand back in surprise&.

The masked people start to sneer and shake with noise&.

I check my hand&, but nothing's wrong with it&.

Was I just imagining my hand distorting when I touched 
them?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_��_�ۂ߂�01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Thinking that&, I try my way through the crowd again&.

&.&.&.My fingers warp again&.<k>
What the hell?

When I try to get to Noiz&, my fingers start to warp&. The 
masks sneer at me&.

&.&.&.Are they testing me?

So I can't get to Noiz unless I get over this disgusting 
situation?

This is different from reality&, so it's not as if it's 
actually disfiguring my body&.

This is only in the mind&, but I still need the courage&.

&.&.&.But either way&, I need to get to him&.

I was scared still&, but I tried to push through the masks  again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_��_�ۂ߂�01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	CreateSE("SE02","se�l��_����_�i�߂�01");
	MusicStart("SE02",0,1500,0,1000,null,false);
	CreateSE("SE03","se�l��_�Ռ�_���a��02");
	MusicStart("SE03",0,1500,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
An unnatural&, raw feeling spreads from my fingertips to my bones&.

&.&.&.This isn't reality&.<k>
This isn't real&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F���m�g�[���l�Ԃ̖W�Q�A�������v
	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G������*");
	Delete("�����Y�P");
	MoveCamera("�b", 300, @0, @0, 600, Dxl1, false);
	FadeDelete("�G�F��", 70, null, true);

	Wait(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
I pushed aside the dancing masked figures&, praying silentlyto myself&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE*", 150, 0, null);
	SetVolumeEX("@MONOSE01", 150, 0, null);
	Request("�v���Z�X*", Stop);
	Delete("�v���Z�X*");
	Delete("@MONOSE01");
	SetVolumeEX("@dm*", 150, 0, null);

	CreateSE("SE01","se�l��_�Ռ�_�]�|03����");
	MusicStart("SE01",0,1000,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
They fell without resistance as I pushed them aside&, and 
laid there like dead fish on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 4990);

	CreateTextureEX("�G�d�u", 5000, Center, Middle, "cg/ev/ev241�������܂�m�C�Y.jpg");
	Fade("�G�d�u", 2000, 1000, null, false);
	DrawTransition("�G�d�u", 2000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
When I get through all of them&, the monitor-like thing 
binds to Noiz&.

And suddenly&, every sound goes dead&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2420scr.nss"]

}

