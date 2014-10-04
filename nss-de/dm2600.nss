//<continuation number="250">
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


scene dm2600.nss_MAIN
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
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2610.nss";

}


scene dm2600.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	SoundPlay("@dm003",0,450,true);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_足音_走り去る子供01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("L",730, @-50,@0,"stキオ_通常_normal");
	Move("@L*", 200, @50, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm26/0000010b10">
"ATTAAAAACCCKKK!!!!!"

{
	St("C",740, @0, @50,"stナオ_通常_normal");
	Move("@C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm26/0000020b13">
"Attack!!!!!!"

{
	SetVolumeEX("SE*", 1000, 0, null);
	St("R",730, @50,@0,"stミオ_通常_normal");
	Move("@R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm26/0000030b11">
"Charges are so kiddy nowadays!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
With their mischievous yells&, the three brats come raging 
through the store like a storm&.

{
	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",200,true);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm26/0000040b07">
"Oh&, you three&. Welco-&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	CreateSE("SE01","se擬音_コミカル_キュピン01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("L",730, @0,@0,"buキオ_通常_shout");
	FadeSt("L",180,true);
	FadeFFR("@StNameL/L*",0,1000,150,0,0,30,null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm26/0000050b10">
"Ah&, enemy spotted!"

{
	CreateSE("SE01","se擬音_コミカル_キュピン01");
	MusicStart("SE01",0,700,0,1200,null,false);

	St("R",730, @0,@0,"buナオ_通常_shout");
	FadeSt("R",200,true);
	FadeFFR("@StNameR/R*",0,1000,150,0,0,30,null, true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm26/0000060b13">
"Spotted!"

{
	St("L",730, @0,@0,"buキオ_通常_normal");
	FadeSt("L",200,true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm26/0000070b10">
"We'll start our offensive now!"

{
	St("R",730, @0,@0,"buナオ_通常_normal");
	FadeSt("R",200,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm26/0000080b13">
"Nowwww!!!"

{
	CreateSE("SE02","se人体_足音_走り去る子供01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameL/L*", 200, @-50, @0, Dxl3, false);
	Move("@StNameR/R*", 200, @50, @0, Dxl3, false);
	DeleteAllSt(200,true);
}
{
	St("C",740, @0,@0,"buミオ_通常_shout2");
	FadeFFR("@StNameC/C*",0,1000,150,0,0,30,null, true);
	FadeSt("C",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm26/0000090b11">
"Hey! Don't step on my toes!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Move("@StNameC/C*", 200, @0, @50, Dxl3, false);
	DeleteAllSt(200,true);

	St("C",740, @0,@0,"stAM凡人くん_通常_normal");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 150, 0, 5, 0, 0, 500, null, true);

	CreateSE("SE01","se動物_足音_歩く凡人01L");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameC/C*", 500, @80, @0, Dxl1, false);
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The three brats find Bonjin-kun cleaning something and 
start running after him&.

Ren hides himself behind some boxes to avoid being stepped on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE02","se人体_足音_走り去る子供01");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("ML",730, @-50,@0,"stキオ_通常_normal");
	Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,true);

	FadeFFR("@StNameML/ML*",0,1000,150,0,0,30,null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm26/0000100b10">
"Wait&, wait!! Don't run away!"

{
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE02","se人体_足音_走り去る子供01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameML/ML*", 200, @50, @0, Axl3, false);
	DeleteAllSt(180,true);

	St("MR",730, @50,@0,"stナオ_通常_normal");
	Move("@StNameMR/MR*", 180, @-50, @0, Dxl3, false);
	FadeSt("MR",180,true);

	FadeFFR("@StNameMR/MR*",0,1000,150,0,0,30,null, false);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm26/0000110b13">
"Wait&, wait!"

{
	Move("@StNameMR/MR*", 200, @-50, @0, Axl3, false);
	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",180,true);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm26/0000120b07">
"Ah&.&.&. You three&.&.&. Please don't run around like that&.&.&."

{
	DeleteAllSt(180,true);

	St("L",730, @-50,@0,"buキオ_通常_shout");
	Move("@StNameL/L*", 180, @50, @0, Dxl1, false);
	FadeSt("L",180,true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm26/0000130b10">
"Shut up&, baldy!"

{
	SetVolumeEX("@dm*", 1000, 0, null);

	St("R",740, @50,@0,"buナオ_通常_fear");
	Move("@StNameR/R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 150, 0, 10, 0, 0, 500, null, false);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm26/0000140b13">
"Ba&.&.&. Ba? Bah- You idiot! Big bro!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st羽賀_通常_normal2");
	FadeSt("C",180,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm26/0000150b07">
"&.&.&.&.&.&.&.Did you say something just now?"

{
	Fw("fw蒼葉_通常_sigh");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm26/0000160a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEXmul("絵効果201", 201, 0, -530, "cg/data/slide_02_01_0.png");
	Move("絵効果201", 3000, 0, 0, Dxl3, false);
	Fade("絵効果201", 3000, 1000, null, false);
	CreateTextureEX("絵背景151", 151, 0, 0, "cg/ef/efbg怒りの業火.jpg");
	CreateTextureEX("絵背景150", 150, 0, 0, "cg/ef/efbg怒りの業火.jpg");
	Fade("絵背景151", 3000, 1000, null, false);
	Fade("絵背景150", 3000, 1000, null, false);

	CreateSE("SE炎","se環境_自然_炎01L");
	MusicStart("SE炎",3000,500,0,1000,null,true);

	Shake("絵背景151", 500000, 1, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Kio said a taboo word&, and a black aura leered over 
Haga-san's back&.

You'd think they'd learn not to do that by now&.&.&.

{
	SetVolumeEX("SE炎", 3000, 700, null);
	Move("絵背景151", 8000, 0, -450, Dxl1, false);
	Move("絵背景150", 8000, 0, -450, Dxl1, false);

	St("C",740, @0,@0,"st羽賀_通常_smile");
	FadeSt("C",200,true);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm26/0000170b07">
"What was it&.&.&.? Could you say it once more? Go ahead&.
 Ba&.&.&.?"

{
	Fw("fwキオ_通常_fear");
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm26/0000180b10">
"Wa-Wah&, wah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwナオ_通常_fear");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm26/0000190b13">
"Run away!"

{
	Fw("fwミオ_通常_shout");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm26/0000200b11">
"Boys are really stupid!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("SE炎", 1000, 0, null);

	CreatePlainSP("絵板写", 990);
	Delete("絵効果*");
	Delete("絵背景*");
	DeleteAllSt(0,true);
	FadeDelete("絵板写", 200, null, true);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
At that moment&, the door bell rings and cuts into the 
lively atmosphere&.

{
	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",730, @50,@0,"stキオ_通常_shout");
	Move("@StNameC/C*", 200, @-50, @0, Dxl3, false);
	FadeSt("C",200,true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm26/0000210b10">
"Run away&.&.&. Bffght!"{

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,500,0,1000,null,false);

	St("C",730, @0,@0,"stキオ_通常_shock2");
	FadeSt("C",200,false);

	Move("@StNameC/C*", 500, @30, @0, Dxl3, false);
	Shake("@StNameC/C*", 500, 0, 15, 0, 0, 500, null, false);
	DeleteAllSt(500,false);
}<BR>

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Kio&, who had been running to the door&, runs into the 
customer entering the store&.

{
	St("MR",730, @0,@0,"stミオ_通常_shock");
	FadeSt("MR",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm26/0000220b11">
"Hey&, Kio!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"stナオ_通常_normal");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm26/0000230b13">
"It's a customer!"

{
	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",180,true);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm26/0000240b07">
"Ah&, excuse me&.&.&.!"

Haga-san panics and his black aura disappears in a mere 
second&.

{
	St("L",730, @-30,@0,"stキオ_通常_fear");
	FadeSt("L",200,true);
	Move("@StNameL/L*", 500, @30, @0, null, true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm26/0000250b10">
"I'm very sorry!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2610.nss"]

}
