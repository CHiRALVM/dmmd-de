//<continuation number="450">
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


scene dm2620.nss_MAIN
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
	$GameName = "dm2630ed.nss";

}


scene dm2620.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	SetVolumeEX("@dm*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/2000010b07">
"&.&.&.Aoba-kun&. You can always come back whenever you want
 to&."

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/2000020a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I look at Haga-san&, astonished by what he said&.

{
	SoundPlay("@dm013",0,450,true);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/2000030b07">
"You're hesitating&, aren't you? You must be thinking of
 Tae-san&."

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/2000040a01">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/2000050b07">
"But it'll be fine&. You're not so far away as to never be
 able to see each other&, and you can always talk and see
 each other over the net or by phone&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/2000060b07">
"And we're here as well&. It'll be fine as long as you
 talk it over with Tae-san&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/2000070a01">
"Haga-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/2000080b07">
"I don't know your exact circumstances&, but if you're
 hesitating&, doesn't it mean you find him very precious
 as well?"

//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/2000090b07">
"Then I believe you should just listen to your heart&."

//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/2000100b07">
"If you do&, I'm sure Tae-san would be happy too&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/2000110a01">
"&.&.&.&.&.Yes&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(180,true);
	St("MR",720, @0,@0,"st�L�I_�ʏ�_shock");
	FadeSt("MR",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/2000120b10">
"Aren't you a guy!?"

Kio goes over to Noiz and points his index finger at him&. 
Noiz lightly raises his eyebrows&.

{
	St("ML",720, @0,@0,"st�m�C�Y_�X�[�c_normal");
	FadeSt("ML",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/2000130a03">
"Do I look like a girl?"

//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/2000140b10">
"No! But you like Aoba even though he's a guy!?"

{
	St("ML",720, @0,@0,"st�m�C�Y_�X�[�c_normal2");
	FadeSt("ML",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/2000150a03">
"That's right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",720, @0,@0,"st�L�I_�ʏ�_shout");
	FadeSt("MR",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/2000160b10">
"Pervert!"

{
	St("RR",710, @30,@0,"st�i�I_�ʏ�_shout");
	Move("@StNameRR/RR*", 200, @-30, @0, Dxl3, false);
	FadeSt("RR",200,true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/2000170b13">
"Perverrrt!"

{
	Move("@StNameRR/RR*", 180, @30, @0, Dxl3, false);
	DeleteSt("RR", 180,true);

	St("ML",720, @0,@0,"st�m�C�Y_�X�[�c_normal");
	FadeSt("ML",180,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/2000180a03">
"Is there a problem? Besides&, I'd like Aoba even if he
 wasn't a guy&."

{
	Fw("fw���t_�ʏ�_shy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/2000190a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
He's acting like a total kid again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",720, @0,@0,"st�L�I_�ʏ�_fear");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/2000200b10">
"Hmph&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Kio shuts up and points at Noiz again&.

{
	St("MR",720, @0,@0,"st�L�I_�ʏ�_shock");
	FadeSt("MR",200,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/2000210b10">
"I got it! Can't do anything about it! You better take care of him&, then! Aoba's a real idiot!"

{
	St("RR",710, @30,@0,"st�i�I_�ʏ�_normal");
	Move("@StNameRR/RR*", 200, @-30, @0, Dxl3, false);
	FadeSt("RR",200,true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/2000220b13">
"Yeah! He's really stupid!"

{
	FwPro("fw���t_�ʏ�_sigh",3800,"fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/2000230a01">
"You little&.&.&.! Calling me an idiot&.&.&.! -Wha? Where's Mio?"

{
	DeleteFw();
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",180,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/2000240b07">
"When he came in&, she left&, bright red&."

{	DeleteAllSt(200,true);}

Left&.&.&.?

Does she&.&.&.

Noiz did lay his hands on her before&, so maybe this was a 
little too much of a shock to her&.&.&.

She's a little girl&. And then she got kissed by someone 
who's practically a giant compared to her&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A���}_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,600,0,1400,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(1000);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/2000250a01">
"Huh?"

{
	St("C",740, @0,@0,"st�L�I_�ʏ�_shock");
	FadeSt("C",200,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/2000260b10">
"Mio!"

{
	DeleteAllSt(200,true);
}
The door opened with Mio running heatedly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	St("ML",740, @0,@0,"st�~�I_�ʏ�_normal");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/2000270b11">
"You&, wait! Here!"

{
	CreateSE("SE01","se����_��_�߂���01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
She's red all the way up to her ears and stops infront of 
Noiz; she hands over something to him with a scowl&.

In her hand was a crumpled up envelope&.

{
	St("MR",740, @0,@0,"st�m�C�Y_�X�[�c_normal");
	FadeSt("MR",180,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/2000280a03">
"A letter?"

{
	St("ML",740, @0,@0,"st�~�I_�ʏ�_shout2");
	FadeSt("ML",180,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/2000290b11">
"Are you stupid or something? Look closer!"

{
	Move("@StNameML/ML*", 200, @-30, @0, Dxl3, false);
	DeleteSt("ML", 200,true);
}
Noiz takes the envelope as Mio turns away and puffs with 
her arms crossed&.

What is it?
A letter of challenge?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I bend my neck and peer over to Noiz's hands&.

&.&.&.&.&.

This is&.&.&.

The words "luv letter" in red crayon are on the light pink envelope&.

{
	SetVolumeEX("@dm*", 2000, 0, null);

	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/2000300a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"st�m�C�Y_�X�[�c_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/2000310a03">
"&.&.&.&.&."

{
	SoundPlay("@dm003",0,450,true);

	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",180,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/2000320b07">
"Oh my&, what's this?"

{
	DeleteAllSt(200,true);
}
&.&.&.Oh no&. Ohhh jeez&.
I'm smirking&. I don't think I can stop it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cheese");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/2000330a01">
"Oh&, wow&. What a lady killer!"

{
	St("C",740, @0,@0,"st�m�C�Y_�X�[�c_think");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/2000340a03">
"Maybe&.&.&."

Even Noiz is a little bewildered&. It's amusing&.

{
	DeleteAllSt(200,true);
}
But he politely takes the letter and puts it in his coat 
pocket&. He then looks at Mio&.

{
	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,500,0,800,null,false);

	SetVolumeEX("SE*", 1000, 0, null);
}
He bends down and meets Mio's gaze&.

{
	St("MR",720, @0,@0,"st�m�C�Y_�X�[�c_normal2");
	FadeSt("MR",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/2000350a03">
"Hey&."

{
	St("ML",720, @0,@0,"st�~�I_�ʏ�_normal");
	FadeSt("ML",200,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/2000360b11">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",720, @0,@0,"st�m�C�Y_�X�[�c_smile");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/2000370a03">
"Thank you&."

{
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Noiz pats Mio's head&.

{
	St("ML",720, @0,@0,"st�~�I_�ʏ�_shy");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 200, 0, 5, 0, 0, 500, null, true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/2000380b11">
"D-Don't misunderstand! You don't have to read it or
 anything!"

{
	DeleteAllSt(180,true);

	Wait(500);

	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	St("MR",720, @80,@0,"st�i�I_�ʏ�_shout");
	St("ML",720, @-80,@0,"st�L�I_�ʏ�_shout");
	Move("@StNameMR/MR*", 180, @-80, @0, Dxl1, false);
	Move("@StNameML/ML*", 180, @80, @0, Dxl1, false);
	FadeAllSt(180,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/2000390b10">
"Hey&, you!"

The brothers burst out and stood in front of their little 
sister with their arms wide&.

{
	Move("@StNameML/ML*", 180, @30, @0, Dxl1, false);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/2000400b10">
"Aoba's fine&, but we're not handing over our little sis!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("@StNameMR/MR*", 180, @-30, @0, Dxl1, false);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/2000410b13">
"No way!"

{
	FadeFFR("@StNameML/ML*",0,1000,150,0,0,30,null, false);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/2000420b10">
"We'll have to have a match!"

{
	FadeFFR("@StNameMR/MR*",0,1000,150,0,0,30,null, false);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/2000430b13">
"Yeah!"

{
	DeleteAllSt(180,true);
	St("ML",720, @0,@0,"st�~�I_�ʏ�_shout2");
	FadeSt("ML",180,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/2000440b11">
"You guys are so stupid!"

{
	St("MR",720, @0,@0,"st�m�C�Y_�X�[�c_normal");
	FadeSt("MR",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/2000450a03">
"You don't need to worry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2630ed.nss"]

}
