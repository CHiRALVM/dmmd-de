//<continuation number="140">
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


scene dm5730ed.nss_MAIN
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
	#ev573蓮GOODＥＤ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//★エンドロール
	PreSetRoll(8);
	TheEND(8);

#GDED5=1;//蓮グッドエンドフラグ

}


scene dm5730ed.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色白", 90, "FFFFFF");

	OnBG(10,"bg107011_1_病院個室");
	FadeBG(0,true);

	CreateTextureSP("絵背景80", 80, -2000, 350, "cg/bg/l/bg107011_1_病院個室_l.jpg");
	Zoom("絵背景80", 0, 2000, 2000, null, true);
	Request("絵背景80", Smoothing);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg107021_1_病院病室前.jpg");

	Delete("上背景");


	CreateSE("SE01","se物体_蒼葉自室窓_開閉01");
	MusicStart("SE01",0,1000,0,800,null,false);

	DrawDelete("絵背景100", 500, 100, null, "slide_01_00_1", true);

	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("絵色白", 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
It was a private room with white curtains&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_窓_カーテン開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm012",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【看護士】
<voice name="看護士" class="看護士" src="voice/dm57/3000010e08">
"Sei-san&, your little brother is here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The nurse goes over and opens the curtains&.
I take deep breaths and walk up to the bed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵背景*", 1000, Dxl1, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
A man lies on the bed&, his head covered in bandages&.

Is this Sei?

&.&.&.Is it really?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【看護士】
<voice name="看護士" class="看護士" src="voice/dm57/3000020e08">
"He's been asleep ever since he was admitted here&, so it
 may still be hard for conversation&. But he's awake and
 can hear your voice&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm57/3000030a01">
"Is that so&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
No&.&.&. This must be someone else&.

I hold back the bitter pain pooling by my eyes&.

There are openings by the eyes and mouth&, but the rest 
is hidden by the bandages&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm57/3000040a01">
"What are the details on what happened to my brother?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【看護士】
<voice name="看護士" class="看護士" src="voice/dm57/3000050e08">
"He was moved to this hospital three months ago&. He was
 at an overseas one previously&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm57/3000060a01">
"Overseas?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【看護士】
<voice name="看護士" class="看護士" src="voice/dm57/3000070e08">
"Yes&. Sei-san's caretakers had high hopes for him&, so they
 moved him here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
They had high hopes&.&.&.?
I wonder who&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【看護士】
<voice name="看護士" class="看護士" src="voice/dm57/3000080e08">
"His physician was also surprised by his rehabilitation; he regained consciousness last month&."

//【看護士】
<voice name="看護士" class="看護士" src="voice/dm57/3000090e08">
"Please speak to him&. We'll be taking off his bandages&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,400,0,1400,null,false);

	CreateTextureEX("絵背景100", 100, -317, -485, "cg/bg/l/bg107011_1_病院個室_l.jpg");
	Move("絵背景100", 1000, -160, -485, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
The nurse carefully takes off his bandages&. 
I watched over him&, tense&.

The first thing visible was his black hair&.

It's a little shorter than what I remember Sei's being&. 
They must've snipped it in the hospital&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
And then his eybrows&.
His nose&, his cheeks&.

By the time it was down to his neck&, I knew that it was 
Sei's sleeping face&.

His complexion is deathly pale like a doll's&, but&.&.&.

Sei&.&.&. 
You were actually saved&.&.&.

I put my hands down on the bed and slouch over to look 
onto Sei's face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,600,0,1100,null,false);

	CreateTextureEX("絵背景101", 101, 128, -589, "cg/bg/l/bg107011_1_病院個室_l.jpg");
	Zoom("絵背景101", 0, 1500, 1500, null, true);
	Request("絵背景101", Smoothing);
	Move("絵背景101", 1000, 128, -541, Dxl1, false);
	Fade("絵背景101", 1000, 1000, null, true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm57/3000100a01">
"&.&.&.Sei&.&.&. Can you hear me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I hear a hoarseness in my voice as I speak to him&. 
Is it reaching him?

I held my breath&, looking at him&, and Sei's eyelids 
flickered&.

They flickered over and over until it became actual 
blinking&.

He slowly&.&.&.<k> opens his eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I lightly touch his shoulder as his gaze moves from the 
ceiling to me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm57/3000110a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
The color of his eyes&.&.&.

They're&.&.&.

A tender amber&.

No&, could&.&.&.

{
	SoundPlay("@dm015",0,450,true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);
}
Sei sluggishly raised his arms and touched my cheek&. He 
opened his mouth&, but no sound came out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm57/3000120a01">
"&.&.&.What?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
When I move my head close to his mouth&, I grip his hand on my cheek&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Is he trying to bring me in closer?
I bring my face closer&.

{
	CreateSE("SE01","se人物_動作_舐める01");
	MusicStart("SE01",0,600,0,1000,null,false);
	Wait(500);
}
&.&.&.And then he licked my cheek&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm57/3000130a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
I look at him blankly&.
That old behavior&.&.&.

My whole chest turns hot with unbearable emotion&.

&.&.&.I see&.

That game application I just got&.
The happy princess with a present&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I now understand the meaning of it&.

And right now I know who this man is&.

He smiles clumsily and opens his mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ120", 120, -423, -553, "cg/ev/l/ev573蓮GOODＥＤ_l.jpg");
	Move("絵ＥＶ120", 1000, -423, -571, Dxl1, false);
	Fade("絵ＥＶ120", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
&.&.&.Aoba&.

He was only mouthing the letters&, but I could hear his 
voice&.

With his usual deep voice&.

&.&.&.It's him&.<k>
He's come back&.

I thought&.&.&. that I'd never be able to touch him again&.

&.&.&.Sei&, my older brother&, gave me this last present&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,400,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ121", 121, -107, -0, "cg/ev/l/ev573蓮GOODＥＤ_l.jpg");
	Move("絵ＥＶ121", 1000, -357, -163, Dxl1, false);
	Fade("絵ＥＶ121", 1000, 1000, null, true);

	Delete("絵ＥＶ120");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
I put both of my hands on his face and brought our 
foreheads together&.

{
	Move("絵ＥＶ121", 1000, -461, -249, Dxl1, true);
}
Like I always would&.

And then I whispered:

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateTextureEX("絵ＥＶ122", 122, Center, Middle, "cg/ev/ev573蓮GOODＥＤ.jpg");
	Move("絵ＥＶ121", 1000, -407, -163, Dxl2, false);
	Fade("絵ＥＶ122", 1000, 1000, null, true);
	Delete("絵ＥＶ121");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm57/3000140a01">
"&.&.&.Welcome back&."

</PRE>
	SetText();
	TypeBeginN(0);//―――――――――――――――――――――――――――

	Wait(500);

	CreatePlainSP("絵板写", 30100);
	TextBoxDelete(0);
	Delete("@text*");
	FadeDelete("絵板写", 3000, DxlAuto, true);

	Wait(1000);

	ClearFadeAll(3000, true);

	Wait(1500);

	SoundPlay("@dmedgrand",0,450,false);


//※次ファイル["dm9999.nss"]

}
