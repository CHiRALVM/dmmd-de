//<continuation number="150">
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


scene dm1463ed.nss_MAIN
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
	#ev146�o���g���Ɗo�����t=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//���G���h���[��
	PreSetRoll(1);
	TheEND(1);

#BDED1=1;//�g���o�b�h�G���h�t���O�擾

}


scene dm1463ed.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();




//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

//	OnBG(10,"bg101011_1_���Z����ʂ�\");
//	FadeBG(0,true);

	CreateTextureEX("�G�w�i99", 99, -511, -383, "cg/ev/m/ev146�o���g���Ɗo�����td_m.png");
	CreateTextureEX("�G�w�i98", 98, -389, -100, "cg/ev/l/ev146�o���g���Ɗo�����ta_l.jpg");

	CreateTextureEX("�G�w�i101", 101, 0, 0, "cg/ev/m/ev146�o���g���Ɗo�����tc_m.png");
	CreateTextureEX("�G�w�i100", 100, -289, 0, "cg/ev/l/ev146�o���g���Ɗo�����ta_l.jpg");
	SetShade("�G�w�i100", HEAVY);

	FadeDelete("��w�i", 2000, null, true);

	Wait(1000);

//�����o�F���Ԍo��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Once Koujaku was captured by Toue and my "Sense" vanished&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	EfRecoIn1(10000,200);

	CreateTextureEX("�G���ʔw�i1002", 1002, Center, -57, "cg/bg/bg304011_5_���]�^���[�S�i.jpg");
	CreateTextureEX("�G���ʔw�i1001", 1001, Center, Middle, "cg/bg/bg001011_1_�ɓ��S�i.jpg");
	CreateTextureSP("�G���ʔw�i1000", 1000, Center, Middle, "cg/bg/bg002011_1_���Z����S�i.jpg");

	EfRecoIn2(500);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Toue's announcement of the Special Commemoration event for Platinum Jail was a large scale human manipulation 
experiment&.

All of the residents on Midorijima became puppets&, and 
moved to Toue's will&.

And so Toue Inc&. aquired the entirety of Midorijima&, and 
declared it an independent country&.

And so&, now&.

{
	Fade("�G���ʔw�i1001", 500, 1000, null, true);
	Delete("�G���ʔw�i1000");
}
For a small island country&, its bizarre leadership and 
amount of unified power made forgein countries feaful&.

With the original me recovered&, Toue and I govern it&.

I say that&, but I'm not actually a player on the stage&.

{
	Fade("�G���ʔw�i1002", 500, 1000, null, true);
	Delete("�G���ʔw�i1001");
}
Toue is the light&, while I'm the shadow&.

Toue carefully regulates the politics&, and I have the 
freedom to twist or break peoples' hearts to my pleasure&.

I enjoy our little set-up&.

I don't have to think about anything; I just live and use 
my power freely&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	EfRecoOut1(100);

	FadeDelete("�G���ʔw�i1002", 500, null, true);

	EfRecoIn2(400);

	CreateColorSP("�G�F��", 5000, "000000");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
And even&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

//���r�d�F�h�A���J����
	CreateSE("SE01b","se����_�h�A�S_���J��01b");
	MusicStart("SE01b",0,700,0,1000,null,false);

	Wait(1500);

//���r�d�F�R�c�R�c�ƒn���ւ̊K�i���~��Ă���
	CreateSE("SE01","se�l��_����_����03L");
	MusicStart("SE01",2000,700,0,1000,null,true);

	Wait(3000);

	Fade("�G�w�i101", 0, 1000, null, false);
	Fade("�G�w�i100", 0, 1000, null, true);

	Fade("�G�F��", 2000, 0, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I go underground by stairs&, and peek inside a new&, special jail&.

I see a person enclosed by thick bars&, sitting with a 
chain around his neck&.

He's looking down&, with his body leaning on the wall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	SetVolume("SE01", 1000, 0, null);


	Move("�G�w�i101", 2000, -511, -383, AxlDxl, false);
	Move("�G�w�i100", 2000, -389, -100, AxlDxl, true);

	Wait(1200);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i101");
	Delete("�G�w�i100");
	Fade("�G�w�i99", 0, 1000, null, false);
	Fade("�G�w�i98", 0, 1000, null, true);

	FadeDelete("�G��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300010a01">
"&.&.&.Koujaku&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	CreateSE("SE01","se����_��_���h���01L");
//	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE01","se����_��_�L�т�02");
	MusicStart("SE01",0,500,0,1300,null,false);

	CreateSE("SE02","se����_����_��01");
	MusicStart("SE02",0,600,0,500,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
When I say his name&, Koujaku's shoulders jerk&, and he 
raises his head&.

His long&, unkempt hair is disheveled&, and his face 
emaciated; all of the muscles in his body tense up as if 
they were a living thing&.

The Koujaku before was a different person&.

But I like this Koujaku more&.

Because he's been completely set loose&.

And those dazzling eyes&, without a glint of reason in them&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300030a01">
"&.&.&.&.&."

I can't stop looking at his eyes&, and a shiver runs 
through my body&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	SoundPlay("@dm015",0,450,true);

//���r�d�F�h�A���J����
	CreateSE("SE01","se����_�h�A�S_���J������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�F��", 500, 1000, null, true);
	Fade("�G�w�i99", 0, 0, null, false);
	Fade("�G�w�i98", 0, 0, null, true);

//	CreateTextureEX("�G�d�u505", 505, 0, -380, "cg/ev/l/ev146�o���g���Ɗo�����t_l.jpg");

	CreateTextureEX("�G�d�u504", 1704, center, middle, "cg/ev/ev146�o���g���Ɗo�����t.jpg");
	CreateTextureEX("�G�d�u503", 1703, 0, -380, "cg/ev/m/ev146�o���g���Ɗo�����t_m.jpg");

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");

	CreateTextureEX("�b/�G�d�u502", 52, 0, 0, "cg/ev/ev146�o���g���Ɗo�����ta.jpg");
	CreateTextureEX("�b/�G�d�u502a", 522, 0, 0, "cg/ev/ev146�o���g���Ɗo�����tb.png");
	CreateTextureEX("�b/�G�d�u502b", 700, 0, -50, "cg/ev/ev146�o���g���Ɗo�����td.png");
	SetShade("�b/�G�d�u502", HEAVY);
	Request("�b/�G�d�u502a", Smoothing);
	Request("�b/�G�d�u502b", Smoothing);
	Zoom("�b/�G�d�u502", 0, 1100, 1100, null, true);
	Zoom("�b/�G�d�u502a", 0, 500, 500, null, true);
	Zoom("�b/�G�d�u502b", 0, 400, 400, null, true);
	SetBlur("�b/�G�d�u502a", true, 2, 200, 200, false);
	SetBlur("�b/�G�d�u502b", true, 2, 500, 200, false);

	CreateTextureSP("�G�d�u501", 501, -650, -659, "cg/ev/l/ev146�o���g���Ɗo�����tb_l.png");
	CreateTextureSP("�G�d�u500", 500, -650, -659, "cg/ev/l/ev146�o���g���Ɗo�����ta_l.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I undo the lock and go inside the cell&.
My heart throbs&.

I truly love this Koujaku&.

With his rough&, hot skin along his back covered in 
spectacular blooming flowers&.

I think it's beautiful&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(300);

	Move("�G�d�u500", 2000, -650, -500, Dxl1, false);
	Move("�G�d�u501", 2000, -650, -500, Dxl1, false);
	FadeDelete("�G�F��", 2000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300040a01">
"Koujaku&.&.&. were you good today too?"

Every day&, at least once&, I look at Koujaku with a loving 
expression&.

He raises his face up to me&, saliva running from the edges of his mouth&, and then lets out a groan&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u500", 1500, -650, -450, Axl1, false);
	Move("�G�d�u501", 1500, -650, -450, Axl1, false);
	MoveFFP1("@�b/*",25000,30,8);

	Fade("�b/�G�d�u502", 1500, 1000, Axl2, false);
	Fade("�b/�G�d�u502a", 1500, 1000, Axl2, false);
	Fade("�b/�G�d�u502b", 1500, 1000, Axl2, true);
	Delete("�G�d�u500");
	Delete("�G�d�u501");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6300050a02">
"Gruuh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300060a01">
"It seems you've been a good boy&."

His eyebrows crease into a deep wrinkle and he bares his 
fangs&. I kiss them&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u503", 1000, -45, -380, Dxl1, false);
	Fade("�G�d�u503", 1000, 1000, null, true);
	//Delete("�G�d�u502");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6300070a02">
"Ugh&.&.&."

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300080a01">
"!"

The restraints don't seem to hold back Koujaku&, and he 
bites into my arm with his fangs&.

It goes through the thin cloth and draws blood&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300090a01">
"That hurts&.&.&. Koujaku&."

I say it in a sweet voice&.
The truth is that it doesn't hurt at all&.

Pain is a pleasureable thing&.
That's how much I love this Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	Fade("�G�d�u503", 1000, 0, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300100a01">
"See&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6300110a02">
"Urgh&.&.&."

Koujaku licks up the blood streaming down my arm with his 
long tongue and sips it up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300111a01">
"&.&.&.Haah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��16");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i98", 0, -331, -594, null, true);
	Fade("�G�w�i99", 0, 1000, null, false);
	Fade("�G�w�i98", 0, 1000, null, true);

	Move("�G�w�i98", 1000, -331, -544, Dxl1, false);
	Move("�G�w�i99", 1000, -511, -283, Dxl1, false);
	Fade("�G�d�u503", 1000, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
I try to calm my excitement and unfasten Koujaku's clothes&,as his own hands are restrained&.

Every day&, I must always amuse myself with Koujaku&.

Although he leaves bite marks on me&, I think that's a form of love&.

I put my hand over Koujaku's erection and whisper&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300120a01">
"&.&.&.Koujaku&. Just like you wanted&, I'm yours&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6300130a02">
"Unghh&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300140a01">
"We'll always be together&."

My precious Koujaku&.
As long as this island stands&, we'll be together&.

I'll never&.&.&. let you go&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 10000, 0, null);

	Move("�G�d�u503", 7000, -103, -21, null, false);
	Fade("�G�d�u503", 3000, 1000, null, true);

	Wait(2000);

	Fade("�G�d�u504", 2000, 1000, null, true);

	Wait(700);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6300150a01">
"Now&.&.&. come here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);

	Wait(2000);
	WaitKey(3000);

//�����t�@�C��["dm9999.nss"]

}
