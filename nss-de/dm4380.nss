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


scene dm4380.nss_MAIN
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
	#ev960�N���A���͍s�g=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4390.nss";

#CFGVC_CLEARALPHA=1;//�R���t�B�O�F�N���A���{�C�X���

	//�����Ƀ��x���ݒ�
	$HALevel=3;

}


scene dm4380.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm005",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	DrawDelete("��w�i", 500, 100, Dxl1, "blind_01_00_1", true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/8000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
When I enter the isolated alleyway&, I see a figure with 
silver hair standing around&.

Is it Clear?
&.&.&.I thought correctly&, but he isn't alone&.

There are three people of equal height&.
One stands with his back to me&, while the other two stand 
on the other side of him&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
When I see the faces of the two standing on the other 
side&, I think my eyes are playing tricks on me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	St("ML",740, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	FadeAllSt(300,true);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G���w�i", 1000, Center, Middle, "cg/bg/l/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_l.jpg");
	CreateTextureSP("�G���w�i��", 1500, Center, Middle, "cg/bg/l/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_l.jpg");
	CreateTextureSP("�G�����G", 1000, Center, Middle, "cg/fu/x/fu�N���A��2_�}�X�N�Ȃ�_normal_x01.png");
	CreateTextureSP("�G�����G��", 1505, Center, Middle, "cg/fu/x/fu�N���A��_�}�X�N�Ȃ�_normal_x01.png");

	SetShade("�G���w*", MEDIUM);

	Wait(300);

	Move("�G�����G��", 1000, @50, @0, Dxl1, false);
	Move("�G���w�i��", 1000, @30, @0, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(500);

	CreatePlainSP("�G��", 5000);

	Delete("�G���w�i��");
	Delete("�G�����G��");

	Move("�G�����G", 1000, @-50, @0, Dxl1, false);
	Move("�G���w�i", 1000, @-30, @0, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(500);
	CreatePlainSP("�G��", 5000);
	Delete("�G��*");
	FadeDelete("�G��", 1000, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.I know both of their faces&.

They look exactly the same as Clear&.
Except they're wearing different clothes than him&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/8000020a01">
"What's going on&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
He must've heard my voice&, because the figure with his 
back to me turned around&.

&.&.&.He's also Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_pinch");
	FadeSt("C",200,true);

	Wait(300);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,900,null,false);

	DeleteSt("C", 200,true);

	SetVolumeEX("SE*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
When that Clear sees my face&, his own goes ghost white&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
	SetVolumeEX("SE*", 0, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/8000030a04">
"Master!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Three of them all have the same face&.&.&.?

When the confusion shows in my expression&, the two others 
start to grin&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

#CFGVC_CLEARALPHA=1;//�R���t�B�O�F�N���A���{�C�X���

	CreatePlainSP("�G��", 5000);
	DeleteSt("C", 0,true);

	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_pride");
	St("ML",740, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_pride");
	FadeAllSt(0,true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/8000040b18">
"Did you hear that? He just called him Master&, so that's
 him&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
The two other Clears chuckle&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_sad");
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/8000050a04">
"Master&, I'm so sorry&. I didn't mean to involve you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
The Clear nearest to me looks down wth an apologetic tone&.

When I see his face&, I know that he's the real one&.

His expressions and mannerisms&, and most of all the two 
moles on his chin are proof&.

Then who are those two smiling over there&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_shock");
	St("ML",740, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	FadeAllSt(180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/8000060b18">
"Hey&, get it together and open your eyes already&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
One of the two places his hands on his hips in discontent&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_sigh");
	St("ML",740, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/8000070b18">
"I already told you earlier&. That's not your master&. Our
 master is Toue&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/8000080a01">
"&.&.&.Toue?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
My body tenses up from hearing the name so suddenly&.

Clear makes an intense scowl and glares at the two others&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/8000090a04">
"That's wrong&. Only this person is my master&.&.&.
 Only Aoba-san&."

{
	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_pride");
	St("ML",740, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	FadeAllSt(200,true);
}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/8000100b18">
"Hah&, he's completely broken&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
The two Clears exchange glances and shrug their shoulders&, then look at me this time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	St("ML",740, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/8000110b18">
"We need to collect and repair the broken ones&. But first I want to test out something&."

{	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_pride");
	FadeAllSt(200,true);}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/8000120b18">
"I should just dye that human's brain and get it over
 with&."

{	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious2");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/8000130a04">
"&.&.&.No&. I won't let you&."

{
	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_shock");
	FadeAllSt(200,true);
}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/8000140b18">
"Stop that&, stay quiet&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	Wait(1000);

	CreateTextureEX("�G�w�i", 1000, Center, -200, "cg/ev/ev960�N���A���͍s�g.jpg");
	Move("�G�w�i", 2000, @0, 0, Dxl1, false);
	Fade("�G�w�i", 2000, 1000, null, true);

	SetVolumeEX("SE*", 2000, 0, null);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
One of them takes a step towards me&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
He opens up his mouth&, and takes a deep breath that 
reaches the bellows of his chest&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/8000150a04">
"Stop!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm020",0,450,true);

	CreateTextureEX("�G����", 2500, Center, Middle, "cg/ef/ef�N���A���̉̐�.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
As the real Clear screams out&, the other one begins to 
sing&.

{
	dm3510song();
	Wait(1000);
}
It's a frightening tune&.&.&. His sharp voice and scale 
pierce through my eardrums&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Zoom("�G����", 1000, 5000, 5000, Dxl3, false);
	Fade("�G����", 300, 1000, Dxl3, true);
	dm3510songdelete();
	Delete("�G�w�i");
	CreatePlainEX("�G��", 50);
	SetShade("�G��", MEDIUM);
	Zoom("�G����", 500, 1000, 1000, Dxl3, false);
	FadeDelete("�G����", 300, null, true);

	HAFade(2000, 0,false);
	Fade("�G��", 500, 1000, null, true);


	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/8000160a01">
"&.&.&.Shit! Not this again&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
It's the same song from on TV&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/m/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_m.jpg");
	SetShade("�G�w�i", LIGHT);
	Move("�G�w�i", 500, @0, @-120, Dxl1, false);
	Fade("�G�w�i", 500, 1000, null, true);
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 500, 5, 15, 0, 0, 500, null, true);

	CreateTextureEX("�G��", 500, Center, -264, "cg/bg/m/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_m.jpg");
	SetShade("�G��", MEDIUM);

	$���[�v���[�u�i�b�g�� = "@�G��";
	$���[�v���[�u�^�C�� = 25000;
	CreateProcessEX("�v���Z�X���}�C", "FlyMovingXXX");
	Request("�v���Z�X���}�C", Start);

	Fade("�G��", 500, 600, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0225]
My headache comes back&, and I'm down to my knees&.

The sound swells in my ears&, getting louder and louder 
from both the left and the right&.

I feel so sick and dizzy&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureSP("�G�w�i��", 50, Center, -214, "cg/bg/m/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_m.jpg");

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/8000170a01">
"Ugh&.&.&.!"

{	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_pinch");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/8000180a04">
"Master!"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm43/8000190a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0231]
In no time&, I'm writhing on the ground&.

The sharp melody feels like it's cutting my brain to 
pieces&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_angry");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/8000200a04">
"Stop singing that song right now&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
As he watches me writhe in pain&, the other Clear wears 
nothing but a happy look on his face&.

Ren desperately pulls on my clothes with his teeth&, trying to keep me conscious&. But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm020",1500,1000,true);
	CreateColorEXsub("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 1500, 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0251]
Their singing voices ring like overpowering bells in my 
ears&, and I can't think straight anymore&.

This is Grand Music&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm43/8000210a06">
"Aoba! Don't give up!"

{	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/8000220a01">
"&.&.&.!"

{	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_pinch");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/8000230a04">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
I hear the sound of someone stomping the ground&, and the 
air stirs&.

{
	Move("�G�w�i", 500, @0, @50, Dxl1, false);
	Move("�G��", 500, @0, @50, Dxl1, false);
	Fade("�G�F��", 500, 300, null, true);
	Delete("@�v��*");
}
When I strain my eyes&, I see Clear running forward&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���N���A���N���A�����v������˂���΂�
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 150, 1000, Dxl3, true);
	SetVolumeEX("@dm*", 0, 0, null);
	Wait(30);
	FadeDelete("�G�F��", 150, Dxl3, true);

	FadeDelete("�G�F��", 500, null, true);

	FadeDelete("�G��", 500, null, false);
	FadeDelete("�G�w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0271]
He pushes away the singing one&, and the song stops&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i��", 300, 0, -285, Dxl3, true);

//���o�`�o�`�b�ƃN���A�̘r�ɓd��������

	CreateSE("SE01","se�[��_����_�Ή�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEXadd("�G���o", 6000, Center, Middle, "cg/ef/efx02�Ήԓd��02.jpg");
	Zoom("�G���o", 0, 1100, 1100, null, true);
	FadeFF("�G���o", 100, 1000, 300, 0, 0, Dxl3, false);

	Wait(100);

	FadeDelete("�G���o", 100, Dxl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0272]
&.&.&.What!?

That wasn't my imagination just now&, was it&.&.&.
Sparks just flew out of Clear's arm&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",40, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_pinch");
	FadeSt("C",0,true);

	FadeDelete("�G�w�i��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/8000240a04">
"&.&.&.Guh-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4390.nss"]

}
