.class public Lcom/google/appinventor/components/runtime/NearField;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnNewIntentListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component to provide NFC capabilities.  For now this component supports the reading and writing of text tags only (if supported by the device)</p><p>In order to read and write text tags, the component must have its <code>ReadMode</code> property set to True or False respectively.</p><p><strong>Note:</strong> This component will only work on Screen1 of any App Inventor app.</p>"
    iconName = "images/nearfield.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.NFC"
    }
.end annotation


# instance fields
.field private HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Ljava/lang/String;

.field private Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:I

.field private activity:Landroid/app/Activity;

.field private dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Ljava/lang/String;

.field private g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/nfc/NfcAdapter;

.field protected requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 46
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/NearField;->g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:Z

    .line 48
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NearField;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Ljava/lang/String;

    .line 49
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NearField;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Ljava/lang/String;

    .line 61
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    .line 62
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NearField;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:I

    .line 63
    move-object v2, v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    .line 64
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NearField;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/nfc/NfcAdapter;

    .line 68
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NearField;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 69
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NearField;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V

    .line 70
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NearField;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 71
    const-string/jumbo v2, "nearfield"

    const-string/jumbo v3, "Nearfield component created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 72
    return-void

    .line 64
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 13

    .prologue
    .line 206
    move-object v0, p0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 207
    move-object v5, v0

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v0

    move v6, v3

    aget-byte v5, v5, v6

    move v4, v5

    .line 208
    move-object v5, v1

    const-string/jumbo v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move v10, v4

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public LastMessage()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    const-string/jumbo v1, "nearfield"

    const-string/jumbo v2, "String message method stared"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 102
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NearField;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ReadMode(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move v1, p1

    const-string/jumbo v2, "nearfield"

    const-string/jumbo v3, "Read mode set to"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 137
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/NearField;->g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:Z

    .line 138
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/NearField;->g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:Z

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 139
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NearField;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/nfc/NfcAdapter;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NearField;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public ReadMode()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    const-string/jumbo v1, "nearfield"

    const-string/jumbo v2, "boolean method stared"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 114
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NearField;->g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:Z

    move v0, v1

    return v0
.end method

.method public TagRead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "nearfield"

    const-string/jumbo v4, "Tag read: got message "

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 84
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/NearField;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:Ljava/lang/String;

    .line 85
    move-object v3, v0

    const-string/jumbo v4, "TagRead"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 86
    return-void
.end method

.method public TagWritten()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a tag was written."
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    const-string/jumbo v1, "nearfield"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tag written: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NearField;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 91
    move-object v1, v0

    const-string/jumbo v2, "TagWritten"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 92
    return-void
.end method

.method public TextToWrite()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    const-string/jumbo v1, "nearfield"

    const-string/jumbo v2, "String message method stared"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 123
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NearField;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public TextToWrite(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "nearfield"

    const-string/jumbo v3, "Text to write set to"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 149
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NearField;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Ljava/lang/String;

    .line 150
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/NearField;->g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/NearField;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 151
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NearField;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/nfc/NfcAdapter;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NearField;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public WriteType()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NearField;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:I

    move v0, v1

    return v0
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "nearfield"

    const-string/jumbo v4, "Nearfield on onNewIntent.  Intent is: "

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 162
    move-object v3, v0

    move-object v4, v1

    move-object v2, v4

    move-object v1, v3

    .line 1175
    const-string/jumbo v3, "nearfield"

    const-string/jumbo v4, "resolve intent. Intent is: "

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1177
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 1178
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->resolveNFCIntent(Landroid/content/Intent;Lcom/google/appinventor/components/runtime/NearField;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    const-string/jumbo v1, "nearfield"

    const-string/jumbo v2, "OnPause method started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 187
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NearField;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 188
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NearField;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/nfc/NfcAdapter;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->disableNFCAdapter(Landroid/app/Activity;Landroid/nfc/NfcAdapter;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 168
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 169
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    .line 170
    const-string/jumbo v2, "nearfield"

    const-string/jumbo v3, "Nearfield on onResume.  Intent is: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 172
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method
