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


scene dm2551h.nss_MAIN
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
	#ev255�m�C�Y���u�g�O�Y=true;
	#ev255�m�C�Y���u�g�O�Ya=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2552h.nss";

}


scene dm2551h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm013",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg107011_1_�a�@��");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -133, -182, "cg/bg/m/bg107011_1_�a�@��_m.jpg");

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
I really couldn't tell whether this was a good idea or not&,
but it never crossed my mind that we should stop&.

Noiz even showed me his honest feelings like I had always 
wanted&, and&.&.&.

I wanted to know more about Noiz&.

Maybe I had always wanted to more than I had ever noticed&.

And at this point&.&.&. the fact that I didn't want to stop 
was proof of that&.

{
	FadeDelete("�G�w�i100", 500, null, true);

	CreateSE("SE01","se����_�h�A_����01");
	MusicStart("SE01",0,600,0,1000,null,false);
}

I left Noiz for a moment and locked the door&.
Then I checked that the curtains were definitely closed&.

{
	Fw("fw�m�C�Y_�ʏ�a�@��_smile");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000570a03">
"You're being cautious&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000580a01">
"Of course I am&.&.&.!"

{
	Fw("fw�m�C�Y_�ʏ�a�@��_smile2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000590a03">
"I don't really care if anyone sees us&."

{
	Fw("fw���t_�ʏ�_sigh");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000600a01">
"Well&, I do&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
I go back over to Noiz and put my hands back on the bed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,600,0,1400,null,false);

	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev255�m�C�Y���u�g�O�Y.jpg");
	Fade("�G�d�u100", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000610a01">
"&.&.&.&.&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000620a03">
"&.&.&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000630a01">
"Thi-This sort of thing requires some guts&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000640a03">
"Really?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000650a01">
"Well&, yeah&. I locked the door&, but what if someone was
 standing outside?"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000660a03">
"You don't need to think about that&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000670a01">
"But I am&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000680a03">
"Then stop&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u101", 101, -416, -573, "cg/ev/l/ev255�m�C�Y���u�g�O�Ya_l.jpg");
	Move("�G�d�u101", 1000, 0, -278, Dxl1, false);
	Fade("�G�d�u101", 1000, 1000, Dxl3, true);
	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000690a01">
"!"

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}
Noiz let out a small sigh and wrapped his arm around my 
back&.

And like that&.&.&. I let him kiss me&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000700a01">
"&.&.&.Ngh&.&.&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000710a03">
"&.&.&.&.&.!"

He starts to push harder on my lips&, but then pecks me on 
the cheek to tell me to open my mouth&.

When he sticks his tongue into my open mouth&, he traces it over my teeth&, slowly licking them&.

I heard the sound of something clinking against my teeth 
and I remembered Noiz's tongue piercing&. 

He did the same thing last time&, now that I think about it&.

It was hot and all back then&.&.&. but I would've never 
imagined what it felt like right now&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u102", 102, -140, -32, "cg/ev/m/ev255�m�C�Y���u�g�O�Ya_m.jpg");
	Move("�G�d�u102", 500, -178, -32, Dxl1, false);
	Fade("�G�d�u102", 500, 1000, null, true);
	Delete("�G�d�u101");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000720a01">
"Fu&.&.&. Nnf&."

I put my arms around Noiz's neck as we intertwined and 
sucked on each other's tongues&. I sometimes rub his 
back or his head&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000730a01">
"&.&.&.Haah&.&.&.!"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000740a03">
"&.&.&.&.&."

My body temperature rose as my mind began to go numb from 
all the deep kisses&.

I heard the tapping of footsteps by the door before&, but I notice them less and less&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000750a01">
"Mn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�d�u102", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
I slowly lift my body weight and lay Noiz down onto the 
bed&.

As we separate&, a thin string of saliva forms between us&.

More saliva drips from my mouth as my hot&, shallow 
breaths escape into the air&.

Noiz looks at me with a confused expression as he rests 
his head on the pillow&.

{
	Fw("fw�m�C�Y_�ʏ�a�@��_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000760a03">
"&.&.&.? What?"

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000770a01">
"I thought it'd be hard for you to move&."

{
	Fw("fw�m�C�Y_�ʏ�a�@��_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000780a03">
"You won't say it's over yet&, will you? And you're even&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�a�@��_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000790a03">
"Are you going to ride me&, even though you're on top?"

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000800a01">
"&.&.&.&.&."

{
	Fw("fw���t_�ʏ�_shy3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000810a01">
"&.&.&.Well&, that's close to what I was thinking&."

{
	Fw("fw�m�C�Y_�ʏ�a�@��_shock");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000820a03">
"&.&.&.Seriously?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
Noiz's eyelids unexpectedly fluttered&, as if he thought I 
was joking&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2552h.nss"]

}
