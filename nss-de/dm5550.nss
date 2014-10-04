//<continuation number="310">
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


scene dm5550.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	#ev026蓮メンテd=true;
	#ev026蓮メンテe=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5560.nss";

}


scene dm5550.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg201011_0_ライムパブリックフィールド");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/l/bg304052_5_東江タワー研究エリア廊下02_l.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 800, 800, null, true);
	CreateTextureSP("絵背景EF", 100, Center, Middle, "cg/bg/bg304052_5_東江タワー研究エリア廊下02.jpg");
	Zoom("絵背景EF", 0, 2030, 2030, null, true);
	DrawEffect("絵背景EF", 0, "Ripple", 200, 200, null);
	Fade("絵背景EF", 0, 1000, null, true);
	Fade("絵背景", 0, 500, null, true);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("上背景");
	Zoom("絵背景", 4500, 500, 500, Dxl1, false);
	Zoom("絵背景EF", 4500, 1000, 1000, Dxl1, false);
	FadeDelete("絵色白", 2000, null, true);

	Wait(1000);
	Fade("絵背景", 1500, 1000, null, true);
	Delete("絵背景EF");
	Wait(1500);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.I've finally made it back to reality&.

When I look around&, it seems that everyone else had woken 
up too&.

This is definitely a different place from before&.

Noiz did say that he forced the field open&, so maybe the 
area has just changed&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000020a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Another feeling of pain and heaviness goes through my head&.

{
	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,600,0,1500,null,false);
}
When I slowly sit up&, I notice something placed on my hand&.

A small&, blue paw&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAM蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/5000030a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
&.&.&.Ren&.

Ren&, in his dog form with his tongue sticking out like it 
always did&, looked up at me&.

When I saw him&, I almost felt like crying&.

&.&.&.I'm so glad&. He made it back&.

I'm so happy&.&.&.
I'm so&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_smile");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000040a01">
"Ren&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1300,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	SoundPlay("@dm013",0,450,true);

	CreateTextureEX("絵ＥＶ2", 1100, Center, Middle, "cg/ev/ev026蓮メンテd.jpg");
	Fade("絵ＥＶ2", 1000, 1000, null, true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
I pick up the blue ball of fluff and slowly bring it to my head&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev026蓮メンテe.jpg");
	Fade("絵ＥＶ", 700, 1000, null, true);
}
Ren bumps foreheads with me without any resistance&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000050a01">
"&.&.&.I'm so glad&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/5000060a06">
"I'm sorry&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000070a01">
"It's fine&, already&."

//あきゅん「音声：加工、エコーかな」
//※頭の中で響く蓮の声
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/5000080a06">
"Aoba&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※人型の蓮が頭をちらつく
	CreateTextureEX("絵ＥＶ3", 1110, Center, Middle, "cg/ev/ev554蓮目元アップ.jpg");
	Fade("絵ＥＶ3", 500, 850, null, true);

	FadeDelete("絵ＥＶ3", 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
&.&.&.I'm different from what I was before&.

Ren was originally part of me&.&.&. or rather&, a part of my 
actual self&, not just my body&.

But Ren let himself acknowledge that he was a different 
existance&.

It must be that my head feels a little empty after such an impossible feat&.

It feels a little weird&, like I'm a little heavier&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
But it's all right&.

I can deal with this since it means that Ren doesn't have 
to disappear&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	PrintGO("上背景", 5000);
	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, null, true);

{	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/5000090a02">
"-Ouch! So I guess it went well?"

{	St("R",740, @50,@0,"stクリア_通常マスクあり_normal");
	FadeSt("R",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm55/5000100a04">
"Everyone has come back&. Master is all right as well&.
 That's amazing!"

{	St("L",740, @-50,@0,"stノイズ_通常_normal");
	FadeSt("L",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm55/5000110a03">
"It would've been dangerous if it lasted any longer&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000120a01">
"Everyone&.&.&. Thank you for coming here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/5000130a02">
"Don't say that&. That's kinda embarrassing&."

{	St("L",740, @-50,@0,"stノイズ_通常_normal3");
	FadeSt("L",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm55/5000140a03">
"It wasn't really for you or anything&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm55/5000150a04">
"It's great that Ren-san is back&, too!"

{	Fw("fw蒼葉_通常_smile2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000160a01">
"Yeah&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/5000170a06">
"I caused some trouble&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMベニ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm55/5000180b16">
"You sure did&. I was so worried!"

{	Fw("fwAMトリ_通常_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm55/5000190b12">
"It's a big thing to survive that bug&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
It's really great that we all came back safely&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000200a01">
"What about the guards and the Allmates?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",740, @-50,@0,"stノイズ_通常_normal2");
	St("R",740, @50,@0,"stミンク_通常_normal");
	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063a]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm55/5000210a03">
"They're around somewhere&. There are other floors&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_angry4");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/5000220a02">
"Toue's next&. That bastard&, we need to get to him quick&."

{	FwPro("fw蒼葉_通常_worry",2000,"fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000230a01">
"Toue&.&.&. Wait&, what about the Old Resident District?
 Are they okay over there?"

{	St("C",740, @0,@0,"st紅雀_通常_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/5000240a02">
"Not right now&. It looks like they're having a mandatory
 broadcast of Toue's speech for the end of the event
 today&."

{	St("L",740, @-50,@0,"stノイズ_通常_serious");
	FadeSt("L",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm55/5000250a03">
"Something bad is happening down there&. Yesterday was the
 music&. This time&.&.&."

{	St("R",740, @50,@0,"stミンク_通常_normal2");
	FadeSt("R",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm55/5000260a05">
"It's lights and music so they can get all of them at
 once&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/5000270a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 400, 600, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
That equipment must be one of those things that imitate 
Sei's powers&.

My mood sinks when I remember what Virus and Trip told me&.

I have to stop Toue quickly&.

And&.&.&. I want to save Sei if I can&.

I'm here all because of Granny&, but Sei was always trapped by Toue&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵色黒", 400, null, true);

	St("C",740, @0,@0,"st紅雀_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0089]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/5000280a02">
"So&, where is he? Upstairs?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("R",740, @50,@0,"stミンク_通常_serious");
	FadeSt("R",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm55/5000290a05">
"Toue's office should be on the highest floor&."

{	St("L",740, @-50,@0,"stノイズ_通常_normal2");
	FadeSt("L",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm55/5000300a03">
"Idiots like him like tall places&."

{	St("C",740, @0,@0,"st紅雀_通常_think");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/5000310a02">
"So if we can make it there without any trouble&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	DeleteFw();
	DeleteAllSt(200,true);

//※次ファイル["dm5560.nss"]
}
