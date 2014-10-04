//<continuation number="170">
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


scene dm0430_vs.nss_MAIN
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
	$GameName = "dm0440.nss";

}


scene dm0430_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06ライム喧騒モブ");
	FadeBG(0,true);

	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev042ノイズＶＳ紅雀.jpg");

	CreateSE("SE10","se環境_ガヤ_荒くれ賛美01");
	MusicStart("SE10",1000,700,0,1000,null,true);

	CreateSE("SE20","se環境_ガヤ_ざわつき01L");
	MusicStart("SE20",3000,500,0,1000,null,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
It looks like those two are fighting&.

And it even looks like they both don't want to miss this 
chance to be able to&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	FwPro("fw紅雀_通常_angry",1570,"fw紅雀_通常_mad");
//	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/3000010a02">
"Well then&.&.&. Here I go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");

	CreateSE("SE05","se戦闘_打撃_ヒット低01");
	MusicStart("SE05",0,700,0,1000,null,false);

	CreateSE("SE06","se戦闘_打撃_ヒット低02");
	MusicStart("SE06",0,700,0,1000,null,false);

	CreateSE("SE07","se戦闘_動作_走る01a");
	MusicStart("SE07",0,600,0,1000,null,false);

	CreateSE("SE08","se人体_足音_一歩01");
	MusicStart("SE08",0,700,0,1000,null,false);

	CreateTextureSP("絵背景100", 100, -271, -534, "cg/bg/l/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ_l.jpg");
	Delete("絵ＥＶ");
	Wait(30);

	FadeDelete("絵フラッシュ白", 100, null, true);

	CreateSE("SE12","se環境_ガヤ_歓声02");
	MusicStart("SE12",0,700,0,1000,null,false);
	CreateSE("SE13","se環境_戦闘_乱闘01L");
	MusicStart("SE13",0,700,0,1000,null,true);

//	Fade("絵背景1500", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Koujaku and Noiz clash&, and both Rib and Rhyme players 
start fighting each other like it's a free-for-all&.

Since there are no rules&, more people join in and it's a 
giant mess&.

The large alleyway fills with the sound of screams and 
roars&, and the sound of fighting echos far and wide&.

I have to at least stop Koujaku and Noiz&.&.&.!

I force my way through to get to them&, but a guy from the 
side swoops down on me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラA_ドライ_normal");//野次馬Ａ
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【野次馬Ａ】
<voice name="野次馬Ａ" class="野次馬Ａ" src="voice/dm04/3000020e39">
"You're on the Rhyme side aren't you!?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/3000030a01">
"Whoooa!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_風切り低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 100, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
He's about to hit me&, and he looks like he's in for the 
kill&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I reflexively aim for his defenseless neck and strike it 
with my hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【野次馬Ａ】
<voice name="野次馬Ａ" class="野次馬Ａ" src="voice/dm04/3000040e39">
"Ugh!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
His knees buckle in and he falls to the ground&.

That was a close one&.&.&. 
It could've been bad if I wasn't paying attention&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラB_ドライ_normal");//野次馬Ｂ
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
//【野次馬Ｂ】
<voice name="野次馬Ｂ" class="野次馬Ｂ" src="voice/dm04/3000050e40">
"Uryah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
And as soon as that came to mind&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_剣撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEXadd("絵背景EF01", 3000, center, -729, "cg/ef/efx01剣閃02.jpg");
	Rotate("絵背景EF01", 0, @0, @0, 90, null,true);

	Fade("絵背景EF01", 0, 1000, null, true);
	Move("絵背景EF01", 300, @0, 0, Dxl2, false);

	Move("絵背景100", 200, @-100, @0, Dxl1, false);

	FadeDelete("絵背景EF01", 200, Axl1, false);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/3000060a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
The man is swinging his arm&, with something sharp flying 
around&. I soon realize that he has a knife in his hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	FwPro("fw蒼葉_通常_rage",1550,"fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/3000070a01">
"Seriously&, that's not fucking funny!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 990);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I get both his arms in a hold&, and pull them downwards&. As he staggers&, I shove my knee into his chin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラB_ドライ_normal");//野次馬Ｂ
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【野次馬Ｂ】
<voice name="野次馬Ｂ" class="野次馬Ｂ" src="voice/dm04/3000080e40">
"Guh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 990);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写")

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
He bends backwards and I kick the knife that fell from his hand; then I connect a light kick into his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【野次馬Ｂ】
<voice name="野次馬Ｂ" class="野次馬Ｂ" src="voice/dm04/3000090e40">
"Guh&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/3000100a01">
"Jeez&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	Move("絵背景100", 300, @100, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
I look for Koujaku and Noiz again&.

They're still battling&, not a bit focused on what's going 
on around them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/3000110a01">
"Koujaku! Noi&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

//あきゅん「演出：ここでは顔表示なしで」
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm04/3000120b08">
"You bastards! What're you doing!!?!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@SE1*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The booming voice hurts my ears&, and all of the fighting 
suddenly comes to a dead stop&. Everyone turns their heads&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
And then&.&.&.

{
	CreateSE("SE01","se人体_足音_走り去る01複数");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateSE("SE02","se人体_足音_走り去る01複数");
	MusicStart("SE02",0,700,0,700,null,false);
	CreateSE("SE04","se人体_足音_走り去る01複数");
	MusicStart("SE04",0,700,0,500,null,false);
	CreateSE("SE03","se環境_ガヤ_荒くれ不満01");
	MusicStart("SE03",0,500,0,1000,null,true);
}
Once we saw who yelled&, we all started running away as 
fast as we could&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

	St("C",740, @0,@0,"st悪島_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Akushima&.&.&.!

The policemen all pull out their guns&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@SE*", 5000, 0, null);

	St("C",740, @0,@0,"st悪島_通常_shock");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm04/3000130b08">
"What the hell's all of this noise!? Rhyme!? Rib!? Either
 way&, you're all getting the DEATH PENALTY!!!"

{
	DeleteAllSt(200,true);
	Fw("fw紅雀_通常_shout");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/3000140a02">
"Aoba!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
Against the stampede of people running in the opposite 
direction&, Koujaku heads my way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0057]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/3000150a01">
"Where's Noiz?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_angry4");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/3000160a02">
"He ran away&. We have to go too!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	CreateSE("SE02","se戦闘_動作_走る01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Koujaku grabs my arm and we start running&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st悪島_通常_shout");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm04/3000170b08">
"GET BACK HEEEEEEREEEEE!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	SetVolumeEX("@SE*", 2000, 0, null);
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 2000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
Akushima's loud yells could be heard even as we ran father away out of the alley&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	WaitAction("@絵色黒", null);
	Wait(500);
	ClearFadeAll(0, true);

//※次ファイル["dm0440.nss"]

}
