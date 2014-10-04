//<continuation number="180">
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


scene dm2330lv.nss_MAIN
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
	#ev233ノイズを抱き寄せる=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2340lv.nss";

}


scene dm2330lv.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, -515, -572, "cg/bg/l/bg304081_5_東江タワー物置部屋_l.jpg");

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景101", 101, 0, -50, "cg/bg/l/bg304081_5_東江タワー物置部屋_l.jpg");
	Move("絵背景101", 1000, @0, @50, Dxl1, false);
	Fade("絵背景101", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Saying that&, I stretch out my arm and pull Noiz's head to  my chest&.

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/3000010a03">
"&.&.&.Hey&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000020a01">
"It's okay&. Just stay like this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
He resists at first&, but little by little he relaxes 
himself&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ109", 109, Center, Middle, "cg/ev/ev233ノイズを抱き寄せる.jpg");
	Fade("絵ＥＶ109", 1000, 1000, null, true);
	Delete("絵背景101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I hold Noiz's head firmly to my chest&.

I'm positive that with the kind of guy Noiz is&, actions 
speaking way louder than words definitely applies&.

When I was younger and I cried&, Granny would always do the same for me&.

For whatever reason&, whenever I felt Granny's warmth&, I'd  always calm down&.

So maybe it'll work on Noiz&, too&.

Especially since he doesn't know the warmth of other 
people&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000030a01">
"There may be only one thing I can teach you&. Maybe&.&.&. the  fact that this world is not so bad as you think it is&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/3000040a03">
"I haven't thought about what kind of place this world is
 in the first place&. I'm not interested&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000050a01">
"That's because you just don't know&. Because you have an
 awful lot of things you don't know about&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/3000060a03">
"Is there a reason I should know?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000070a01">
"To put it in your words&, it's more profitable to know
 rather than not knowing&, right?"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/3000080a03">
"Then are you going to teach me how to do this?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000090a01">
"&.&.&.&.&."

Surprised&, I look down to Noiz&.

I didn't expect him to ever say anything like that&.

A slightly ticklish warmth comes over me and I put more 
thought into how carefully I hold Noiz's head&.

{
	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1400,null,false);

	CreateTextureEX("絵ＥＶ110", 110, -495, -283, "cg/ev/m/ev233ノイズを抱き寄せる_m.jpg");
	Move("絵ＥＶ110", 800, -399, -283, Dxl1, false);
	Fade("絵ＥＶ110", 800, 1000, null, true);
	Delete("絵ＥＶ109");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000100a01">
"Let's see&. If you think about me a little more&, and
 promise not to do anything reckless&, I will&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000110a01">
"Because&, I'm like a big brother since I'm older anyway&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/3000120a03">
"That's kinda annoying&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000130a01">
"Shut up&."

I can't help but smile&.

I felt like I understood Noiz a little better&, and it made me kinda happy&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/3000140a03">
"&.&.&.It's a little too hot&."

When he mutters something and I release my hand from his 
head&, Noiz gets up and sits on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,500,0,800,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,400,0,1400,null,false);

	Move("絵ＥＶ110", 500, @0, @50, null, false);
	FadeDelete("絵ＥＶ110", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I sit up and lean on a nearby shelf&.

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000150a01">
"So&. Can you make a promise?"

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/3000160a03">
"I don't understand things like that&.&.&. I don't know&. If
 I feel like it&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/3000170a01">
"Then that means you don't know when you want me to teach
 you&, right?"

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/3000180a03">
"I don't know&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
It's the same as always&, those blunt&, uninterested 
responses&, but&.&.&.

Noiz has been avoiding eye contact this entire time&.

Wait&, is he&.&.&. embarrassed?

If so&, then he might've actually taken a bit of what I 
said to heart&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2340lv.nss"]

}
