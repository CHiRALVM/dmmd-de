//<continuation number="80">
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


scene dm1420.nss_MAIN
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
	#ev142�c���g���Ǝh��=true;

	#bg202031_3_�\�I�g�����ƑO�O��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1430.nss";

}


scene dm1420.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 18000);

	//OnBG(10,"bg503011_1_�g������g������");
	//FadeBG(0,true);

	//FadeDelete("��w�i", 0 null, true);

	TextBoxDelete(0);

//�����������Ԃ���ƑS�Ă��ݍ���
	CreateColorEXadd("�G����", 18900, "FFFFFF");
	Fade("�G����", 0, 500, null, true);
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", false);
	Wait(100);
	Fade("�G����", 1000, 1000, Axl3, true);

	Wait(300);

	PrintBG2("��w�i");
	CreateColorSPadd("�G����", 1000, "FFFFFF");
	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.Suddenly&, my vision goes white&.

Even when I close my eye&, the bright light is still just 
as painful&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//��������ʂ̂܂�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/2000010a02">
"By the time you got here&.&.&. it was already too late&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SEL01","se����_�f�ʋ@_��]03");
	MusicStart("SEL01",2000,500,0,600,null,true);
	CreateSE("SEL02","se����_�f�ʋ@_��]02L");
	MusicStart("SEL02",2000,500,0,500,null,true);

	CreateTextureSPmul("�G�w�i", 990, Center, Middle, "cg/data/circle_02_00_1.png");
	CreateMovieEXover("�G���������", 980, Center, Middle, true, true, "dx/mv�X�g���{.ngs");
	Fade("�G���������", 0, 300, null, true);
	Zoom("�G���������", 0, 3200, 2400, null, true);

	CreateTextureSP("�G���w�i��", 110, Center, Middle, "cg/bg/bg202021_3_�\�I�g�����Ə�����.jpg");
	CreateTextureSP("�G���w�i��", 109, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ���.jpg");
	CreateTextureSP("�G���w�i�O", 108, Center, Middle, "cg/bg/bg202031_3_�\�I�g�����ƑO�O��.jpg");
	CreateTextureSP("�G���w�i�l", 107, Center, Middle, "cg/ev/ev142�c���g���Ǝh��.jpg");

	SetTone("�G���w�i*", Sepia);

//����������������
	FadeDelete("�G����", 1000, null, true);
	Wait(300);

	FadeDelete("�G���w�i��", 200, null, false);
	Shake("�G���w�i��", 200, 0, 20, 0, 0, 300, null, false);
	Shake("�G���w�i��", 200, 0, 20, 0, 0, 300, null, true);

	Wait(300);

	FadeDelete("�G���w�i��", 200, null, false);
	Shake("�G���w�i��", 200, 0, 20, 0, 0, 300, null, false);
	Shake("�G���w�i�O", 200, 0, 20, 0, 0, 300, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
The light fades away and images start to reflect in my 
head&.

It slowly turns into something like a silent movie&.

By a large mansion&, I see his mother is leading a young 
Koujaku by the hand&. And a man that looks like a yakuza 
boss&.

And standing next to them&.&.&. is a younger Ryuuhou&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G���w�i�O", 200, null, false);
	Shake("�G���w�i�O", 200, 0, 20, 0, 0, 300, null, false);
	Shake("�G���w�i�l", 200, 0, 20, 0, 0, 300, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The room with the futon and glowing candles&.
Sprwaled on the floor is Koujaku&, with Ryuuhou etching in 
his tattoo&.

Koujaku's tattoo is warped&, and he claws at the tatami mat&.
He must be trying to endure the pain&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SEL*", 2000, 0, null);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 200, 1000, null, true);

	Wait(1000);
	Delete("�G��*");
	CreateColorSP("�G�F����", 50, "000000");
	CreateTextureSP("�G���w�i", 100, Center, Middle, "cg/anime/Left/blood_C_6.png");
	SetShade("�G���w�i", HEAVY);

	CreateTextureSP("�G���g����", 90, Center, Middle, "cg/ef/ef�g���V��_�c��.png");
	SetTone("�G���g����", Sepia);
	Move("�G���g����", 0, @0, @-144, null, true);

	CreateTextureEX("�G��������", 80, Center, Middle, "cg/ef/efx03���t�����01e.png");
	SetVertex("�G��������", 467, 478);
	CreateTextureEX("�G�������l", 80, Center, Middle, "cg/ef/efx03���t�����01d.png");
	SetVertex("�G�������l", 189, 462);
	CreateTextureEX("�G�������O", 80, Center, Middle, "cg/ef/efx03���t�����01c.png");
	SetVertex("�G�������O", 638, 450);
	CreateTextureEX("�G��������", 80, Center, Middle, "cg/ef/efx03���t�����01b.png");
	SetVertex("�G��������", 560, 520);
	CreateTextureEX("�G��������", 80, Center, Middle, "cg/ef/efx03���t�����01a.png");
	SetVertex("�G��������", 240, 486);

	CreateSE("Proc_dm1420_01ActSE01","se�[��_��_�͂˂�01");
	MusicStartSet("Proc_dm1420_01ActSE01",600,0,800,null,false);

	Fade("�G��������", 0, 400, null, true);

	Request("�G������*", Smoothing);
	Move("�G������*", 0, @0, @-144, null, true);

	FadeDelete("�G�F��", 1000, null, true);

	CreateProcessEX("�v���Z�X", "Proc_dm1420_01Act");
	Request("�v���Z�X", Start);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
As the view goes black&, another display appears&.

A mass of people are laying on the floor&, and only one 
person&, Koujaku&, holding his blade&, stands&.

Around him&.&.&. is a sea of blood&.
Koujaku is covered with wounds and blood&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/2000020a02">
"That was the day the tattoo was completed&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
Again&, Koujaku's voice appears from nowhere&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/2000030a02">
"The pain from the needles grew stronger and stronger&, and
 I couldn't take it anymore and lost conciousness&. So when
 I woke up&.&.&. all I could see was a sea of blood&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/2000040a02">
"The whole family was on the ground&, and I had not a clue
 what had just happened&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/2000050a02">
"The thing I couldn't believe&.&.&. was that my mother was
 there&. I looked at my hands&, and then my sword; it was all covered in blood&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/2000060a02">
"I had gone into a rage&, and hurt everyone&. Even though I
 was only some kid with a blade&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/2000070a02">
"Everyone there was covered in wounds&, and barely holding
 on&. My mother too&. But&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/2000080a02">
"My mother lost consciousness and never woke up&. She died&.&.
 and it was all my fault&. I killed her&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(1000, true);
	Wait(500);

	Request("�v���Z�X", Stop);
	Delete("�v���Z�X");

//�����t�@�C��["dm1430.nss"]

}
