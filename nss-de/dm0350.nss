//<continuation number="530">
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


scene dm0350.nss_MAIN
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
	#ev035�m�C�Y�o��=true;
	#ev035�m�C�Y�o��a=true;
	#bg104031_5_���t��������r�炵=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0350sl.nss";

}


scene dm0350.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg104001_3_���t��O�ʂ茺�֏���");
	FadeBG(0,true);

	Delete("��w�i");

	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
When I come back home after my part-time job&, I 
restlessly try to open the lock on the front door&.

I wonder if Granny behaved herself?

&.&.&.However&, I stop my hand halfway&.

Something's strange&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A_����01");//�������u�r�d�Fse����_�h�A_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000010a01">
"Huh?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A_����02");//�������u�r�d�Fse����_�h�A_����02�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
When I insert the key&, something feels different&. 
&.&.&.Don't tell me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

	CreateSE("SE01","se����_���t���_���J���������01");//�������u�r�d�Fse����_���t���_���J���������01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000020a01">
"&.&.&.It's open&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The door isn't locked&.

Did I go out without locking it again&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000030a01">
"This is bad&, Granny's inside&.&.&. What do I do if something
 happened?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	OnBG(10,"bg104011_5_���t��֏���");
	FadeBG(500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
The bonds between the people in the community are strong&, 
but security isn't tight&, and it wasn't uncommon to hear 
of thieves&.

I feel sick of my own forgetfulness and I enter the house&, 
listening carefully&.

&.&.&.There doesn't seem to be any sign of people&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 100, "000000");
	Fade("�G�F��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
I take off my shoes and enter the corridor before heading 
straight to Granny's room&.

I open the door quietly and peep inside to find Granny 
sleeping buried in the futon&.

Looks like nothing happened&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�F��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
I heave a sigh of relief and return to the corridor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000040a01">
"&.&.&.Hm?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I stop going up the stairs&.

Something&.&.&. felt strange&.

It's quiet in the house because Granny was sleeping&, and 
there's nothing particularly strange&.

Is it my imagination?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���t��K�i_�o��ʏ�01");//�������u�r�d�Fse����_���t��K�i_�o��ʏ�01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("�G�F��", 1000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
I twist my neck as I walk up the stairs and open the door 
to my room&.

&.&.&.Inside&, I realize that it wasn't just my imagination&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���t�����_���J���������01");//�������u�r�d�Fse����_���t�����_���J���������01�v
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateTextureSP("�G�w�i100", 100, 0, -801, "cg/bg/l/bg104031_5_���t��������r�炵_l.jpg");

	DrawDelete("�G�F��", 1000, 100, null, "slide_01_00_1", true);

	Wait(1000);

	Move("�G�w�i100", 1000, -1022, -801, Dxl1, true);

	OnBG(10,"bg104031_5_���t��������r�炵");
	FadeBG(0,true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000050a01">
"Wha-what's all this&.&.&.?"
{
	SoundPlay("@dm006",0,450,true);
}

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	Move("�G�w�i100", 500, -1022, -601, Dxl1, false);
	FadeDelete("�G�w�i100", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Not that it's anything to brag about&, but my room was 
never particularly clean&.

There were books and magazines piled up on the floor&, and 
there were also many things I just left there because 
cleaning them up would be a pain&.

But&.&.&. I don't remember it being this dirty&.

The room is a complete mess&, almost like a storm blew its 
way through it&.

There are no places left to stand&. Everything has been 
pulled out&, and even the table was turned over&.

And in the middle of it all sits something that I would've 
never wanted to see&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�p�\�R��_�L�[�{�[�h����01");//�������u�r�d�Fse����_�p�\�R��_�L�[�{�[�h����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0048]
&.&.&.A person is sitting in front of the computer monitor&. 
Just boldly sitting there&.

I can only think of one thing this person might be&.

It's just like what I was thinking of earlier&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000060a01">
"Thief!"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000070a01">
"What are you doing in someone else's room!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u111", 1110, Center, Middle, "cg/ev/ev035�m�C�Y�o��a.jpg");
	CreateTextureEX("�G�d�u110", 1100, -573, -42, "cg/ev/l/ev035�m�C�Y�o��a_l.jpg");
	Move("�G�d�u110", 1000, -573, -121, Dxl1, false);
	Fade("�G�d�u110", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
The person in front of the computer looks up slowly as if 
he only just realizes my presence&.

He's a completely unfamiliar face and I've never seen him 
before in my life&. 
He seems to be about the same age as me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u110", 1000, -573, -221, Dxl3, false);
	Fade("�G�d�u111", 1000, 1000, null, true);
	Delete("�G�d�u110");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000080a03">
"Welcome back&."

{
	Fw("fw���t_�ʏ�_shout2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000090a01">
"Wha&.&.&.!? Who are you? Why are you in my room&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0057]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000100a03">
"By the way-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�p�\�R��_�L�[�{�[�h����02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�d�u109", 1090, 0, -121, "cg/ev/l/ev035�m�C�Y�o��_l.jpg");
	FadeDelete("�G�d�u111", 500, null, true);
	Move("�G�d�u109", 1000, -423, -121, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
He ignores me as I tremble with anger and taps on the 
keyboard with his middle finger&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000110a01">
"Hey! I didn't say you could touch that!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000120a03">
"I don't understand the data inside of here at all&. What's
 this even supposed to be?"

{
	CreateTextureSP("�G�d�u108", 1080, -423, -121, "cg/ev/l/ev035�m�C�Y�o��a_l.jpg");
	FadeDelete("�G�d�u109", 500, Dxl1, true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000130a03">
"Even the Allmate remodeling program here is complicated&.
 Who the hell are you?"

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000140a01">
"Like hell I'd tell you! Just get out!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000150a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u108", 400, null, true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,600,0,800,null,false);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
The man laughs through his nose as if he's looking down 
on me and stands up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000160a03">
"Hey&, you&. Don't you know who I am?"

{
	Fw("fw���t_�ʏ�_shout2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000170a01">
"Wha?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000180a03">
"I think you do know&, though&."

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000190a01">
"&.&.&.I don't know you at all&. You've got the wrong guy&."

{
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000200a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
The man looks into my eyes and opens his mouth slowly&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000210a03">
"This time&, it is such an honor&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000220a03">
"So let's have a fun game&, shall we?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");//�������u�r�d�Fse�[��_��z_�t���b�V���o�b�N01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�������u���o�F�Ҏa����t���b�V���o�b�N�A�{���Ɉ�u�v

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1000", 1000, Center, InBottom, "cg/bg/bg201021_0_���C���m�C�Y01.jpg");
	St("C",1200, @0,@0,"st�E�T�M��_�ʏ�_normal");
	FadeSt("C",0,true);

	CreateColorSP("��z�F", 5000, "624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 30, null, true);

	Wait(30);
//	WaitKey();

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("��z*");
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);

	FadeDelete("�G�ʂQ", 30, null, true);


	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000230a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
&.&.&.I've heard that somewhere before&.

What? Where was it? 
I've got a very unpleasant feeling&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000240a03">
"Still don't know?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�L�[�z���_�[_��01");//�������u�r�d�Fse����_�L�[�z���_�[_��01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
The man takes something out of his pants pocket&.

It's something full of rabbit heads&.&.&. a key chain&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000250a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N01");//�������u�r�d�Fse�[��_��z_�t���b�V���o�b�N01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�������u���o�F�Ҏa��퓬�\�}������𒷂߂ɕ\���v

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1000", 1000, 200, 90, "cg/ev/l/ev900���C���ΐ푓�tVS�E�T�M��_l.jpg");
	Zoom("��z1000", 0, 1200, 1200, null, true);
	Request("��z1000", Smoothing);

	CreateColorSP("��z�F", 5000, "624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 200, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
This guy&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("��z*");
	OnBG(10,"bg104031_5_���t��������r�炵");
	FadeBG(0,true);

	FadeDelete("�G�ʂQ", 250, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
Satisfied with my reaction&, the man drops the key chain 
and looks at me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0095]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000260a03">
"It was a pretty entertaining setup&, wasn't it? Misdirected home delivery and all&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000270a01">
"! Were you the Drive-Byer back then? And the home
 delivery&.&.&."


{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000280a01">
"Were you the one that ordered from us?"

{
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000290a03">
"Yeah&. When I investigated various things I found out you
 worked there&, so I thought I'd have you come to me&."

{
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_cool2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000300a03">
"I paid in advance&, so there's no problems for the shop&,
 right?"

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000310a01">
"&.&.&.That's not the issue&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
I recall how completely at a loss Haga-san was&, and the 
anger wells up&.

{
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000320a03">
"By the way&. It was like that before too&, but&.&.&. When we
 did Rhyme&, what did you do?"

{
	Fw("fw���t_�ʏ�_angry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000330a01">
"What are you talking about?"

{
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000340a03">
"Don't play dumb&. I'm asking how you beat me&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000350a01">
"&.&.&.Beat you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
During that Drive-By thing&, did I beat this guy? 
I can't remember&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000360a03">
"Are you deaf? Say something&."

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000370a01">
"No&. &.&.&.I don't remember&."

{
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000380a03">
"What?"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000390a01">
"I can't remember a thing about what happened during
 Rhyme&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000400a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
The man frowns a little&, but immediately forms a straight 
face again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000410a03">
"So that's how you try to get out of it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE03","se�l��_����_�͂�01");
	MusicStart("SE03",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreatePlainSP("�G��", 990);

	CreateSE("SE01","se�l��_�Ռ�_�@��01");//�������u�r�d�Fse�l��_�Ռ�_�@��01�v
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,700,0,800,null,false);

	Shake("�G��", 200, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123a]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000420a01">
"&.&.&.Guh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123b]
Suddenly&, he grabs me by my coat collar and presses me 
against the wall&.

This guy's stronger than he looks&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000430a03">
"Then I'll have to use force&. It seems to be the most
 effective way for you&."

{
	Fw("fw���t_�ʏ�_pinch");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000440a01">
"&.&.&.Gh&, let me go!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000450a03">
"You really don't remember?"

{
	Fw("fw���t_�ʏ�_shout");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000460a01">
"I don't remember!"

{
	St("C",740, @0,@0,"fu�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000470a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
The man stares into my eyes intently as if he's trying to 
find something&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000480a03">
"Fight me in Rhyme one more time&."

{
	Fw("fw���t_�ʏ�_pinch");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000490a01">
"Wha? I don't know how to do Rhyme&, &.&.&.ugh&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��02");//�������u�r�d�Fse�l��_����_�ߎC��01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, , 10, 0, 0, 1000, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0146]
I'm pressed against the wall with even more force&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0147]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000500a03">
"Still going to say that?"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000510a03">
"Then I'll destroy what's important to you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/5000520a01">
"!"

{
	St("C",740, @0,@0,"fu�m�C�Y_�ʏ�_normal3");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/5000530a03">
"I know what's important to you&. I know all about it&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0154]
The man's eyes look at the computer&, suggesting something&.

What this guy's talking about is probably&.&.&. Ren&.

He's threatening me&. If I don't accept&, he's really gonna 
do it&.

A dangerous atmosphere fills the room&.

But even now I don't feel like fighting him in Rhyme&.

And I'm beginning to get angry at his ridiculous behavior&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0350sl.nss"]

}
