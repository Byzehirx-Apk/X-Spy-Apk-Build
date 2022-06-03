.class public Lcom/google/appinventor/components/runtime/TextToSpeech;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The TestToSpeech component speaks a given text aloud.  You can set the pitch and the rate of speech. <p>You can also set a language by supplying a language code.  This changes the pronounciation of words, not the actual language spoken.  For example, setting the language to French and speaking English text will sound like someone speaking English (en) with a French accent.</p> <p>You can also specify a country by supplying a country code. This can affect the pronounciation.  For example, British English (GBR) will sound different from US English (USA).  Not every country code will affect every language.</p> <p>The languages and countries available depend on the particular device, and can be listed with the AvailableLanguages and AvailableCountries properties.</p>"
    iconName = "images/textToSpeech.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

.field private HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Z

.field private KYHvnTv0AWOO8SeFCXsiNXCxcIirISbo8kAOvMnivJLnqAuCVxfixET1OT3ZpHhw:Ljava/lang/String;

.field private LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Lcom/google/appinventor/components/runtime/util/YailList;

.field private LYXVmrSApJtjkX58iaWYcT93zXSX0GhbrHTAKbm3TBRJ5avsjGCN1sJz61Za2zkA:Ljava/lang/String;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

.field private iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:F

.field private kkTI9AxohjOECYVBpzZOuVO0b9llYVM2xqggkPHvpPoNGTREwN5YZmwC10Gk8X2Q:Ljava/lang/String;

.field private tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

.field private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Lcom/google/appinventor/components/runtime/util/YailList;

.field private vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 50
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    sput-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    sput-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/Map;

    .line 2082
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v5

    .line 2083
    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v0, v6

    array-length v5, v5

    move v1, v5

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 2085
    move-object v5, v3

    :try_start_0
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 2086
    move-object v4, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 2087
    sget-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/Map;

    move-object v6, v4

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2091
    .line 2093
    :cond_0
    :goto_1
    move-object v5, v3

    :try_start_1
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 2094
    move-object v4, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 2095
    sget-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Ljava/util/Map;

    move-object v6, v4

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 2099
    .line 2083
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_2

    .line 58
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 52
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    .line 53
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:F

    .line 110
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    .line 111
    move-object v4, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Language(Ljava/lang/String;)V

    .line 112
    move-object v4, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Country(Ljava/lang/String;)V

    .line 114
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 115
    const-string/jumbo v4, "TextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Using "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v2

    if-eqz v6, :cond_1

    const-string/jumbo v6, "external"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " TTS library."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 116
    new-instance v4, Lcom/google/appinventor/components/runtime/TextToSpeech$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/TextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/TextToSpeech;)V

    move-object v3, v4

    .line 129
    move-object v4, v0

    move v5, v2

    if-eqz v5, :cond_2

    new-instance v5, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    .line 130
    :goto_2
    iput-object v5, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    .line 132
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 133
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 134
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 136
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 138
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Z

    .line 139
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/ArrayList;

    .line 140
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/ArrayList;

    .line 141
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 142
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/TextToSpeech;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 144
    return-void

    .line 114
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 115
    :cond_1
    const-string/jumbo v6, "internal"

    goto/16 :goto_1

    .line 129
    :cond_2
    new-instance v5, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    .line 130
    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;-><init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    goto :goto_2
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)Z
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    move v0, v2

    return v0
.end method


# virtual methods
.method public AfterSpeaking(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 418
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterSpeaking"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 419
    return-void
.end method

.method public AvailableCountries()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of the country codes available on this device for use with TextToSpeech.  Check the Android developer documentation under supported languages to find the meanings of these abbreviations."
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->prepareLanguageAndCountryProperties()V

    .line 336
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v0, v1

    return-object v0
.end method

.method public AvailableLanguages()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of the languages available on this device for use with TextToSpeech.  Check the Android developer documentation under supported languages to find the meanings of these abbreviations."
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->prepareLanguageAndCountryProperties()V

    .line 328
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v0, v1

    return-object v0
.end method

.method public BeforeSpeaking()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "BeforeSpeaking"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 409
    return-void
.end method

.method public Country()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->KYHvnTv0AWOO8SeFCXsiNXCxcIirISbo8kAOvMnivJLnqAuCVxfixET1OT3ZpHhw:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Country(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "countries"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Country code to use for speech generation.  This can affect the pronounciation.  For example, British English (GBR) will sound different from US English (USA).  Not every country code will affect every language."
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object v1, v3

    .line 297
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->KYHvnTv0AWOO8SeFCXsiNXCxcIirISbo8kAOvMnivJLnqAuCVxfixET1OT3ZpHhw:Ljava/lang/String;

    .line 300
    :goto_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->kkTI9AxohjOECYVBpzZOuVO0b9llYVM2xqggkPHvpPoNGTREwN5YZmwC10Gk8X2Q:Ljava/lang/String;

    .line 301
    return-void

    .line 1304
    :pswitch_0
    sget-object v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 1305
    move-object v2, v4

    if-nez v3, :cond_0

    .line 1307
    sget-object v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/Map;

    move-object v4, v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    move-object v2, v3

    .line 1309
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 288
    :goto_1
    move-object v1, v3

    .line 289
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->KYHvnTv0AWOO8SeFCXsiNXCxcIirISbo8kAOvMnivJLnqAuCVxfixET1OT3ZpHhw:Ljava/lang/String;

    .line 290
    goto :goto_0

    .line 1309
    :cond_1
    move-object v3, v2

    goto :goto_1

    .line 292
    :pswitch_1
    new-instance v3, Ljava/util/Locale;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 293
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->KYHvnTv0AWOO8SeFCXsiNXCxcIirISbo8kAOvMnivJLnqAuCVxfixET1OT3ZpHhw:Ljava/lang/String;

    .line 294
    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Language()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "languages"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the language for TextToSpeech. This changes the way that words are pronounced, not the actual language that is spoken.  For example setting the language to and speaking English text with sound like someone speaking English with a French accent."
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 179
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object v1, v3

    .line 180
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    .line 183
    :goto_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->LYXVmrSApJtjkX58iaWYcT93zXSX0GhbrHTAKbm3TBRJ5avsjGCN1sJz61Za2zkA:Ljava/lang/String;

    .line 184
    return-void

    .line 1187
    :pswitch_0
    sget-object v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 1188
    move-object v2, v4

    if-nez v3, :cond_0

    .line 1190
    sget-object v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Ljava/util/Map;

    move-object v4, v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    move-object v2, v3

    .line 1192
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 171
    :goto_1
    move-object v1, v3

    .line 172
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    .line 173
    goto :goto_0

    .line 1192
    :cond_1
    move-object v3, v2

    goto :goto_1

    .line 175
    :pswitch_1
    new-instance v3, Ljava/util/Locale;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 176
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    .line 177
    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Pitch()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current value of Pitch"
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    move v0, v1

    return v0
.end method

.method public Pitch(F)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Pitch for TextToSpeech The values should be between 0 and 2 where lower values lower the tone of synthesized voice and greater values raise it."
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 208
    :cond_0
    const-string/jumbo v2, "TextToSpeech"

    const-string/jumbo v3, "Pitch value should be between 0 and 2, but user specified: "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 209
    .line 218
    :goto_0
    return-void

    .line 212
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextToSpeech;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    .line 217
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextToSpeech;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    move v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    const v3, 0x3dcccccd    # 0.1f

    :goto_1
    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->setPitch(F)V

    .line 218
    goto :goto_0

    .line 217
    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method public Result()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    move v0, v1

    return v0
.end method

.method public Speak(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/TextToSpeech;->BeforeSpeaking()V

    .line 398
    new-instance v3, Ljava/util/Locale;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->LYXVmrSApJtjkX58iaWYcT93zXSX0GhbrHTAKbm3TBRJ5avsjGCN1sJz61Za2zkA:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/TextToSpeech;->kkTI9AxohjOECYVBpzZOuVO0b9llYVM2xqggkPHvpPoNGTREwN5YZmwC10Gk8X2Q:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 399
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TextToSpeech;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;)V

    .line 400
    return-void
.end method

.method public SpeechRate()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current value of SpeechRate"
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:F

    move v0, v1

    return v0
.end method

.method public SpeechRate(F)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the SpeechRate for TextToSpeech. The values should be between 0 and 2 where lower values slow down the pitch and greater values accelerate it."
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 241
    :cond_0
    const-string/jumbo v2, "TextToSpeech"

    const-string/jumbo v3, "speechRate value should be between 0 and 2, but user specified: "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 242
    .line 251
    :goto_0
    return-void

    .line 245
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextToSpeech;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:F

    .line 250
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextToSpeech;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    move v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    const v3, 0x3dcccccd    # 0.1f

    :goto_1
    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->setSpeechRate(F)V

    .line 251
    goto :goto_0

    .line 250
    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 441
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onDestroy()V

    .line 444
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 433
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onResume()V

    .line 436
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onStop()V

    .line 428
    return-void
.end method

.method public prepareLanguageAndCountryProperties()V
    .locals 13

    .prologue
    .line 340
    move-object v0, p0

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Z

    if-nez v7, :cond_5

    .line 341
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_0

    .line 342
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v8, v0

    const-string/jumbo v9, "TextToSpeech"

    const/16 v10, 0xa8d

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 347
    move-object v7, v0

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Speak(Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    move-object v7, v0

    move-object v1, v7

    .line 1365
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x4

    if-lt v7, v8, :cond_4

    .line 1368
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v7

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v4, v8

    array-length v7, v7

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_3

    move-object v7, v4

    move v8, v6

    aget-object v7, v7, v8

    move-object v3, v7

    .line 1370
    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    move-object v8, v3

    invoke-interface {v7, v8}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v7

    .line 1371
    const/4 v8, -0x2

    if-eq v7, v8, :cond_2

    .line 1372
    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 1376
    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1377
    move-object v7, v2

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/ArrayList;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1378
    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/ArrayList;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1380
    :cond_1
    move-object v7, v3

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/ArrayList;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1381
    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/ArrayList;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1368
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1385
    :cond_3
    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1386
    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1387
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/TextToSpeech;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1388
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/TextToSpeech;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 350
    :cond_4
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Z

    .line 353
    :cond_5
    goto/16 :goto_0
.end method
