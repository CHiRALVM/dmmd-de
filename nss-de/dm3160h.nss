//<continuation number="370">
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


scene dm3160h.nss_MAIN
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
	#ev316�~���N�w�ّO�Y=true;
	#ev316�~���N�w�ّ}��=true;
	#ev316�~���N�w�ّ}��a=true;
	#bg303061_5_��y�{�݃N���u�t���A���ʘH=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3170.nss";

	if($RECRIB_PLAY==1){//��z���[�h��
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB06=1;//��z�p�t���O�擾

}


scene dm3160h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm022",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg303061_5_��y�{�݃N���u�t���A���ʘH");
	FadeBG(0,true);

	$ftime=500;if($RECRIB_PLAY==1){$ftime=1000;}//��z��
	FadeDelete("��w�i", $ftime, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I thought we were leaving the dance floor&, but we 
weren't&.

Mink doesn't head for a door&, but rather goes into a 
narrow alley next to it&.

We ended up at a dead end with not a soul in sight&.

Plastered on the wall are various flyers; they somehow 
look like scales on a monster&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 10, 5, -10, 2, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I'm violently shoved with my back against the wall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	St("C",740, @0,@0,"fu�~���N_�ʏ퐳��_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Mink pushes my arms onto the wall and throws his knee 
between my thighs to keep me down&.

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000020a05">
"So this is your true character&."

{
	Fw("fw���t_�ʏ�_worry2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000030a01">
"True character?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I'm in a daze&.&.&. I don't understand what he means&.

Unable to process anything&, I just look up to Mink&.

His eyes have a different light to them than the usual&.

&.&.&.Do they really&, or is it just my imagination?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�~���N_�ʏ퐳��_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000040a05">
"&.&.&.Idiot&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Mink murmurs angrily&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	St("C",740, @0,@0,"fu�~���N_�ʏ퐳��_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000050a05">
"Strip&."

{
	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_shock3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000060a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
His large hands slip into my pants and grab at me 
violently&. My body tenses up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000070a01">
"&.&.&.Someone- might see us&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�~���N_�ʏ퐳��_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000080a05">
"Don't care&."

{
	Fw("fw���t_�ʏ�_trip");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000090a01">
"&.&.&.Hu&, hahaha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�x���g�O��01");
	MusicStart("SE01",0,500,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
I drop my bag to the ground and undo my belt&.

But my fingers aren't handling it too well&.

{
	CreateSE("SE01","se�l��_����_�x���g�O��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��08");
	MusicStart("SE02",0,700,0,1000,null,false);
}
As I try fiddling my hands around&, Mink roughly pulls off 
my underwear&.

His eyes move to my naked lower half&.

And with just that&.&.&. my body flares up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,600,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("�G�d�u101", 101, -20, -17, "cg/ev/m/ev316�~���N�w�ّO�Y_m.jpg");
	CreateTextureEX("�G�d�u100", 100, 0, 0, "cg/ev/l/ev316�~���N�w�ّO�Y_l.jpg");
	Move("�G�d�u100", 1000, -121, -83, Dxl3, false);
	Fade("�G�d�u100", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000100a01">
"&.&.&.Ha!"

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000110a05">
"&.&.&.You're already like this even though I haven't done
 anything&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u100", 1000, 0, 0, Dxl3, false);
	Move("�G�d�u101", 1000, -90, -67, Dxl3, false);
	Fade("�G�d�u101", 1000, 1000, null, true);
	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I get even harder with just him watching me&.

Usually I'd be embarrassed&, but now&.&.&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000120a01">
"&.&.&.Don't get too impatient&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000130a05">
"&.&.&.&.&."

{
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000140a01">
"Come on&, do me&.&.&. Hurry up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u101", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
My lust uncontainable&, I start to jack myself off&.

I don't really know myself&.&.&. why I'm doing this&.

I just want it so badly&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,800,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 15, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Expressionless&, Mink firmly holds down my shoulders&.
He pushes my knees to the ground with harsh force&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ퐳��_normal");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000150a05">
"Then do it yourself&."

{
	Fw("fw���t_�ʏ�_trip");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000160a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I get goosebumps as he orders me around&.

&.&.&.I'm not my usual self&.

I think that&, but soon enough the background music churns 
my thoughts into mush&.

{
	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");
}
Mink puts his hand to my head and pulls on my hair&.

{
	CreateSE("SE01","se�l��_����_�x���g�O��01");
	MusicStart("SE01",0,700,0,800,null,false);
}
A tingling sensation zaps through my hair while I hurriedly
undo his belt&.

I've never put some guy's dick in my mouth before&.&.&. but 
I don't really care right now&.

I pull down Mink's underwear and put my lips to his cock&. 
He has no reaction&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateTextureEX("�G�w�i100", 100, -349, -444, "cg/bg/l/bg303061_5_��y�{�݃N���u�t���A���ʘH_l.jpg");
	Move("�G�w�i100", 500, -349, -384, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0068]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000170a01">
"Nm&.&.&. mnh!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0069]
I take it into my mouth and softly roll my tongue around 
it&.

As I suck on him like candy&, he reacts&, just a little bit&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1000,null,false);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000180a01">
"N-Nmngh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
I take his half-hard dick in and start moving my head&.

The sound of water gushes around and my saliva drips to 
the ground&.

I frantically move my head up and down as he pushes my 
head into his crotch with his hands&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,600,0,800,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000190a01">
"Ungh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
Mink's now completely stiff cock spans my entire mouth&.

But Mink still unmindfully holds my head and keeps pulling and pushing it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,600,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0076]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000200a01">
"Ungh&.&.&.! Fu-Mn&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
&.&.&.It's suffocating&. Painful&. I'm going to throw up&.
Tears start to form in the corners of my eyes&.

But during all of this&.&.&. I'm absolutely exhilarated&.

What I want&.&.&.

Is something stronger&.&.&.

More&.&.&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000210a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,500,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("�G�w�i100", 500, @0, @100, Dxl1, false);
	Fade("�G�w�i100", 500, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0088]
He pulls my head all the way off of him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("�G�w�i100", 500, @0, @100, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
He immediately pulls me up by the arm and pushes me 
against the wall&.

He lifts one of my legs and puts his hot cock inside of me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u110", 110, -1025, 0, "cg/ev/l/ev316�~���N�w�ّ}��_l.jpg");
	Move("�G�d�u110", 1000, -905, -73, Axl3, false);
	Fade("�G�d�u110", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000230a01">
"Ah&, ha&.&.&. Ungh&.&.&.&. Ah&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
&.&.&.And suddenly&, an intense pain runs throughout my body&.

Without any preparation&, Mink mercilessly pushes into me 
and stretches my ass apart&.

It's so tight that I stop breathing&, my throat shuts off&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000240a01">
"Uuh&, ah&.&.&. Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100a]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000250a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100b]
Mink pushes all the way up and starts to move&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u111", 111, Center, Middle, "cg/ev/ev316�~���N�w�ّ}��.jpg");
	Move("�G�d�u110", 800, -678, -189, Dxl3, false);
	Fade("�G�d�u111", 800, 1000, null, true);
	Delete("�G�d�u110");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100c]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000260a01">
"Hi&.&.&.! Ahh&.&.&. Kuh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100d]
As he penetrates my narrow insides&, I'm hit with a searing pain&.

I desperately cling to Mink as if it were a matter of life 
and death&, and scream louder with each thrust&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��20");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u112", 112, -292, 0, "cg/ev/m/ev316�~���N�w�ّ}��_m.jpg");
	Move("�G�d�u112", 500, -210, -107, Dxl3, false);
	Fade("�G�d�u112", 500, 1000, null, true);
	Delete("�G�d�u111");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000261a01">
"Ah&, ahh&, unh&.&.&. Ahh&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000270a05">
"&.&.&.Satisfied yet?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�d�u113", 113, -641, -153, "cg/ev/l/ev316�~���N�w�ّ}��_l.jpg");
	Fade("�G�d�u113", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0109]
His breath reaches my ears and makes me tremble&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 800, null);

	CreateSound("�N���u", BGM, "sound/bgm/dmbgm022.ogg");
	SetVolume("�N���u", 0, 0, null);
	Request("�N���u", Play);
	SetLoop("�N���u", true);
	SetVolume("�N���u", 1000, 600, null);

	CreateSE("SE01","se�l��_����_�ߎC��21");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
And suddenly&, the music from the dance floor grows louder&.

I feel like the low bass is chopping my body apart&.

With this unstable melody&.&.&.

Both my mind and my body&.&.&. are being raped&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 550, null);

	SetVolume("�N���u", 3000, 100, null);

	CreateSE("SE�S��","se�l��_�S��_�ۓ�02");
	MusicStart("SE�S��",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Zoom("�G��", 200, 1100, 1100, null, false);
	FadeDelete("�G��", 200, null, true);
	Delete("�G�d�u112");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000280a01">
"Ngh&.&.&. Ahn&.&.&. Ah&, more&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
Both my shame and honor cast aside&, I plead with Mink&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE�S��","se�l��_�S��_�ۓ�02");
	MusicStart("SE�S��",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Zoom("�G��", 200, 1100, 1100, null, false);
	FadeDelete("�G��", 200, null, true);
	Delete("�G�d�u112");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000290a01">
"More&, harder&.&.&. Ah&, ah&.&.&. More&.&.&.!"

{
	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000300a05">
"&.&.&.!"

Mink lets out a quick breath and pushes me up with even 
more power&.

With my mind blurring with pleasure and pain&, secretion 
starts to drip from my stiff cock&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��22");
	MusicStart("SE01",0,700,0,800,null,false);
	Move("�G�d�u113", 500, -678, -57, Dxl3, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000310a01">
"Hii&.&.&. Ahn&.&.&.!"

I want him to wreck me harder&.
Until I can't think anymore&.

More&, more&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000320a01">
"Ah&.&.&.! I- I can't&.&.&. Ngh&.&.&.!"

My intense urges are driven to the limit&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��21");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,500,0,800,null,false);

	CreateTextureEX("�G�d�u114", 114, -678, -57, "cg/ev/l/ev316�~���N�w�ّ}��a_l.jpg");
	Move("�G�d�u114", 500, @0, @-50, Dxl1, false);
	Fade("�G�d�u114", 500, 1000, Dxl3, true);
	Delete("�G�d�u113");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000330a01">
"I can't&.&.&. Ah&, I'm coming&.&.&. Ungh&, ahhhh&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("�G�d�u115", 115, Center, Middle, "cg/ev/ev316�~���N�w�ّ}��a.jpg");
	Move("�G�d�u114", 500, -678, -233, Dxl1, false);
	Fade("�G�d�u115", 500, 1000, null, true);
	Delete("�G�d�u114");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
My voice raises immodestly as I cling onto Mink&.

Semen splurts out&, my mind and body warp&.

{
	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("�G�d�u116", 116, -641, -153, "cg/ev/l/ev316�~���N�w�ّ}��a_l.jpg");
	Fade("�G�d�u116", 500, 1000, null, true);
	Delete("�G�d�u115");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000340a01">
"Ugh&.&.&. Haa&.&.&. Ah&.&.&.!"

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000350a05">
"&.&.&.! &.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SetVolume("�N���u", 3000, 300, null);
//	SetVolumeEX("@dm*", 3000, 450, null);
	Move("�G�w�i*", 500, @0, @-50, Dxl1, false);
	FadeDelete("�G�d�u*", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
After I came&, Mink started to thrust violently and deeply&.&.
then soon came to a stop&.

Mink let out all of his strength while I was numbed with 
pain&.

Mink came too&.&.&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolume("�N���u", 3000, 300, null);
}
&.&.&.&.&.

&.&.&.My head and body both feel sluggish&.
Looks like that took all the energy out of me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolume("�N���u", 3000, 150, null);

	CreateColorSP("�G����", 2000, "BLACK");

	DrawTransition("�G����", 2000, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/6000360a01">
"&.&.&.&.&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/6000370a05">
"&.&.&.Hey&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
I yield to the tiring feeling that washes over me and 
close my eyes&.

My consciousness on the edge&, floating away&, I fall asleep 
while still being awake&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolume("�N���u", 2000, 0, null);

	if($RECRIB_PLAY==1){//��z��
		ClearFadeAll(1000, true);Wait(2000);
	}else{
	ClearFadeAll(2000, true);
	}

//�����t�@�C��["dm3170.nss"]

}
