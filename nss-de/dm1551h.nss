//<continuation number="2300">
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


scene dm1551h.nss_MAIN
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
	#ev155�g���d�c���u�g�O�Y=true;
	#ev155�g���d�c���u�g�O�Ya=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1552h.nss";

}


scene dm1551h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm013",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);


	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0242]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5000860a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5000870a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0251]
We only press our lips together&, much like a first kiss&, 
but soon Koujaku begins to peck at my lips&.

He stops midway and looks at my face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cool");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0252]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5000880a02">
"&.&.&.Is this okay?"

{
	Fw("fw���t_�ʏ�_shy3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5000890a01">
"&.&.&.What?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw�g��_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0254]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5000900a02">
"We can't go back&. After this&.&.&. we won't just be friends&.
 If you want to stop&, now's the time&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shy4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5000910a01">
"&.&.&.&.&."

{
	Fw("fw�g��_�ʏ�_think");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5000920a02">
"I don't want to pressure you into&.&.&."

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5000930a01">
"&.&.&.Shut up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i100", 100, -90, -556, "cg/bg/l/bg104031_5_���t���_l.jpg");
	Move("�G�w�i100", 500, -90, -572, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0261]
I throw my hands into Koujaku's hair and swallow up my 
words&.

Koujaku is a little surprised&, but soon returns to kissing me again&.

{
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�L�X01");
	MusicStart("SE02",0,500,0,1000,null,false);
}
Alternating between lips&, sometimes sucking on both&.

I feel both my ears and face become hotter and hotter&, all the while feeling the relationship between Koujaku and I 
change after every moment that passes&.

We were friends just a while ago&.

No one could have imagined that we'd become this way&.

I've gone out with male acquaintances before&, and there's 
been things like kissing&.

But&.&.&. never something as nerve-wracking as this&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��16");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5000940a01">
"Mn&.&.&."

I start kissing Koujaku back&, and then he takes both of 
his hands and places them on my shoulders&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5000950a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("�G�d�u103", 103, Center, Middle, "cg/ev/ev155�g���d�c���u�g�O�Y.jpg");
	CreateTextureEX("�G�d�u102", 102, -102, -105, "cg/ev/m/ev155�g���d�c���u�g�O�Y_m.jpg");
	CreateTextureEX("�G�d�u101", 101, -472, -208, "cg/ev/m/ev155�g���d�c���u�g�O�Y_m.jpg");
	Move("�G�d�u101", 800, -511, -286, Axl1, false);
	Fade("�G�d�u101", 800, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0271]
With a hoarse whisper&, Koujaku gently pushes me down onto 
the bed&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5000960a02">
"I can't believe&.&.&. we're doing this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��19");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
Koujaku leans in over me and moves his face to the nape of my neck&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5000970a01">
"Wha&.&.&.!"

Suddenly&, a shock runs through my hair and my shoulders 
shake&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u101", 1000, -102, -105, Dxl1, false);
	Fade("�G�d�u102", 1000, 1000, Dxl1, true);
	Delete("�G�d�u101");

	CreateSE("SE01","se�l��_����_�L�X01");
	MusicStart("SE01",0,500,0,1400,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0281]
Koujaku pinches my hair&, playing with it like he would a 
woman's hand&.

No matter how faintly painful it feels&, if he treats it 
like that&.&.&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5000980a01">
"-What are you doing&.&.&. My hair&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5000990a02">
"Sorry&, I can't hold myself back&.&.&. I've always&, always
 wanted to touch your hair&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001000a01">
"Eh&.&.&.&, &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1200,null,false);

	Fade("�G�d�u103", 500, 1000, null, true);
	Delete("�G�d�u102");

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0290]
He starts to softly put it against his lips&, and it 
tingles; I hold my breath&.

But watching Koujaku entangle my hair between his fingers&.&.makes me tremble&.

Koujaku's precious tools&, his beautiful fingers are 
touching my hair&.

It's somehow&.&.&. sensual&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("�G�d�u105", 105, 0, -224, "cg/ev/l/ev155�g���d�c���u�g�O�Ya_l.jpg");
	CreateTextureEX("�G�d�u104", 104, -80, -224, "cg/ev/l/ev155�g���d�c���u�g�O�Y_l.jpg");
	Move("�G�d�u104", 1000, 0, -224, Dxl1, false);
	Fade("�G�d�u104", 1000, 1000, Dxl3, true);
	Delete("�G�d�u103");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0291]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001010a01">
"Fu- ah&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001020a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��19");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 800, 0, null);

	Fade("�G�d�u105", 1000, 1000, Dxl1, true);
	Delete("�G�d�u104");

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0300]
Koujaku can't seem to wait any more&, and our lips meet 
again&.

While he's feeling my hair and tracing down my teeth with 
his tongue&, multiple shivers run down my spine&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001030a01">
"Nn&, Nmm&.&.&."

I open my mouth a little and reach out to Koujaku's tongue with mine&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001040a02">
"Fu&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001050a01">
"Hah&.&.&. Ungh&.&.&."

Wet sounds reach my ears&, and the sensation of our tender 
tongues entwining become more and more pleasant&.

But still&.&.&. it feels weird&.

To be doing this with a childhood friend&, with my 
precious friend&, Koujaku&.&.&.

It doesn't feel real yet&. It feels like a dream&.

But&.&.&. it's reality&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�d�u105", 250, 0, null, true);
	Move("�G�w�i100", 1000, -0, -572, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0310]
Koujaku rolls up my shirt to stroke my stomach with the 
palm of his hand&, in a circular motion&. It's a little 
ticklish&.

Koujaku touches my chest with his fingertips&, then slowly 
begins to knead&.

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001060a01">
"Wah-hey&.&.&. Fuha&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw�g��_�ʏ�_cry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0311]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001070a02">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_shy3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0312]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001080a01">
"No&, just&, I'm ticklish&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0320]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001090a02">
"Ticklish?"

{
	FwPro("fw���t_�ʏ�_shy3",2000,"fw���t_�ʏ�_cheese2h");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001100a01">
"Sort of&.&.&. Haha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0321]
Koujaku doesn't stop with his playing around&.

It's a place I don't usually touch&, so of course I'm a 
little ticklish there&.

{
	Fw("fw���t_�ʏ�_cheese2h");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001110a01">
"No more&, no&.&.&. I said it tickles!"

{
	FwPro("fw�g��_�ʏ�_sad",2500,"fw�g��_�ʏ�_cool");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001120a02">
"You little&.&.&. Always laughing around like that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0322]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001130a01">
"Because- Haha&.&.&.Nnm!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,600,0,1400,null,false);
	Move("�G�d�u105", 500, @0, @-50, Dxl1, false);
	Fade("�G�d�u105", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0323]
Koujaku stops me with his lips&, and sucks out my laughing  voice&.

This time it's a little different&, with his now over-
powering tongue&. I shiver more&, with his fingertips 
squeezing my hair strands&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��21");
	MusicStart("SE01",0,700,0,1000,null,false);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0330]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001140a01">
"Nghhh&, nnm&.&.&."

Koujaku lowers his hands&, and reaches my belt&.

{
	CreateSE("SE02","se�l��_����_�x���g�O��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE03","se�l��_����_�ߎC��15");
	MusicStart("SE03",0,700,0,1000,null,false);

	Move("�G�d�u105", 500, @0, @30, Dxl1, true);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001150a01">
"Mn! Fuah&, wai-&.&.&.&.Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0331]
I try to stop him in a panic&, but Koujaku won't accept it&.

He gives me another deep kiss&, sucking on my tongue 
fiercly&, and my power to resist fades&.

This guy&.&.&. he's really good at kissing from playing 
around so much&.

That kind of irritates me&.

</PRE>
	SetText();
	TextBoxDelete(0);
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�d�u105", 500, @0, @50, Dxl1, false);
	FadeDelete("�G�d�u105", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0340]
Koujaku's hand starts to pull down my pants&, and searches 
around under&.

I'm half hard&, and when he grabs my dick&, my whole body 
shivers&.

&.&.&.I wonder if it's really okay to go any farther&. Really&.

After all this&, hesitation shows up again&.

Possibly thinking the same thing&, Koujaku pulls away&, 
stops&, and looks at me&.

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001160a02">
"&.&.&.I'm not pulling back after this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0341]
It was as if Koujaku was murmuring it to himself&, and I 
just happened to hear it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_shy2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0342]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001161a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0343]
I don't say a thing&, and Koujaku starts to pump me up and 
down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Move("�G�d�u111", 1000, -467, -247, Dxl3, false);
//	Fade("�G�d�u111", 1000, 1000, Dxl3, true);
//	Delete("�G�d�u110");

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Move("�G�d�u110", 1000, -467, -247, Dxl3, false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0350]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001170a01">
"Ah&.&.&.! Hah&.&.&.&.&."

I respond to Koujaku's hand&, and from my hips I start to 
feel a pleasant numbness&.

I feel as if I'm holding my breaths too long&, it's as if 
my throat is being crushed&.

What do I do?
This is so embarrassing&.

While stroking me&, Koujaku lowers his head down to my 
chest&, his tongue trailing across&.

{
//	CreateTextureEX("�G�d�u110", 110, -508, -284, "cg/ev/m/ev155�g���d�c���u�g�O�Ya_m.jpg");
//	Move("�G�d�u110", 1000, -467, -247, Dxl3, false);
//	Fade("�G�d�u110", 1000, 1000, Dxl3, true);
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�[��_��_�͂˂�06");
	MusicStart("SE02",0,500,0,1000,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001180a01">
"Fu&.&.&.&.Nn- Ha&.&.&.&.&."

His tongue rolls over my nipple&, and a sweet voice escapes me&.

It was ticklish only a minute ago&, but now with my lower 
body being played with&, I feel a completely different 
sensation&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001190a01">
"Haah&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001200a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	FadeDelete("�G�d�u112", 250, null, true);


	Fade("�G�d�u110", 500, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0360]
As if to check my current state&, Koujaku looks at me with 
an upwards glance&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shy2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0361]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001210a01">
"What&."

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001220a02">
"Does it still tickle?"

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001230a01">
"Sh-Shut it&.&.&. Don't ask&. And don't look at me&.&.&."

{
	Fw("fw�g��_�ʏ�_sad");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001240a02">
"Why?"

{
	Fw("fw���t_�ʏ�_shy3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001250a01">
"It's embarrassing&, if I make a weird face&, or say
 something in a weird voice&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0370]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001260a02">
"You're saying this now?"

{
	Fw("fw���t_�ʏ�_cranky2h");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001270a01">
"Honestly&.&.&. I'd hate it more if you stared at my dick
 instead&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0371]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001280a02">
"Silly&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u110", 110, -508, -284, "cg/ev/m/ev155�g���d�c���u�g�O�Ya_m.jpg");
	Fade("�G�d�u110", 1000, 1000, null, true);
	Move("�G�d�u110", 1000, -467, -147, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0372]
Koujaku gives me a small grin then follows with a light 
kiss&.

Kisses fall not only on my lips&, but on my chin&, my 
cheeks&, the tip of my nose&, and my eyelids&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u111", 111, Center, Middle, "cg/ev/ev155�g���d�c���u�g�O�Ya.jpg");
	Move("�G�d�u110", 1000, -407, -247, Dxl1, false);
	Fade("�G�d�u111", 1000, 1000, Dxl3, true);
	Delete("�G�d�u110");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0373]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001290a01">
"Uhn&.&.&. Ah&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0380]
Koujaku lovingly carresses me&, and I'm completely hard; a 
strong pulse runs through my body&.

Koujaku kisses and licks my chest&, looking at my face the 
entire time&.

I told him not to look&.&.&.

I'm more embarrassed than angry&, and I move my hands to 
Koujaku's lower body in a heat&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��21");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	FadeDelete("�G�d�u*", 250, null, true);

//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0381]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001300a02">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0382]
Koujaku jerks back in surprise&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw�g��_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0383]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001310a02">
"&.&.&.What'd you do that for?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_shy2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0384]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001320a01">
"Let me touch you&. I can't be the only one here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_worry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0390]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001330a02">
"&.&.&.No&, but-"

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001340a01">
"Come on&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0391]
Koujaku makes a troubled smile&, and gently lets go of my 
hand&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_sad2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0392]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001350a02">
"But it wouldn't be so good now&."

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001360a01">
"What is?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��18");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0393]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001370a02">
"If you touch me&.&.&. I probably won't be able to hold on&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0400]
He whispers that into my ear&, and looks at me with a 
suggestive face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shy3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0401]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001380a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0402]
Even if you say that&, what can I do&.&.&.

I end up turning my face away in embarrassment&.

{
	CreateSE("SE01","se�l��_����_�L�X01");
	MusicStart("SE01",0,400,0,1200,null,false);
}
For some reason that makes Koujaku happily kiss my 
forehead&, and he lets his wet hand off my cock&.

It moves under me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��20");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i*", 500, @0, @-30, Dxl3, true);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0403]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001390a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0404]
The cold sensation causes my back to arch a little&.

While stroking me with his other hand&, Koujaku gently
starts to stick his fingers into my ass&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0410]
First he begins to rub it&, sometimes reaching inside&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0411]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001400a01">
"Fu&.&.&. uuh&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001410a02">
"Does it hurt?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0412]
It kind of does&.&.&. but not really&.

But whenever he puts his fingers inside&, I could feel 
myself loosen and the feeling turns softer each time&.

While watching my reactions&, he starts feeling around with his fingers&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0413]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001420a02">
"I'm going to put more in&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se�[��_��_�͂˂�04");
	MusicStart("SE02",0,400,0,800,null,false);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0420]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001430a01">
"&.&.&.Ngh&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001440a02">
"&.&.&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001450a01">
"&.&.&.?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001460a02">
"It's pretty hot inside&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001470a01">
"! Shut up&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0430]
I say that in an angry tone&, but Koujaku just grins&. It 
startles me how romantic he looks&.

This guy has his erotic moments&, doesn't he&.&.&.

Two fingers hurt at first&, but I gradually become used to 
it; he then pulls them out carefully&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);


//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0431]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001471a02">
"I'll take off your clothes&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001480a01">
"-I'll do it myself&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0432]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001481a02">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��24");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i100", 500, @0, @50, Dxl3, false);
	FadeDelete("�G�w�i100", 500, null, true);


//���r�d�F����E��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0433]
I get the better of Koujaku&, and I'm somehow able to take 
off my clothes with my powerless hands&.

{
	CreateSE("SE01","se�l��_����_�ߎC��08");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Koujaku opens up his kimono&, exposing the entire upper 
half of his body&.

My chest begins to hurt a little&, seeing the scars and 
tattoos cover his muscled body&.

They're the traces of Koujaku's pain that will never go 
away&.

But&.&.&. they're a sight too&.

They're the proof that Koujaku's held on for all this time&.

I reach out to touch one of his scars&, and a small smile 
rises to Koujaku's face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ헇_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0440]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001490a02">
"&.&.&.Thanks&, Aoba&."

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001500a01">
"&.&.&.Hm?"

{
	Fw("fw�g��_�ʏ헇_cool");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/5001510a02">
"But I'll apologize now&. Sorry if I'm too rough&. I'll try
 as much as I can&.&.&. to be careful&."

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/5001520a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm1552h.nss"]

}
