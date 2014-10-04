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


scene dm2553h.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev255ノイズラブＨ挿入=true;
	#ev255ノイズラブＨ挿入a=true;
	#ev255ノイズラブＨ挿入b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2554h.nss";

}


scene dm2553h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm013",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg107011_1_病院個室");
	FadeBG(0,true);

	CreateTextureSP("絵背景200", 200, -217, -217, "cg/bg/l/bg107011_1_病院個室_l.jpg");
	Zoom("絵背景200", 0, 1500, 1500, null, true);
	Request("絵背景200", Smoothing);

	FadeDelete("上背景", 0, null, true);

	Fw("fwノイズ_通常病院着_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001110a03">
"Perverted&.&.&.You're already dripping&."

{
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 500, 0, null);

	Fw("fw蒼葉_通常_shy3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001120a01">
"! Don't touch that&.&.&.Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 500, 0, null);

	CreateSE("SE02","se擬音_水_はねる06&.ogg");
	MusicStart("SE02",0,300,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
Noiz wraps his fingers around my cock&.
He smears the transparent liquid down from the tip&.

{
	Fw("fwノイズ_通常病院着_smile");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001130a03">
"It's nearly oozing out&."

{
	Fw("fw蒼葉_通常_shy2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001140a01">
"&.&.&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
I glare at Noiz for his embarrassing comments before 
bringing both my index and my middle finger to my mouth&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
I cover them in dripping saliva then bring them to my ass&.

{
	Fw("fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001150a03">
"&.&.You're going to do it yourself? So you have experience&."

{
	Fw("fw蒼葉_通常_shy3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001160a01">
"I don't&.&.&.Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
This is the first time I've ever done this&, but I can't 
let Noiz do too much&.

And I don't want to think about how much it'll hurt if I 
don't relax&, either&.&.&.

I'll just start off with one finger&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1400,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
I take calm breaths to try to ease the tension and push my wet fingers farther in&, little at a time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shy4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0342]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001170a01">
"Ah&.&.&. Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
It's impossible to explain&.&.&.how it feels to touch 
yourself there&.

It's to be expected&, but it's warm&.
But I can't explain&.&.&.the sensation&.

{
	Fw("fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001180a03">
"What does it feel like when you do it to yourself?"

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	Fw("fw蒼葉_通常_shy4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001190a01">
"I don't know&.&.&.Fwah&.&.&."

{
	Fw("fwノイズ_通常病院着_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001200a03">
"Looks painful&."

{
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_shy4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001210a01">
"Ah&.&.&.Ungh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
I try to add another finger&.
It's tight&, but I have to stretch it out&.&.&.

{
	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,500,0,1000,null,false);

	CreateTextureSP("絵背景100", 100, -280, -374, "cg/bg/l/bg107011_1_病院個室_l.jpg");
	Move("絵背景100", 500, -210, -424, Dxl1, false);
	FadeDelete("絵背景200", 500, null, true);
}
When I desperately try to loosen myself up&, Noiz jerked my waist towards him&.

{
	Fw("fw蒼葉_通常_shy2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001220a01">
"!? What&.&.&.!"

{
	Fw("fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001230a03">
"Nothing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm014",0,450,true);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
He rolls up my shirt and brings his face to my chest&.

{
	Fw("fw蒼葉_通常_shy3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001240a01">
"&.&.&.Hey&.&.&.!"

{
	Fw("fwノイズ_通常病院着_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001250a03">
"Just keep going&."

{
	Fw("fw蒼葉_通常_shy4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001260a01">
"-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	Wait(500);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,450,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
He slowly starts to jerk me off while sucking on my 
nipples&.

I almost wanted to push him away for doing something 
embarrassing like that&, but thanks to him&, I started 
to feel more pleasure all around&.

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);
}
And like that&, I twirled my fingers around inside me&.

{
	Fw("fw蒼葉_通常_shy4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001270a01">
"Fu&, ck&.&.&.&.Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0371]
It was tight with two fingers in at first&, but I gradually was able to stretch out more comfortably&.

{
	Fw("fw蒼葉_通常_shy3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001280a01">
"I&.&.&.think we're&.&.&.good-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1400,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
Gasping&, I pull my fingers out&.

{
	Fw("fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001290a03">
"Wow&, it's sopping wet&."

{
	Fw("fw蒼葉_通常_shy2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001300a01">
"Don't say stuff like that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14&.ogg");
	MusicStart("SE01",0,700,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0381]
I violently grip Noiz's cock to tease him and position 
myself&.

{
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,600,0,1000,null,false);

	Fw("fw蒼葉_通常_shy4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001310a01">
"&.&.&.Ah&.&.&.Ah&, ha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0382]
I start to spread apart&.
//Is it not obvious enough that hes talking about his ass? legit question

&.&.&.It's going in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	CreateSE("SE02","se擬音_水_はねる04");
	MusicStart("SE02",0,400,0,800,null,false);

	CreateTextureSP("絵背景99", 99, -217, -217, "cg/bg/l/bg107011_1_病院個室_l.jpg");
	Zoom("絵背景99", 0, 1500, 1500, null, true);
	Request("絵背景99", Smoothing);
	Fade("絵背景100", 0, 0, null, true);

	CreateTextureEX("絵ＥＶ110", 100, 0, 0, "cg/ev/l/ev255ノイズラブＨ挿入_l.jpg");
	Move("絵ＥＶ110", 1000, 0, -229, Dxl1, false);

	Fade("絵ＥＶ110", 1000, 1000, Dxl3, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001320a01">
"Unnngh&.&.&.Ah!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001330a03">
"&.&.&.!"

Of course it would've hurt no matter how many fingers I 
put in at first&.

I can feel myself opening up as he pushes in deeper&.&.&.

My head goes hot and my knees buckle&.
It's too much when his piercings go in too&.&.&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001340a01">
"Ha&, hah&.&.&.hk!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
It takes a little time&, but it goes all the way in&. Noiz 
and I are connected to each other at this point&.

I feel Noiz's cock pulsing inside of me&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001350a01">
"It's- in&.&.&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001360a03">
"Fu&.&.&.Hot&."

I leaned against his shoulders as he softly whispered in 
my ear&.

Noiz&, who's composed but still red&.&.&. said it was hot&.

Those words sounded special to me for some reason&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵背景99", 500, @50, @0, Dxl1, false);
	Fade("絵ＥＶ110", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
When I look at his face&, Noiz has a look of longing with 
his eyes closed&.

{
	Fw("fw蒼葉_通常_shy3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001370a01">
"&.&.&.Does it feel good?"

{
	Fw("fwノイズ_通常病院着_ero");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001380a03">
"&.&.&.I- don't know&.&.&.It's hot&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1000);

	CreateSE("SE01","se人体_動作_キス01");
	MusicStart("SE01",0,400,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
Thinking what he said was kinda cute&, I kissed the 
piercing on the bridge of Noiz's nose&.

I want&.&.&. to show him what the feeling of touch and 
temperature is like&.

That your body can feel so fiery and so good like this&, 
on the inside and out&.

I want Noiz to know what it feels like "to be alive" when 
I touch his skin with my fingers&.

I cling onto him and start to slowly move my hips&.

{
	CreateSE("SE01","se人体_動作_衣擦れ20");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shy4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001390a01">
"Ah&.&.&.Ha&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
Using both legs&, I bring my hips up and down&.

I'm holding my bodyweight&, so I can feel it all with just 
a little bit of movement&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}
I continue to try to loosen myself up and keep moving&. 
<k>&.&.&.When Noiz suddenly grabs onto my hips&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,600,0,1200,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ21");
	MusicStart("SE02",0,700,0,800,null,false);

	SetVolumeEX("SE02", 2000, 0, null);

	Move("絵ＥＶ110", 0, -100, -561, null, true);
	Move("絵ＥＶ110", 1000, -263, -395, Dxl3, false);
	Fade("絵ＥＶ110", 1000, 1000, Dxl3, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0422]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001400a01">
"Ungh&.&.&.!!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001410a03">
"Urk&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
I close my mouth to try to stop the loud moans from 
leaking out; his thrusts are more powerful than I 
thought they'd be&.

It's on a completely different level than when I was 
moving myself&.&.&.!

After Noiz bit down on his lip&, he let out a sly grin on 
his reddened face&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001420a03">
"&.&.&.Are you holding down your voice?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001430a01">
"-! Whatever&, your body-"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001440a03">
"I'm fine&. But moving is a little&.&.&. you move too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
His whispers are filled with heat&, stirring me up even 
more&.

The temperature in the room sharply rises&. 
Noiz and I are sweating&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);

	Move("絵ＥＶ110", 500, -263, -325, Dxl1, false);
	CreateTextureEX("絵ＥＶ111", 111, Center, Middle, "cg/ev/ev255ノイズラブＨ挿入.jpg");
	Fade("絵ＥＶ111", 500, 1000, null, true);
	Delete("絵ＥＶ110");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0441]
Noiz lost his composed face for a while and started to 
rock my hips&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001450a01">
"Unff&.&.&.Ah&, ah-!"

Noiz pushes into me in heat countless times&.

Over and over&, my body starts to feel a sweet feeling 
saturating it&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001460a01">
"Ah&, ugah&.&.&.Ha!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001470a03">
"&.&.&.Haah&.&.&."

My dick rubs against Noiz's stomach&, making me feel subtley
provocated&. It's only as half-intense as I had wanted it&.

{
	CreateSE("SE01","se人体_動作_衣擦れ20");
	MusicStart("SE01",0,600,0,800,null,false);
}
Feeling eager&, I make a decision and push myself into 
Noiz's abdomen&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001480a01">
"Ha&, hff&, ahhh&.&.&.!"

His piercings feel so good on me&.&.&.

With both Noiz and I pushing into each other&, the pleasure doubles&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ112", 112, -87, 0, "cg/ev/m/ev255ノイズラブＨ挿入_m.jpg");
	Move("絵ＥＶ112", 500, -48, -72, Dxl1, false);
	Fade("絵ＥＶ112", 500, 1000, null, true);
	Delete("絵ＥＶ111");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001490a01">
"Ah&, ungh&, ah&.&.&.!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001500a03">
"Haa&.&.&.ahhh&.&.&."

I try to stifle my moans by pushing my lips into his 
shoulder&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001510a03">
"&.&.&.! &.&.&.Feels good-"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001520a01">
"&.&.&."

His hoarse voice made my spine shiver&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateSE("SE01","se人体_動作_衣擦れ05");
//	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵ＥＶ112", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
Noiz closes his eyes with a cornered expression; he's 
really feeling good&.

I wanted him to feel even better&.&.&.so I moved while 
staring at his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ120", 120, -367, -285, "cg/ev/m/ev255ノイズラブＨ挿入a_m.jpg");
	Move("絵ＥＶ120", 1000, -407, -285, Dxl3, false);
	Fade("絵ＥＶ120", 1000, 1000, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
When my hips drop down and he thrusts even deeper into me&, a sweet voice escapes me&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001530a01">
"Uck&.&.&.Ah&.&.&.Ngah!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001540a03">
"Ah&.&.&.hah!"

{
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_倒れ込む");
	MusicStart("SE02",0,500,0,1000,null,false);

	CreateTextureEX("絵ＥＶ121", 121, -407, -285, "cg/ev/m/ev255ノイズラブＨ挿入_m.jpg");
	Move("絵ＥＶ120", 1000, -457, -285, Dxl3, false);
	Move("絵ＥＶ121", 1000, -457, -285, Dxl3, false);
	Fade("絵ＥＶ121", 700, 1000, null, true);
	Delete("絵ＥＶ120");
}
The bed springs violently creak and wet sounds scatter 
around the room&.

I want Noiz to enjoy it the most&.&.&.but I end up moving in 
a way that feels the best for me&.

Transparent semen starts to drip out of my cock&, ending 
up all over Noiz's abdomen&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001550a03">
"Ha&.&.&.sexy&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001560a01">
"Shut&.&.&.ngh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ122", 122, -230, -83, "cg/ev/m/ev255ノイズラブＨ挿入a_m.jpg");
	Move("絵ＥＶ122", 500, -230, -33, Dxl1, false);
	Fade("絵ＥＶ122", 500, 1000, null, true);
	Delete("絵ＥＶ121");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
Noiz's hot breaths leave through his smile and he covers 
my lips with his&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001570a01">
"M&.&.&.Mn- fu&.&.&.!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001580a03">
"Ha&.&.&.!"

We entwine our lips recklessly in a heat and fasten our 
pace&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001590a01">
"Unnmm&.&.&.&.Hff&.&.&.!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001600a03">
"Ngh&.&.&.&.&.!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001610a01">
"&.&.&.Ah!"

{	Delete("絵ＥＶ100");}
Noiz's lower half tosses me up; he must've noticed the 
change in my reaction&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ123", 123, Center, Middle, "cg/ev/ev255ノイズラブＨ挿入a.jpg");
	Move("絵ＥＶ122", 500, -230, -103, Dxl1, false);
	Fade("絵ＥＶ123", 500, 1000, null, true);
	Delete("絵ＥＶ122");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001620a03">
"&.&.&.Can you feel it?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001630a01">
"Ah&, there&.&.&.Ngh&, ahh!"

Electric shocks run through me when Noiz pushes against my inner walls&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001640a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ18");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ200", 200, Center, Middle, "cg/ev/ev255ノイズラブＨ挿入.jpg");
	Fade("絵ＥＶ200", 500, 1000, null, true);
	Delete("絵ＥＶ123");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
I cling onto Noiz in a daze&, only able to hear the sound 
of our gasps&.

&.&.&.I jerk back&. The gauze on his shoulder had slipped down 
to his arm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001650a01">
"Ah&, sorry&, your injury&.&.&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001660a03">
"&.&.&.It's whatever&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1400,null,false);

	CreateTextureSP("絵ＥＶ130", 130, -458, -300, "cg/ev/l/ev255ノイズラブＨ挿入b_l.jpg");
	Move("絵ＥＶ130", 500, @0, @-60, Dxl1, false);
	FadeDelete("絵ＥＶ200", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0511]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001670a01">
"Ah&.&.&.! Wai- ah&, haah&.&.&."

When I try to get off him&, Noiz powerfully urges me back&.

I try to bear the sweetness for a moment and somehow slide the gauze back to his shoulder&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001680a01">
"Ha&, ah&, ungh&.&.&.ah&.&.&.!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001690a03">
"&.&.&.Hf&.&.&.Hck!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001700a01">
"Ah&, I&.&.&.Noiz- ugah!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001710a03">
"&.&.&.! &.&.&.&.&.&."

It's painful&.&.&. I'm just about to come&, and my hoarse 
breaths leak from my lips&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_倒れ込む");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵ＥＶ130", 1000, -403, -110, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>　
[text0520]
I rub my dick against Noiz again and throw my face into 
his shoulder&, right before I let out&.

The bed obviously creaks and Noiz embraces me while he 
thrusts&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001730a03">
"Hck&.&.&.! &.&.&.&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001720a01">
"Unh&, ah&, no&, Noiz&.&.&.I'm already- ahhhhh&.&.&.!!!"

The force is pushing me even higher&.&.&.

I've hit my limit&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ131", 131, Center, Middle, "cg/ev/ev255ノイズラブＨ挿入b.jpg");
	Fade("絵ＥＶ131", 500, 1000, null, true);
	Delete("絵ＥＶ130");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>　
[text0521]
Semen splurts over Noiz's stomach&.

{
	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,450,0,800,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001740a01">
"Ah&.&.&.ha&.&.&.haa&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>　
[text0522]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001750a03">
"Nm&.&.&.kuh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE*", 2500, 0, null);

	CreateSE("SE02","se人体_動作_衣擦れ18");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE03","se人体_動作_衣擦れ15");
	MusicStart("SE03",0,400,0,1000,null,false);

	CreateTextureSP("絵ＥＶ130", 130, -458, -300, "cg/ev/l/ev255ノイズラブＨ挿入b_l.jpg");
	Move("絵ＥＶ130", 1000, -403, -110, Dxl3, false);
	FadeDelete("絵ＥＶ131", 1000, null, true);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
I tighten up on Noiz's swelling cock while he moves&.&.&. but then he comes to a stop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_寝返り");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE03","se人体_動作_衣擦れ05");
	MusicStart("SE03",0,700,0,1000,null,false);
	SetVolumeEX("SE03", 1500, 0, null);

	Delete("絵背景99");
	Fade("絵背景100", 0, 1000, null, true);
	Move("絵ＥＶ130", 500, -403, -110, Dxl3, false);
	FadeDelete("絵ＥＶ130", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0531]
{
	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,500,0,1300,null,false);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001770a03">
"&.&.&.! &.&.&.Haah&, hah&.&.&.!"

Noiz roughly breathes and his body jolts&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
I lean against his shoulder with a faint feeling of 
something warm pooling inside of me&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001760a01">
"Hah&.&.&.hah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2554h.nss"]

}
