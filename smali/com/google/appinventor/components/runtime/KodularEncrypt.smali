.class public Lcom/google/appinventor/components/runtime/KodularEncrypt;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component which performs several encrypt/decrypt functions"
    helpUrl = "https://docs.kodular.io/components/storage/cryptography/"
    iconName = "images/encrypt.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "javax-xml-bind.jar",
        "apache-xerces.jar"
    }
.end annotation


# instance fields
.field private MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

.field private SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

.field private SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

.field private XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

.field private context:Landroid/content/Context;

.field private e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

.field private eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

.field private nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 31
    move-object v2, v0

    const v3, 0xfa00

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    .line 32
    move-object v2, v0

    const/16 v3, 0x18

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    .line 33
    move-object v2, v0

    const/16 v3, 0x12

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    .line 34
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Ljava/lang/String;

    .line 35
    move-object v2, v0

    const/16 v3, 0xa

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    .line 36
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    .line 37
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    .line 42
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->context:Landroid/content/Context;

    .line 43
    const-string/jumbo v2, "Kodular Encrypt"

    const-string/jumbo v3, "Kodular Encrypt Component Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 44
    return-void
.end method


# virtual methods
.method public AES128Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given hash using the given key through AES-128. If any exception occurs, returns empty string."
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES128;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public AES128Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encodes the given string using the given key through AES-128. If any exception occurs, returns empty string."
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES128;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public AES128GenKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a secure random AES 128 key"
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES128;->generateKey()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public AES128Key()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the AES-128 Key"
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public AES128Key(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the AES-128 Key"
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public AES256Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given hash using the given key through AES-256. If there are any exceptions, returns empty string"
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularEncrypt;->context:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->decode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public AES256Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encodes the given string using the given key through AES-256. If there are any exceptions, returns empty string"
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularEncrypt;->context:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->encode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public AES256GenKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a secure random AES 256 key"
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES128;->generateKey()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public AES256Key()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the AES-256 Key"
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public AES256Key(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the AES-256 Key"
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public BCryptCreateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hash using BCrypt"
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    :try_start_0
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBCrypt;->hashPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 237
    :goto_0
    return-object v0

    .line 235
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 236
    const-string/jumbo v3, "Kodular Encrypt"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 237
    const-string/jumbo v3, ""

    move-object v0, v3

    goto :goto_0
.end method

.method public BCryptGenerateSalt()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a salt usable for hashing with BCrypt"
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBCrypt;->gensalt(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 247
    :goto_0
    return-object v0

    .line 245
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 246
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 247
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public BCryptSaltSize()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the BCrypt Salt Size"
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularEncrypt;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    move v0, v1

    return v0
.end method

.method public BCryptSaltSize(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the BCrypt Salt Size"
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    .line 107
    return-void
.end method

.method public BCryptVerifyPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Verifies if the input password is the same one as the correct hashed password using BCrypt algorithm"
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    :try_start_0
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBCrypt;->checkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 227
    :goto_0
    return v0

    .line 225
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 226
    const-string/jumbo v3, "Kodular Encrypt"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 227
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public Base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given hash using Base64"
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBase64;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 185
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 184
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 185
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public Base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encodes the given string using Base64"
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBase64;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 195
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 194
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 195
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public Enigma(Ljava/lang/String;IIILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 19
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encrypts or decrypts the given string simulating an Enigma machine. Rotors can go from 1 to 8, but they cannot be repeated. Reflector can be B, C or 0 if none. Plugboard is a list with sub-list of two items containing a character each one, which replace the first character with the second one."
    .end annotation

    .prologue
    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v12

    .line 369
    const-string/jumbo v12, ""

    move-object v8, v12

    .line 370
    const/4 v12, 0x0

    move v9, v12

    :goto_0
    move v12, v9

    move-object v13, v6

    invoke-virtual {v13}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 371
    move-object v12, v6

    move v13, v9

    invoke-virtual {v12, v13}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    .line 372
    move-object v10, v13

    instance-of v12, v12, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v12, :cond_1

    .line 373
    move-object v12, v10

    check-cast v12, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    .line 374
    move-object v10, v13

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 375
    move-object v12, v10

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 376
    move-object v12, v10

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 377
    move-object v12, v7

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 378
    .line 384
    const-string/jumbo v12, " "

    move-object v8, v12

    .line 370
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 379
    :cond_0
    const-string/jumbo v12, "Sub-item does not have two items"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v12

    .line 400
    :goto_1
    return-object v0

    .line 382
    :cond_1
    const-string/jumbo v12, "Sub-item not a list"

    move-object v0, v12

    goto :goto_1

    .line 386
    :cond_2
    move-object v12, v7

    :try_start_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 388
    move v12, v2

    const/16 v13, 0x8

    if-gt v12, v13, :cond_3

    move v12, v3

    const/16 v13, 0x8

    if-gt v12, v13, :cond_3

    move v12, v4

    const/16 v13, 0x8

    if-gt v12, v13, :cond_3

    move v12, v2

    if-lez v12, :cond_3

    move v12, v3

    if-lez v12, :cond_3

    move v12, v4

    if-gtz v12, :cond_4

    .line 389
    :cond_3
    const-string/jumbo v12, "Rotors has to be between 1 and 8"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v12

    goto :goto_1

    .line 391
    :cond_4
    move-object v12, v5

    const-string/jumbo v13, "B"

    if-eq v12, v13, :cond_5

    move-object v12, v5

    const-string/jumbo v13, "C"

    if-eq v12, v13, :cond_5

    move-object v12, v5

    const-string/jumbo v13, "0"

    if-eq v12, v13, :cond_5

    .line 392
    const-string/jumbo v12, "Reflector has to be B, C or 0 8 (none)"

    move-object v0, v12

    goto :goto_1

    .line 394
    :cond_5
    move-object v12, v9

    :try_start_2
    invoke-static {v12}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->pbParser(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 395
    const-string/jumbo v12, "Duplicated entries in plugboard"

    move-object v0, v12

    goto :goto_1

    .line 397
    :cond_6
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v9

    invoke-static/range {v12 .. v17}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->encrypt(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    move-object v0, v12

    goto :goto_1

    .line 398
    :catch_0
    move-exception v12

    move-object v7, v12

    .line 399
    const-string/jumbo v12, "Kodular Encrypt"

    move-object v13, v7

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 400
    const-string/jumbo v12, ""

    move-object v0, v12

    goto :goto_1
.end method

.method public MD5CreateHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a MD5 hash"
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularMD5;->createHash(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 174
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 173
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 174
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public PBKDF2CreateHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hash using PBKDF2"
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularEncrypt;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/KodularEncrypt;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularEncrypt;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->createHash(Ljava/lang/String;III)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 163
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 162
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 163
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public PBKDF2HashByteSize()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the PBKDF2 Hash Byte Size"
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularEncrypt;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    move v0, v1

    return v0
.end method

.method public PBKDF2HashByteSize(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "18"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the PBKDF2 Hash Byte Size"
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    .line 79
    return-void
.end method

.method public PBKDF2Iterations()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the PBKDF2 number of Iterations"
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularEncrypt;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    move v0, v1

    return v0
.end method

.method public PBKDF2Iterations(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "64000"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the PBKDF2 number of Iterations"
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    .line 53
    return-void
.end method

.method public PBKDF2SaltByteSize()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the PBKDF2 Salt Byte Size"
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularEncrypt;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    move v0, v1

    return v0
.end method

.method public PBKDF2SaltByteSize(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "24"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the PBKDF2 Salt Byte Size"
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    .line 66
    return-void
.end method

.method public PBKDF2VerifyPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Verifies if the input password is the same one as the correct hashed password using PBKDF2 algorithm"
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    :try_start_0
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->verifyPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 153
    :goto_0
    return v0

    .line 151
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 152
    const-string/jumbo v3, "Kodular Encrypt"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 153
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-1 string"
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA1;->sha1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 258
    :goto_0
    return-object v0

    .line 256
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 257
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 258
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public SHA224(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-224 string"
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA224;->sha224(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 268
    :goto_0
    return-object v0

    .line 266
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 267
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 268
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-256 string"
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA256;->sha256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 278
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 277
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 278
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public SHA384(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-384 string"
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA384;->sha384(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 288
    :goto_0
    return-object v0

    .line 286
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 287
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 288
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public SHA512(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-512 string"
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA512;->sha512(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 298
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 297
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 298
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public TripleDESDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given hash using the given key through TripleDES"
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularEncrypt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularTripleDES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 206
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 205
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 206
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public TripleDESEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encodes the given string using the given key through TripleDES"
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularEncrypt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularTripleDES;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 216
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 215
    const-string/jumbo v2, "Kodular Encrypt"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 216
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public TripleDESKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the TripleDES Key"
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularEncrypt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public TripleDESKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the TripleDES Key"
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularEncrypt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Ljava/lang/String;

    .line 93
    return-void
.end method
