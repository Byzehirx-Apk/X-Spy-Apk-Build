.class public final Lcom/google/appinventor/components/runtime/KodularPollfish;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/pollfish/interfaces/PollfishClosedListener;
.implements Lcom/pollfish/interfaces/PollfishCompletedSurveyListener;
.implements Lcom/pollfish/interfaces/PollfishOpenedListener;
.implements Lcom/pollfish/interfaces/PollfishReceivedSurveyListener;
.implements Lcom/pollfish/interfaces/PollfishSurveyNotAvailableListener;
.implements Lcom/pollfish/interfaces/PollfishUserNotEligibleListener;
.implements Lcom/pollfish/interfaces/PollfishUserRejectedSurveyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    iconName = "images/pollfish.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "pollfish.jar",
        "pollfish.aar",
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-ads-identifier.jar",
        "play-services-ads-identifier.aar",
        "play-services-basement.jar",
        "play-services-basement.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

.field private testMode:Z

.field private xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 61
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 64
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    .line 65
    move-object v2, v0

    const-string/jumbo v3, "Single Survey"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;

    .line 69
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 70
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 72
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularPollfish;->TestMode(Z)V

    .line 73
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularPollfish;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyMode(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularPollfish;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "KODULAR_PREF"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularPollfish;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularPollfish;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularPollfish;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/pollfish/classes/SurveyInfo;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 303
    const-string/jumbo v1, ""

    move-object v0, v1

    .line 306
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "CPA="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2}, Lcom/pollfish/classes/SurveyInfo;->getSurveyCPA()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",LOI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 307
    invoke-virtual {v2}, Lcom/pollfish/classes/SurveyInfo;->getSurveyLOI()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",IR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 308
    invoke-virtual {v2}, Lcom/pollfish/classes/SurveyInfo;->getSurveyIR()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",Reward Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 309
    invoke-virtual {v2}, Lcom/pollfish/classes/SurveyInfo;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",Reward Value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 310
    invoke-virtual {v2}, Lcom/pollfish/classes/SurveyInfo;->getRewardValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    move-object v0, v1

    goto :goto_0
.end method

.method private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j()V
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    new-instance v2, Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularPollfish;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/pollfish/main/PollFish$ParamsBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 222
    :goto_0
    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->releaseMode(Z)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 223
    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->rewardMode(Z)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    move-object v3, v0

    .line 224
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "offerwall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->offerWallMode(Z)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    move-object v3, v0

    .line 225
    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishCompletedSurveyListener(Lcom/pollfish/interfaces/PollfishCompletedSurveyListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    move-object v3, v0

    .line 226
    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishReceivedSurveyListener(Lcom/pollfish/interfaces/PollfishReceivedSurveyListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    move-object v3, v0

    .line 227
    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishOpenedListener(Lcom/pollfish/interfaces/PollfishOpenedListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    move-object v3, v0

    .line 228
    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishClosedListener(Lcom/pollfish/interfaces/PollfishClosedListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    move-object v3, v0

    .line 229
    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishSurveyNotAvailableListener(Lcom/pollfish/interfaces/PollfishSurveyNotAvailableListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    move-object v3, v0

    .line 230
    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishUserNotEligibleListener(Lcom/pollfish/interfaces/PollfishUserNotEligibleListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    move-object v3, v0

    .line 231
    invoke-virtual {v2, v3}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishUserRejectedSurveyListener(Lcom/pollfish/interfaces/PollfishUserRejectedSurveyListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Lcom/pollfish/main/PollFish$ParamsBuilder;->build()Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v2

    move-object v1, v2

    .line 234
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/pollfish/main/PollFish;->initWith(Landroid/app/Activity;Lcom/pollfish/main/PollFish$ParamsBuilder;)V

    .line 235
    return-void

    .line 221
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final APIKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns value of Pollfish API Key"
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularPollfish;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final APIKey(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularPollfish;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularPollfish;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/ReplForm;

    if-nez v4, :cond_1

    .line 100
    move-object v4, v0

    move-object v5, v1

    move-object v3, v5

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1113
    move-object v2, v5

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/KodularPollfish;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v5, v3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1115
    if-nez v4, :cond_1

    .line 1128
    new-instance v4, Ljava/lang/Thread;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Lcom/google/appinventor/components/runtime/KodularPollfish$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/KodularPollfish$1;-><init>(Lcom/google/appinventor/components/runtime/KodularPollfish;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1180
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 103
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularPollfish;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 104
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/KodularPollfish;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j()V

    .line 105
    goto :goto_0
.end method

.method public final PollfishUserNotEligible()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish user was not eligible."
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "PollfishUserNotEligible"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 273
    return-void
.end method

.method public final PollfishUserRejected()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish user was rejected."
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "PollfishUserRejected"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 278
    return-void
.end method

.method public final ShowSurvey()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show Survey"
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/pollfish/main/PollFish;->show()V

    .line 79
    return-void
.end method

.method public final SurveyClosed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish Survey was closed."
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "SurveyClosed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 246
    return-void
.end method

.method public final SurveyCompleted(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish survey was completed. surveyInfo is CSV list containing CPA, LOI, IR. Empty for Survey Offerwall."
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "SurveyCompleted"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 252
    return-void
.end method

.method public final SurveyMode()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Survey mode. It can either be Single Survey or Survey Offerwall"
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularPollfish;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final SurveyMode(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Single Survey"
        editorType = "pollfish_options"
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;

    .line 193
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularPollfish;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j()V

    .line 194
    goto :goto_0
.end method

.method public final SurveyNotAvailable()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish Survey was not available."
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "SurveyNotAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 268
    return-void
.end method

.method public final SurveyOpened()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Survey was opened."
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "SurveyOpened"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 257
    return-void
.end method

.method public final SurveyReceived(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when device receives survey and user can be prompted to start the survey.surveyInfo is CSV list containing CPA, LOI, IR. Empty for Survey Offerwall."
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "SurveyReceived"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 263
    return-void
.end method

.method public final TestMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to test the component then set this property to true and before publishing to Play Store, set back to false."
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 206
    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    .line 210
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularPollfish;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j()V

    .line 211
    goto :goto_0
.end method

.method public final TestMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    move v0, v1

    return v0
.end method

.method public final onPollfishClosed()V
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyClosed()V

    .line 283
    return-void
.end method

.method public final onPollfishOpened()V
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyOpened()V

    .line 293
    return-void
.end method

.method public final onPollfishSurveyCompleted(Lcom/pollfish/classes/SurveyInfo;)V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularPollfish;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/pollfish/classes/SurveyInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyCompleted(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public final onPollfishSurveyNotAvailable()V
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyNotAvailable()V

    .line 316
    return-void
.end method

.method public final onPollfishSurveyReceived(Lcom/pollfish/classes/SurveyInfo;)V
    .locals 5

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Pollfish"

    const-string/jumbo v3, "Rewarded Survey"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularPollfish;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 298
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularPollfish;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/pollfish/classes/SurveyInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyReceived(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j()V

    .line 240
    return-void
.end method

.method public final onUserNotEligible()V
    .locals 2

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->PollfishUserNotEligible()V

    .line 321
    return-void
.end method

.method public final onUserRejectedSurvey()V
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->PollfishUserRejected()V

    .line 326
    return-void
.end method
