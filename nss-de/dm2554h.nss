//<continuation number="2010">
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


scene dm2554h.nss_MAIN
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
	$GameName = "dm2560.nss";

	if($RECRIB_PLAY==1){//��z���[�h��
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB05=1;//��z�p�t���O�擾

}


scene dm2554h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg107011_1_�a�@��");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -210, -424, "cg/bg/l/bg107011_1_�a�@��_l.jpg");

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0540]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001780a03">
"It's hot&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001790a01">
"I'm dripping in sweat&.&.&. You doing okay?"

{
	SoundPlay("@dm012",0,450,true);
}
I think we overdid it&.&.&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
When I peeked at Noiz's face&, he looked at me back with 
feverish but tired eyes&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001800a03">
"Yeah&.&.&. It's probably okay&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001810a01">
"&.&.&.'That so&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001820a03">
"Besides-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(800);

	CreateSE("SE01","se�l��_����_�L�X01");
	MusicStart("SE01",0,450,0,1400,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0550]
Noiz slightly cast his eyes down but looked at me again 
after pecking my lips&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001830a03">
"It was really good&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001840a01">
"&.&.&.Mn&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0560]
It was awkward to hear this face to face so I moved my 
eyes somewhere else&.

That was pretty straightforward&, and honest&, and&.&.&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001850a03">
"What about you?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001860a01">
"Eh?"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001870a03">
"Was it not that good?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001880a01">
"No&, it's not like&.&.&. it wasn't&, but&.&.&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001890a03">
"Hmm&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0570]
Noiz looks at me with a grin&.

He's really getting a kick out of my reactions&.&.&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001900a01">
"&.&.&.I'm gonna take it out&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,500,0,1000,null,false);
	SetVolumeEX("SE01", 1000, 0, null);

	CreateSE("SE02","se�l��_����_�ߎC��18");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0571]
I turn my face away to hide my embarrassment when I lift 
my hips up&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001910a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0572]
And in the time I was holding my breath to the feeling of 
taking it out&.&.&.

Something lukewarm dripped down my thighs from my ass&.

Uwah&.&.&.!

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001920a01">
"Fuck&.&.&. I need something to wipe this off&.&.&."

{
	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,500,0,800,null,false);
	SetVolumeEX("SE01", 1000, 0, null);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001930a03">
"Here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i100", 500, null, true);

	CreateSE("SE01","se�l��_����_�ߎC��13");
	MusicStart("SE01",0,500,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0580]
When Noiz took out a tissue from the tissue box on his 
bedside and wiped it off&, I could feel his eyes on me&.

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001940a01">
"What?"

{
	Fw("fw�m�C�Y_�ʏ�a�@��_smile");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001950a03">
"Shouldn't you wipe out the inside too?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0581]
Noiz impishly grins&.

{
	Fw("fw���t_�ʏ�_shy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001960a01">
"&.&.&.Injured people like you should just get a good rest&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�@��01");
	MusicStart("SE01",0,700,0,1800,null,false);
	SetVolumeEX("SE01", 100, 0, null);

	Wait(500);

	Fw("fw�m�C�Y_�ʏ�a�@��_pride2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0590]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001970a03">
"Ouch-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0591]
I flicked Noiz's forehead and pulled out some more tissues&.

There's globs of white semen all over Noiz's stomach&.
It was from me earlier&.&.&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 2000, 0, null);
}
Noiz flinches when I take a tissue and start to wipe his 
abdomen&.

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001980a01">
"Hey&, don't move&. You can't wipe yourself off&, can you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE01", 2000, 0, null);

	CreateSE("SE02","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fw("fw�m�C�Y_�ʏ�a�@��_laugh");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0600]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001990a03">
"Haha&, that tickles&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0601]
When I saw his face&.&.&. I felt a tinge of something deep in my heart&.

That's a real smile&.
The first one of his I've ever seen&.

I guess he really is a cute guy&.

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5002000a01">
"&.&.&.Okay&, done&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i101", 101, 71, -431, "cg/bg/l/bg107011_1_�a�@��_l.jpg");
	Request("�G�w�i101", Smoothing);
	Zoom("�G�w�i101", 0, 1500, 1500, null, true);
	Move("�G�w�i101", 1000, @0, @-50, Dxl1, false);
	Fade("�G�w�i101", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0602]
When I go to throw away the used tissues&, I make eye 
contact with Noiz&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1400,null,false);
	SetVolumeEX("SE01", 1000, 0, null);

	Wait(1000);

	CreateSE("SE02","se�l��_����_�L�X01");
	MusicStart("SE02",0,500,0,1400,null,false);
}
He still had on that smile&, so I pulled his lips to mine 
and softly kissed him&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5002010a03">
"&.&.&.Nm&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5002011a01">
"&.&.&.Kid&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5002012a03">
"What was that for?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5002013a01">
"Nothing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0603]
Noiz looked a little ticked&, but his grin came right back&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5002014a03">
"We'll do some different things when I get out of here&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5002015a01">
"&.&.&.You perverted brat!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,500,0,1400,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0604]
I stirred up Noiz's hair by ruffling it with my hands&.

I never thought about it before&, but he's shown a lot more emotions lately&.

That honestly makes me happy&.

Holding onto that small joy&, the days passed on calmly in 
a mere blink of an eye&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	if($RECRIB_PLAY==1){//��z��
		ClearFadeAll(1000, true);Wait(2000);
	}else{
	ClearFadeAll(3000, true);
	}

//�����t�@�C��["dm2560.nss"]

}
