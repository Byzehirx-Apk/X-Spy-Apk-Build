.class public Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularBilling;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 9

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v3, v0

    const-string/jumbo v4, "KodularAdsCommission"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->LOG_TAG:Ljava/lang/String;

    .line 43
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->context:Landroid/content/Context;

    .line 48
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/KodularBilling;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularBilling;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularBilling;

    .line 49
    return-void
.end method

.method private getKodularPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 165
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 168
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 169
    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 170
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 172
    const-string/jumbo v3, ".Screen1"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 174
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getCommision(Ljava/lang/String;Ljava/lang/String;)F
    .locals 10

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularBilling;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/KodularBilling;->hasCommissionRemoved()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    const/4 v5, 0x0

    move v0, v5

    .line 161
    :goto_0
    return v0

    .line 69
    :cond_0
    const v5, 0x3d0f5c29    # 0.035f

    move v3, v5

    .line 72
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 1189
    move-object v4, v6

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    invoke-direct {v6}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getKodularPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v4

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->context:Landroid/content/Context;

    .line 1190
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    .line 2179
    invoke-direct {v6}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getKodularPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2180
    const-string/jumbo v7, "io.kodular"

    const-string/jumbo v8, "com.appybuilder"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1190
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v4

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->context:Landroid/content/Context;

    .line 1191
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    .line 2184
    invoke-direct {v6}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getKodularPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2185
    const-string/jumbo v7, "io.kodular"

    const-string/jumbo v8, "com.thunkable"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1191
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    .line 72
    :goto_1
    if-eqz v5, :cond_1

    .line 73
    const v5, 0x3dae147b    # 0.085f

    move v3, v5

    .line 81
    :cond_1
    const/4 v5, -0x1

    move v4, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_2
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 155
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 156
    move v5, v3

    const v6, 0x3e4ccccd    # 0.2f

    add-float/2addr v5, v6

    move v3, v5

    .line 160
    :goto_3
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Final Commission: "

    move v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 161
    move v5, v3

    move v0, v5

    goto/16 :goto_0

    .line 1191
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 81
    :sswitch_0
    move-object v5, v1

    const-string/jumbo v6, "adcolony"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    move v4, v5

    goto :goto_2

    :sswitch_1
    move-object v5, v1

    const-string/jumbo v6, "applovin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move v4, v5

    goto :goto_2

    :sswitch_2
    move-object v5, v1

    const-string/jumbo v6, "admob"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    move v4, v5

    goto :goto_2

    :sswitch_3
    move-object v5, v1

    const-string/jumbo v6, "amazon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    move v4, v5

    goto :goto_2

    :sswitch_4
    move-object v5, v1

    const-string/jumbo v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    move v4, v5

    goto :goto_2

    :sswitch_5
    move-object v5, v1

    const-string/jumbo v6, "leadbolt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    move v4, v5

    goto :goto_2

    :sswitch_6
    move-object v5, v1

    const-string/jumbo v6, "startapp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    move v4, v5

    goto/16 :goto_2

    :sswitch_7
    move-object v5, v1

    const-string/jumbo v6, "unity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    move v4, v5

    goto/16 :goto_2

    .line 84
    :pswitch_0
    move-object v5, v2

    move-object v1, v5

    const/4 v5, -0x1

    move v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_4
    :goto_4
    move v5, v2

    packed-switch v5, :pswitch_data_2

    .line 88
    move v5, v3

    const v6, 0x3e19999a    # 0.15f

    add-float/2addr v5, v6

    move v3, v5

    .line 89
    goto/16 :goto_3

    .line 84
    :pswitch_1
    move-object v5, v1

    const-string/jumbo v6, "interstitial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    move v2, v5

    goto :goto_4

    .line 87
    :pswitch_2
    move v5, v3

    const v6, 0x3da3d70a    # 0.08f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 90
    :pswitch_3
    move-object v5, v2

    move-object v1, v5

    const/4 v5, -0x1

    move v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :cond_5
    :goto_5
    move v5, v2

    packed-switch v5, :pswitch_data_3

    .line 106
    move v5, v3

    const v6, 0x3e19999a    # 0.15f

    add-float/2addr v5, v6

    move v3, v5

    .line 107
    goto/16 :goto_3

    .line 90
    :sswitch_8
    move-object v5, v1

    const-string/jumbo v6, "banner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    move v2, v5

    goto :goto_5

    :sswitch_9
    move-object v5, v1

    const-string/jumbo v6, "interstitial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move v2, v5

    goto :goto_5

    :sswitch_a
    move-object v5, v1

    const-string/jumbo v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    move v2, v5

    goto :goto_5

    .line 95
    :pswitch_4
    move v5, v3

    const v6, 0x3d8f5c29    # 0.07f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 100
    :pswitch_5
    move v5, v3

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 105
    :pswitch_6
    move v5, v3

    const v6, 0x3e051eb8    # 0.13f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 108
    :pswitch_7
    move-object v5, v2

    move-object v1, v5

    const/4 v5, -0x1

    move v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    :cond_6
    :goto_6
    move v5, v2

    packed-switch v5, :pswitch_data_4

    .line 117
    move v5, v3

    const v6, 0x3e19999a    # 0.15f

    add-float/2addr v5, v6

    move v3, v5

    .line 118
    goto/16 :goto_3

    .line 108
    :sswitch_b
    move-object v5, v1

    const-string/jumbo v6, "banner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    move v2, v5

    goto :goto_6

    :sswitch_c
    move-object v5, v1

    const-string/jumbo v6, "interstitial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move v2, v5

    goto :goto_6

    .line 112
    :pswitch_8
    move v5, v3

    const v6, 0x3d75c28f    # 0.06f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 116
    :pswitch_9
    move v5, v3

    const v6, 0x3db851ec    # 0.09f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 119
    :pswitch_a
    move-object v5, v2

    move-object v1, v5

    const/4 v5, -0x1

    move v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_3

    :cond_7
    :goto_7
    move v5, v2

    packed-switch v5, :pswitch_data_5

    .line 132
    move v5, v3

    const v6, 0x3e19999a    # 0.15f

    add-float/2addr v5, v6

    move v3, v5

    .line 133
    goto/16 :goto_3

    .line 119
    :sswitch_d
    move-object v5, v1

    const-string/jumbo v6, "banner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    move v2, v5

    goto :goto_7

    :sswitch_e
    move-object v5, v1

    const-string/jumbo v6, "interstitial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    move v2, v5

    goto :goto_7

    :sswitch_f
    move-object v5, v1

    const-string/jumbo v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    move v2, v5

    goto :goto_7

    .line 123
    :pswitch_b
    move v5, v3

    const v6, 0x3d75c28f    # 0.06f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 127
    :pswitch_c
    move v5, v3

    const v6, 0x3db851ec    # 0.09f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 131
    :pswitch_d
    move v5, v3

    const v6, 0x3df5c28f    # 0.12f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 134
    :pswitch_e
    move-object v5, v2

    move-object v1, v5

    const/4 v5, -0x1

    move v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_4

    :cond_8
    :goto_8
    move v5, v2

    packed-switch v5, :pswitch_data_6

    .line 143
    move v5, v3

    const v6, 0x3e19999a    # 0.15f

    add-float/2addr v5, v6

    move v3, v5

    .line 144
    goto/16 :goto_3

    .line 134
    :sswitch_10
    move-object v5, v1

    const-string/jumbo v6, "interstitial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    move v2, v5

    goto :goto_8

    :sswitch_11
    move-object v5, v1

    const-string/jumbo v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move v2, v5

    goto :goto_8

    .line 138
    :pswitch_f
    move v5, v3

    const v6, 0x3db851ec    # 0.09f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 142
    :pswitch_10
    move v5, v3

    const v6, 0x3df5c28f    # 0.12f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 146
    :pswitch_11
    move-object v5, v2

    move-object v1, v5

    const/4 v5, -0x1

    move v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_5

    :cond_9
    :goto_9
    move v5, v2

    packed-switch v5, :pswitch_data_7

    .line 153
    move v5, v3

    const v6, 0x3e19999a    # 0.15f

    add-float/2addr v5, v6

    move v3, v5

    .line 154
    goto/16 :goto_3

    .line 146
    :sswitch_12
    move-object v5, v1

    const-string/jumbo v6, "banner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    move v2, v5

    goto :goto_9

    :sswitch_13
    move-object v5, v1

    const-string/jumbo v6, "interstitial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    move v2, v5

    goto :goto_9

    .line 149
    :pswitch_12
    move v5, v3

    const v6, 0x3d4ccccd    # 0.05f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 152
    :pswitch_13
    move v5, v3

    const v6, 0x3da3d70a    # 0.08f

    add-float/2addr v5, v6

    move v3, v5

    goto/16 :goto_3

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        -0x544bf9fc -> :sswitch_3
        -0x4a801d23 -> :sswitch_0
        0x58603fd -> :sswitch_2
        0x6a45775 -> :sswitch_7
        0x1da19ac6 -> :sswitch_4
        0x4650da37 -> :sswitch_1
        0x4e7cc27f -> :sswitch_6
        0x5d09cbf1 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_a
        :pswitch_e
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x240b672c
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 90
    :sswitch_data_1
    .sparse-switch
        -0x533a80d4 -> :sswitch_8
        0x6b0147b -> :sswitch_a
        0x240b672c -> :sswitch_9
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 108
    :sswitch_data_2
    .sparse-switch
        -0x533a80d4 -> :sswitch_b
        0x240b672c -> :sswitch_c
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 119
    :sswitch_data_3
    .sparse-switch
        -0x533a80d4 -> :sswitch_d
        0x6b0147b -> :sswitch_f
        0x240b672c -> :sswitch_e
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 134
    :sswitch_data_4
    .sparse-switch
        0x6b0147b -> :sswitch_11
        0x240b672c -> :sswitch_10
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 146
    :sswitch_data_5
    .sparse-switch
        -0x533a80d4 -> :sswitch_12
        0x240b672c -> :sswitch_13
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
