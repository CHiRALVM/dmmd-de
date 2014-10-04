//<continuation number="1850">
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


scene dm4535h.nss_MAIN
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
	#ev453停止するクリア=true;
	#ev453停止するクリアa=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4540.nss";

	if($RECRIB_PLAY==1){//回想モード中
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB08=1;//回想用フラグ取得

}


scene dm4535h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm014",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, 0, -524, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");

	FadeDelete("上背景", 0, null, true);

	SetVolumeEX("@dm*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0521]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001640a04">
"&.&.&."

My head heats up even more&, and I look at Clear while 
keeping uneven gasps&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ110", 110, -499, -395, "cg/ev/l/ev453停止するクリア_l.jpg");
	Move("絵ＥＶ110", 1000, -499, -315, Dxl1, false);
	Fade("絵ＥＶ110", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0522]
Clear slowly blinks&.&.&. and smiles happily at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0523]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001650a04">
"&.&.&.Aoba-san&. Thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0524]
My eyes burn as he speaks in such a small voice&, and the 
tears fall from my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0525]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001660a01">
"&.&.&.Dont' say stuff&.&.&.like 'Thank you'&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateTextureEX("絵ＥＶ111", 111, Center, Middle, "cg/ev/ev453停止するクリア.jpg");
	Move("絵ＥＶ110", 800, -499, -250, Dxl3, false);
	Fade("絵ＥＶ111", 800, 1000, null, true);
	Delete("絵ＥＶ110");

	Wait(700);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001670a04">
"I was very happy to be able to feel you&, able to hold
 you&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001680a04">
"I truly did want to always be together with you&.&.&. as a
 human&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001690a01">
"&.&.&.!"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001700a04">
"But it's fine&. I'm happy as can be&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001710a04">
"I won't say that I was happy&. Because I'll always be happy from now on&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001720a04">
"So&.&.&. Guh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_効果_火花01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("絵ＥＶ112", 112, 0, -200, "cg/ev/m/ev453停止するクリア_m.jpg");
	Move("絵ＥＶ112", 500, 0, -285, Dxl3, false);
	Fade("絵ＥＶ112", 500, 1000, null, true);

	Delete("絵ＥＶ111");

	CreateSE("SE03","se擬音_効果_火花01");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateSE("SE04","se擬音_効果_火花02");
	MusicStart("SE04",0,700,0,1000,null,false);

	CreateTextureEXadd("絵演出", 6000, 404, 173, "cg/ef/efx02火花電光02.jpg");
	Zoom("絵演出", 0, 1800, 1800, null, true);
	FadeFF("絵演出", 30, 1000, 300, 0, 0, Dxl3, false);
	Wait(50);
	FadeDelete("絵演出", 30, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0541]
Clear painfully groans&, his face warped with pain&.

The joints of his arms and other parts of his body start 
to spark&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0542]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001730a01">
"Clear&.&.&.!"

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001740a04">
"I'm&, fi&, ne&.&.&. Aoba-san&, I want to ask some&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0543]
The smell of something burning floats to my nostrils&, and 
smoke rises from Clear's body&.

What do&.&.&.
What should I do&.&.&.!?

In a panic&, I desperately nod to Clear&. I feel like I want to scream&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ112", 1500, -419, -64, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001750a04">
"&.&.&.I&.&.&. Was I able to&.&.&. touch you&.&.&. like a human would?"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001760a04">
"Like a human would&, until the end&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001761a01">
"&.&.&.!"

I can't let out my voice without bursting into tears&.
But I manage to choke out an answer&.

Only&.&.&. so I can answer Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0552]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001770a01">
"&.&.&.Of course&.&.&. More than anyone&, always&.&.&. More than
 anyone&.&.&. Anyone&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0553]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001780a01">
"You were&.&.&.always human&.&.&.Clear&.&.&.!"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001790a04">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0554]
A relieved smile slowly spreads across Clear's face&.

A smile coming from the bottom of his heart&.&.&.
A smile of someone who is truly happy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001791a04">
"Aoba-san&, before&, when I was fighting the α&.&.&. you used
 Scrap on me&, right&.&.&.?"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001792a04">
"It's strange&, even though I'm a machine&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001793a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0561]
&.&.&.That's right&.

I definitely used Scrap on Clear&.

After I entered his consciousness with Scrap&, I was in 
a wondrous&, empty space&.

And I could hear Clear's voice all around me&.&.&.
That's what it was like&.

{
	SoundPlay("@dm020b",0,450,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001794a04">
"I was thinking that- The feeling of wanting to protect
 you&, Aoba-san&, wouldn't it be from my heart?"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001795a04">
"When I felt you enter me&.&.&. I was happy&. It was such a
 warm feeling&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001796a01">
"Clear&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001797a04">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0562]
Clear exhales painfully&, but his smile never fades&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0563]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001800a04">
"&.&.&.I always thought that death was a cold thing&. When
 Grandpa died&, I was truly sad&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001810a04">
"Grandpa fell asleep&.&.&. and never woke up&.&.&. So whenever
 you were asleep I'd be anxious&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001820a04">
"But death is really such a tender&, warm thing&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se擬音_効果_火花01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	CreateSE("SE02","se擬音_効果_火花01");
	MusicStart("SE02",0,1000,0,1200,null,false);

	CreateSE("SE02","se擬音_効果_火花02");
	MusicStart("SE02",0,700,0,1800,null,false);
	CreateTextureEXadd("絵演出", 6000, -253, 56, "cg/ef/efx02火花電光02.jpg");
	Zoom("絵演出", 0, 1500, 1500, null, true);
	FadeFF("絵演出", 30, 1000, 300, 0, 0, Dxl3, false);
	Wait(50);
	CreateSE("SE03","se擬音_効果_火花02");
	MusicStart("SE03",0,700,0,1400,null,false);
	FadeDelete("絵演出", 30, Dxl2, true);

	SetVolumeEX("SE*", 500, 0, null);

	Wait(1700);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0571]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001830a04">
"Aoba-san&.&.&. Thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1000);

	CreateTextureEX("絵ＥＶ121", 121, -419, -64, "cg/ev/m/ev453停止するクリアa_m.jpg");
	Fade("絵ＥＶ121", 1000, 1000, null, true);
	Delete("絵ＥＶ112");

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0572]
All he can do is mumble and take long breaths&.

Clear can't move&.

Still wearing his gentle&, innocent smile&, the light fades 
from his eyes&.

Never again&.&.&. will I be able to talk to him&.

I'll never hear him call me 'Master' again&.
Or even 'Aoba-san'&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
Never&.&.&. again&.

I knew that&.

I was ready for it&.<k> &.&.&.I thought I was&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0581]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001840a01">
"&.&.&.&.Ungh&.&.&.gh&.&.&.Ugghh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0582]
I hold Clear's cheeks with my hands&, and kiss the naked 
machine part of his face&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0583]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001850a01">
"&.&.&.Good night&.&.&. Clear&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	if($RECRIB_PLAY==1){//回想時
		ClearFadeAll(1000, true);Wait(2000);
	}else{
	ClearFadeAll(2000, true);
	Wait(8000);
	}

//※次ファイル["dm4540.nss"]

}
