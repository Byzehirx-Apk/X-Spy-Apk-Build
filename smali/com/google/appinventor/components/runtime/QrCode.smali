.class public Lcom/google/appinventor/components/runtime/QrCode;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/qrCode.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:I

.field private ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

.field private context:Landroid/content/Context;

.field private fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:Ljava/lang/String;

.field private gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

.field private hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

.field private iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

.field private size:I

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 36
    move-object v2, v0

    const-string/jumbo v3, "Default"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    .line 37
    move-object v2, v0

    const/16 v3, 0xc8

    iput v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    .line 38
    move-object v2, v0

    const-string/jumbo v3, "UTF-8"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

    .line 39
    move-object v2, v0

    const/high16 v3, -0x1000000

    iput v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    .line 40
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    .line 41
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:I

    .line 42
    move-object v2, v0

    const-string/jumbo v3, "png"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

    .line 43
    move-object v2, v0

    const-string/jumbo v3, "http://api.qrserver.com/v1/create-qr-code/?data="

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:Ljava/lang/String;

    .line 49
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->context:Landroid/content/Context;

    .line 50
    const-string/jumbo v2, "QRCode"

    const-string/jumbo v3, "QRCode Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 51
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the background color of the qr code result."
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/QrCode;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background color of the qr code result."
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    .line 154
    return-void
.end method

.method public Charset()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the charset of the input text."
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/QrCode;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Charset(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the charset of the input text."
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public Format()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the selected image format"
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/QrCode;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Format(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "png"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "It\'s possible to create the QR code picture using different file formats, available are PNG, GIF, JPEG and the vector graphic formats SVG and EPS."
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public FrontColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the color of the qr code result."
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/QrCode;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move v0, v1

    return v0
.end method

.method public FrontColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the color of the qr code result."
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    .line 142
    return-void
.end method

.method public GenerateQrCode()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a QR Code and the result is a link to it. Example: Set the resolution(in pixel) to 200(height and width has the same value) and text to: Hello world!. Result: QR code resolution is 200x200, text = Hello world! Your text input is encoded in the link automatically."
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/QrCode;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 76
    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/QrCode;->fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 77
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    move-object v3, v2

    const-string/jumbo v4, "&color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 79
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/QrCode;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 80
    move-object v3, v2

    const-string/jumbo v4, "&bgcolor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 81
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/QrCode;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 82
    move-object v3, v2

    const-string/jumbo v4, "&margin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 83
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/QrCode;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 84
    move-object v3, v2

    const-string/jumbo v4, "&format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/QrCode;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    move-object v3, v2

    const-string/jumbo v4, "&size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    move-object v3, v2

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    move-object v3, v0

    .line 1190
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/QrCode;->context:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 1191
    move-object v1, v4

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 1192
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 1193
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 91
    :goto_0
    if-eqz v3, :cond_2

    .line 92
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/QrCode;->GotResponse(ZLjava/lang/String;)V

    .line 93
    const-string/jumbo v3, "QRCode"

    const-string/jumbo v4, "Success state is: true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 98
    :goto_1
    return-void

    .line 68
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_1
    const-string/jumbo v5, "Can not generate qr code with no text."

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/QrCode;->GotResponse(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    goto :goto_1

    .line 72
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1193
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 95
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/QrCode;->GotResponse(ZLjava/lang/String;)V

    .line 96
    const-string/jumbo v3, "QRCode"

    const-string/jumbo v4, "Success state is: false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 98
    goto :goto_1
.end method

.method public GotResponse(ZLjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "You will find here the success state and image url."
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "GotResponse"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 56
    return-void
.end method

.method public Margin()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the margin in pixels."
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/QrCode;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:I

    move v0, v1

    return v0
.end method

.method public Margin(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Thickness of a margin in pixels. The margin will always have the same color as the background."
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:I

    .line 167
    return-void
.end method

.method public Size()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the size/resolution of the qr code."
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    move v0, v1

    return v0
.end method

.method public Size(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the size/resolution of the qr code."
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    .line 117
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text."
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Default"
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This is the text that is converted as qr code."
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    .line 105
    return-void
.end method
