.class public Lcom/google/appinventor/components/runtime/KodularResourceUtilities;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/resourceUtilities.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation


# instance fields
.field private AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Ljava/lang/String;

.field private UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isCompanion:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 40
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->isCompanion:Z

    .line 41
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Ljava/lang/String;

    .line 42
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Ljava/lang/String;

    .line 47
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->context:Landroid/content/Context;

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 50
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->isCompanion:Z

    .line 53
    :cond_0
    const-string/jumbo v2, "KodularResourceUtilities"

    const-string/jumbo v3, "Kodular Resource Utilities Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 54
    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    if-nez v3, :cond_0

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "There was a problem to get the string \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'. Make sure on your side is all correct."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 119
    :goto_0
    return-object v0

    .line 105
    :cond_0
    move-object v3, v0

    const-string/jumbo v4, "\\"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 107
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 109
    move-object v0, v4

    if-eqz v3, :cond_1

    .line 110
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 112
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 114
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 115
    const-string/jumbo v3, "KodularResourceUtilities"

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 117
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 118
    const-string/jumbo v3, "KodularResourceUtilities"

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 119
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    const-string/jumbo v5, "The file name can not be empty."

    move-object v0, v5

    .line 161
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    .line 128
    move v5, v2

    if-eqz v5, :cond_1

    .line 129
    move-object v5, v1

    const-string/jumbo v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    move-object v5, v1

    const-string/jumbo v6, "file://"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 131
    new-instance v5, Ljava/io/File;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 134
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    .line 138
    move v5, v2

    if-eqz v5, :cond_5

    move-object v5, v3

    if-eqz v5, :cond_5

    .line 139
    move-object v5, v1

    :try_start_0
    const-string/jumbo v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v1

    const-string/jumbo v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 140
    :cond_2
    new-instance v5, Ljava/net/URL;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 142
    move-object v1, v6

    const v6, 0xea60

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 143
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 144
    new-instance v5, Ljava/io/BufferedReader;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/io/InputStreamReader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 154
    :goto_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v1, v6

    if-eqz v5, :cond_6

    .line 155
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_1

    .line 146
    :cond_3
    const/4 v5, 0x0

    move-object v0, v5

    goto/16 :goto_0

    .line 149
    :cond_4
    new-instance v5, Ljava/io/BufferedReader;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/io/FileReader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    goto :goto_1

    .line 152
    :cond_5
    new-instance v5, Ljava/io/BufferedReader;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/io/InputStreamReader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    goto :goto_1

    .line 157
    :cond_6
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 158
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 160
    const-string/jumbo v5, "KodularResourceUtilities"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 161
    const/4 v5, 0x0

    move-object v0, v5

    goto/16 :goto_0
.end method


# virtual methods
.method public GetStringContentByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block is deprecated and will be removed soon. Use instead \'Get String From Asset\' or \'Get String From Path\'."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "\'Get String Content By Name\' is deprecated and works not longer. Use instead \'Get String From Asset\' or \'Get String From Path\' blocks."

    move-object v0, v3

    return-object v0
.end method

.method public GetStringFromAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the text from a asset resource file. Make sure you uploaded a file at \'Resource File From Asset\' property."
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->ResourceFileFromAsset()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->isCompanion:Z

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public GetStringFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the text from a path resource file. Make sure you added a file path at \'Resource File From Path\' property. The path can be too a link to a url."
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->ResourceFileFromPath()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->isCompanion:Z

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public ResourceFileFromAsset()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the used resource file from asset."
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ResourceFileFromAsset(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the file which is used as resource file. The file must be stored in the assets folder."
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 60
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method public ResourceFileFromPath()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the used resource file from path."
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ResourceFileFromPath(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the file which is used as resource file. The file path must be valid to any file you want to use. The path can be too a link to a url."
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 74
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Ljava/lang/String;

    .line 76
    :cond_0
    return-void
.end method
