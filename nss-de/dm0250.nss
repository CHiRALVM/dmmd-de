//<continuation number="710">
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


scene dm0250.nss_MAIN
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
	#ev025�������z���g��=true;
	#ev025�������z���g��a=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0260.nss";

}


scene dm0250.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("@dm*", 2000, 0, null);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.Huh?

Koujaku's not here&. Neither is Ren&.

I thought that was the case at first&, but then I found the door leading to the veranda slightly open&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev025�������z���g��.jpg");
	Fade("�G�d�u100", 1000, 1000, null, true);

	SoundPlay("@dm012",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
When I look out at the veranda&, I see Koujaku leaning on 
the handrail&.

He looks down at the nightlife with a calm expression&.

He holds a thin cigarette between his fingers while white 
smoke escapes from his slightly narrowed lips&.

Koujaku would never smoke in my room&.&.&. For some reason&, 
he would only ever do it on the veranda&.

He doesn't smoke in front of girls or during work&, or even when he's at a bar&, he only smokes here&.

I don't know the reason&, but maybe he feels like he can 
actually relax here&.

Koujaku would never show such a dim expression outside&. 
He's always confidently smiling&. That's how he presents 
himself&.

He seems like he's usually having fun with women&, but I 
wonder if that itself is unexpectedly exhausting&.

Koujaku's hand carries the cigarette to his lips&. In the 
dark&, his fingers look extremely long and beautiful&.

He does hair every day&, so he should be skillful with his 
fingers&.

They look bony and masculine;it's strange that I find them beautiful&.

Koujaku holds Ren&, who has Beni on his head&. Both of them 
seem to be in sleep mode&.

I'm afraid that they'll fall off the handrail&, but I trust Koujaku to hold on to them&.

I pick the ashtray in my room and open the door to the 
veranda&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���t������_�J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u102", 102, -109, -62, "cg/ev/m/ev025�������z���g��_m.jpg");
	Move("�G�d�u102", 1000, -109, -110, Dxl1, false);
	Fade("�G�d�u102", 1000, 1000, null, true);
	Delete("�G�d�u100");

	CreateTextureSP("�G�d�u101", 101, -109, -110, "cg/ev/m/ev025�������z���g��a_m.jpg");

	Wait(500);

	FadeDelete("�G�d�u102", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000010a02">
"&.&.&.Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Koujaku's absent-minded eyes catch me and a loose smile 
appears on his mouth&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000020a02">
"Yo&. Finished with the bath?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000030a01">
"I thought you were in the living room&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000040a02">
"Aah&. Felt like having a little of this&."

Koujaku lightly raises the hand holding a cigarette&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000050a01">
"You really like it here&, don't you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000060a02">
"Really? Maybe&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000070a01">
"Even though you can't see anything&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000080a02">
"I guess&.&.&. but does it really matter if you can see
 anything or not?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000090a01">
"? Does it? I don't really get you sometimes&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Koujaku exhales and laughs unexpectedly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000100a01">
"Here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	OnBG(10,"bg104041_3_���t��x�����_");
	FadeBG(0,true);

	FadeDelete("�G�d�u101", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
I hold out the ashtray and he puts the shortened cigarette into it&. I lower it next to my feet and lean on the 
handrail next to him&.

{
	Fw("fw�g��_�ʏ�_sad");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000110a02">
"Aaah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
As soon as Koujaku sees me next to him&, he frowns&.

{
	Fw("fw�g��_�ʏ�_worry3");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000120a02">
"Aoba&, not again&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000130a01">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000140a02">
"Your hair&. I keep saying you have to dry it a little
 better&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	CreateSE("SE01","se����_�x�b�h_��01");
//	MusicStart("SE01",0,600,0,800,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,600,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Koujaku reaches out towards me&.

Is he going to touch my hair&.&.&.? 
I flinch back reflectively&.

But instead of catching my hair&.&.&.
He grabs my nose&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,10,null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000150a01">
"Guah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cheese2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000160a02">
"Really&, with the line of work I'm in&, I can't help but
 care about your hair&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,400,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 4, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000170a01">
"Stop it!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
When I shake my head to escape&, Koujaku smiles happily&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000180a02">
"Your hair's grown a lot&. Are you still cutting it on your
 own every once in a while?"

{
	Fw("fw���t_�ʏ�_sigh");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000190a01">
"A little&, yeah&. I don't want to have to see
 a professional&. Doing it myself is enough&."

{
	Fw("fw�g��_�ʏ�_normal");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000200a02">
"Well&, it's not that bad? Everything seems to be in the
 right place&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_cranky",2000,"fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000210a01">
"Really? Kyaa&, Koujaku-san complimented me&, I'm so totally
 happy&."

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000220a02">
"Why the sarcastic tone?"

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000230a01">
"An imitation of your fans&."

{
	Fw("fw�g��_�ʏ�_fake");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000240a02">
"Oh&, you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
Koujaku chuckles&.

I won't let anyone snip my hair for a reason&.

Ever since I was born&, there's been a sense of feeling in 
my hair&.

That's why cutting my hair with scissors hurts&, so I don't do it&.

Although below the shoulder&, the feeling becomes blunt so 
I can snip there somehow&.

Ever since I was a kid&, I was teased that I looked like a 
girl because of it&.

Since I could also feel when it was being touched&, they 
would pull on my  hair as a joke&.&.&. It was hell&.

They bullied me because they thought it was funny&. But 
when they did&, Koujaku always saved me&.

Though&, it seems Koujaku thought I was a girl in the 
beginning&.

When he found out I was a boy&, he was considerably 
surprised&. But Koujaku's attitude didn't change after that&.

And I was pretty happy about it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000250a02">
"You have such a beautiful hair&, so you have to take good
 care of it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000260a01">
"&.&.&.I've always thought so&, but you say that so often and
 so easily&. That hasn't changed about you from the old days
 at all&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	Fw("fw�g��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000270a02">
"I only say it because I mean it&. And you used to be so
 bashfully happy when I complimented you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Koujaku makes an overly dramatic glance off into the 
distance&, and I throw him another glare&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000280a01">
"That's when I was a kid&. I don't remember&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
I wipe my wet hair and a blunt pain runs all the way down  to my shoulders&.

{
	SetVolumeEX("SE*", 1000, 0, null);
}
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	Fw("fw���t_�ʏ�_pinch");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000290a01">
"Ow&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
This pain&.&.&.
Is it still from what happened in Rhyme&.&.&.?

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000300a02">
"What's the matter?"

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000310a01">
"No&, it's nothing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000320a02">
"It doesn't look like nothing&. Come to think of it&, you
 looked pretty tired a while ago&, too&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000330a01">
"Ah&.&.&."

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000340a02">
"What is it? No need to go putting up a front&."

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000350a01">
"It's not like that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
What should I do? Should I tell Koujaku about Rhyme?

A little bit of hesitation pops up&.

In these kinds of situations&, Koujaku has a strangely sharpsense of intuition&. 
He's already watching me with doubtful eyes&.

Even if I try to lie now&, he won't buy it&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000360a01">
"Well&, about today&. I had a strange experience&. Well&, how
 should I say this? Like I was pulled into Rhyme&.&.&."

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000370a02">
"Pulled into Rhyme?"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000380a01">
"It happened suddenly&. I was on a delivery&, and before I
 knew it I was standing on a Rhyme field&."

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000390a02">
"You're not talking about a dream&, right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000400a01">
"No&."

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000410a02">
"So in other words&.&.&. Wait&, is that even possible?"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000420a01">
"I didn't really get it either&, but it was close to your
 territory&. That narrow alley there&."

{
	Fw("fw�g��_�ʏ�_think");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000430a02">
"I haven't heard anything like that before&.&.&."

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000440a01">
"There were some other strange things too&. Usui wasn't
 there either&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000450a02">
"That's strange&. It's responsible for holding Rhyme games&,
 right? That strange device appears with it and all&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000460a01">
"Isn't it? And&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
I tell Koujaku about the rabbit head&.&.&. I also include the fact that he knew my name&.

After earnestly listening to my story&, Koujaku groans&.

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000470a02">
"What he did to you&, was it&.&.&. Wasn't it like a Drive-By?"

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000480a01">
"A Drive-By?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000490a02">
"I've only heard this from my team mates&, and I don't know
 the details but&.&.&. there seem to be guys who are able to
 set up a Rhyme game without Usui&."

{
	Fw("fw�g��_�ʏ�_cool");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000500a02">
"Because their Rhyme games don't have rules or limits&,
 there seem to be cases where the pulled-in opponents are
 left half dead&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000510a01">
"Then&, was my opponent one of those Drive-Byers too?"

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000520a02">
"There's the possibility&. However&.&.&."

{
	Fw("fw�g��_�ʏ�_cranky3");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000530a02">
"&.&.&.It makes me sick&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000540a01">
"What does?"

{
	Fw("fw�g��_�ʏ�_sad");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000550a02">
"I'm relieved that you managed to escape this time&, but
 what happens if you get pulled in again? Wouldn't that be
 extremely dangerous?"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000560a01">
"But I haven't even done Rhyme so why&.&.&. Why did he mistake me for someone else?"

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000570a02">
"There's also the possibility that he didn't care who he
 challenged&. Or it might've been someone who held a huge
 grudge against you&."

{
	Fw("fw���t_�ʏ�_cranky");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000580a01">
"No way&. I'm not you&."

{
	FwPro("fw�g��_�ʏ�_cheese2",1500,"fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000590a02">
"How cruel&. But he knew your name&, right?"

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000600a01">
"Well&.&.&. that's right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000610a02">
"&.&.&.&.&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000620a01">
"Koujaku?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
Koujaku keeps silent with a troubled face&.

After a while&, I hear a small sigh&.

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000630a02">
"&.&.&.Sorry&. I think I'll just go home for today&. I
 remembered I had to do something&."

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000640a01">
"Oh? Okay&, I see&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_��01");
	MusicStart("SE01",0,600,0,800,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,600,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0172]
Koujaku pushes off from the handrail and stands in front 
me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_cool2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000650a02">
"Are you really okay?"

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000660a01">
"Yeah&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000670a02">
"I'll believe you&, then&. If something happens&, tell me
 right away&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000680a01">
"I know&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_smile2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000690a02">
"Good&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
Koujaku smiles at our agreement and gently hands Ren over 
to me&.

He then picks up Beni&, who is resting on Ren's head&, and 
puts him in his pocket&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000700a02">
"See ya&. Good night&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000710a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
Koujaku raises his hand in farewell and leaves the room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0260.nss"]

}
