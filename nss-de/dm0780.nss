//<continuation number="70">
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


scene dm0780.nss_MAIN
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
	$GameName = "dm0790.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=2;

}


scene dm0780.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "#000000");

	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i200", 200, -109, 0, "cg/bg/l/bg104031_5_���t���_l.jpg");
	CreateTextureSP("�G�w�i100", 100, -109, 0, "cg/bg/l/bg104031_5_���t���_l.jpg");
	SetShade("�G�w�i200", HEAVY);

	Delete("��w�i");

	DrawTransition("�G�F��", 1000, 1000, 800, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	DrawTransition("�G�F��", 1000, 800, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(1000);

	DrawTransition("�G�F��", 1500, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);

//�����o�F�@���[�g�̂݁A�����Ř@���[�g�V�i���I�u�̂�����鈫���P�v������B
//��dm0775�̂��Ɓi���q�j

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.The next time I open my eyes&, all I see is the ceiling&. 


//{	Fw("fw���t_�ʏ�_shock4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/8000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 100, 0, 1000, 50, DxlAxl, "cg/data/slide_05_00_0.png", true);
	SetShade("�G�w�i", LIGHT);
	Wait(50);
	DrawTransition("�G����", 100, 1000, 0, 50, DxlAxl, "cg/data/slide_05_00_0.png", true);

	DrawTransition("�G����", 100, 0, 1000, 50, DxlAxl, "cg/data/slide_05_00_0.png", true);
	SetShade("�G�w�i", NULL);
	Wait(50);
	DrawDelete("�G����", 100, 50, DxlAxl, "slide_05_00_0", true);

	Wait(500);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
This is&.&.&. my room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(1300);

	DrawDelete("�G����", 1000, 100, null, "slide_05_00_0", true);

	FadeDelete("�G�w�i200", 1500, null, true);

//	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I blink a few times&, and slowly my sense of reality comes 
back to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����Ƀ��x���F�Q
//�e�F����
$HALevel=2;
	HAFade(2000, 0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Ouch&.&.&.

The inside of my head keeps pounding&.

I need some medicine&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,900,null,false);

	Move("�G�w�i100", 1000, @0, @-100, Dxl1, false);
	FadeDelete("�G�w�i100", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I sluggishly get up and I see Ren coiled up under the 
futon&.

Just like how he always would&.&.&. on a normal day&.

Looking at him&, I feel like I've come back to my senses&.

We finally came back home&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}

I reach out my hand to Ren and start to lightly pet him&. 
He starts up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm07/8000020a06">
"Aoba&."

{	Fw("fw���t_�ʏ�_confuse");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/8000030a01">
"Good morning&, Ren&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm07/8000040a06">
"Good morning&. How's your health?"

{	Fw("fw���t_�ʏ�_sigh3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/8000050a01">
"I have a headache&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm07/8000060a06">
"I see&. You haven't taken any medicine yet?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/8000070a01">
"Nope&. Let's head downstairs&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,900,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I get up from my bed to leave&, and hold Ren in my arms 
with me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Ouch&.&.&.

It feels like an awful&, violent vibration keeps moving 
through my body&.


{	SoundPlay("@dm012",0,450,true);}
But I smell the scent of a lot of food coming from the 
hallway&, and forget the pain for a little while&.

Granny must've made something&.

&.&.&.Granny&. I'm so glad she's safe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_���t��K�i_�o��ʏ�01");
	MusicStart("SE01",0,700,0,1100,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
Since hapiness can't exactly fill my stomach&, I go 
downstairs&.  

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0790.nss"]

}
