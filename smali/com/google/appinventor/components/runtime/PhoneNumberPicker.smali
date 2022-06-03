.class public Lcom/google/appinventor/components/runtime/PhoneNumberPicker;
.super Lcom/google/appinventor/components/runtime/ContactPicker;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A button that, when clicked on, displays a list of the contacts\' phone numbers to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact\'s name </li>\n <li> <code>PhoneNumber</code>: the contact\'s phone number </li>\n <li> <code>EmailAddress</code>: the contact\'s email address </li> <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>\n<p>The PhoneNumberPicker component may not work on all Android devices. For example, on Android systems before system 3.0, the returned lists of phone numbers and email addresses will be empty.\n"
    version = 0xa
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_CONTACTS"
    }
.end annotation


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[Ljava/lang/String;

.field private static KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:[Ljava/lang/String;

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "number"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "person"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "primary_email"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    .line 78
    return-void
.end method


# virtual methods
.method public PhoneNumber()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V
    .locals 15

    .prologue
    .line 197
    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v10

    .line 198
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v10

    .line 199
    move-object v10, v1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 200
    move-object v10, v1

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v10

    move v4, v10

    .line 201
    move-object v10, v1

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailIndex(Landroid/database/Cursor;)I

    move-result v10

    move v5, v10

    .line 202
    move-object v10, v1

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getMimeIndex(Landroid/database/Cursor;)I

    move-result v10

    move v6, v10

    .line 204
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneType()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 205
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailType()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 208
    :goto_0
    move-object v10, v1

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_2

    .line 209
    move-object v10, v0

    move-object v11, v1

    move v12, v6

    invoke-virtual {v10, v11, v12}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    .line 210
    move-object v9, v11

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 211
    move-object v10, v2

    move-object v11, v0

    move-object v12, v1

    move v13, v4

    invoke-virtual {v11, v12, v13}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 219
    :goto_1
    move-object v10, v1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    .line 220
    goto :goto_0

    .line 212
    :cond_0
    move-object v10, v9

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 213
    move-object v10, v3

    move-object v11, v0

    move-object v12, v1

    move v13, v5

    invoke-virtual {v11, v12, v13}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 215
    :cond_1
    const-string/jumbo v10, "ContactPicker"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const-string/jumbo v13, "Type mismatch: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " not "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " or "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 221
    :cond_2
    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumberList:Ljava/util/List;

    .line 222
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    .line 223
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 224
    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v10, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    .line 229
    :goto_2
    return-void

    .line 226
    :cond_3
    move-object v10, v0

    const-string/jumbo v11, ""

    iput-object v11, v10, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    .line 229
    :cond_4
    goto :goto_2
.end method

.method public postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v6, ""

    move-object v2, v6

    .line 179
    move-object v6, v1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContactIdIndex(Landroid/database/Cursor;)I

    move-result v6

    move v2, v6

    .line 181
    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameIndex(Landroid/database/Cursor;)I

    move-result v6

    move v3, v6

    .line 182
    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getThumbnailIndex(Landroid/database/Cursor;)I

    move-result v6

    move v4, v6

    .line 183
    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v6

    move v5, v6

    .line 184
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 185
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 186
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 187
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    .line 189
    :cond_0
    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method

.method public preHoneycombGetContactInfo(Landroid/database/Cursor;)V
    .locals 8

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 164
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 165
    move-object v3, v1

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v2, v3

    .line 166
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move v4, v2

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .line 167
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    .line 168
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 169
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    .line 171
    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 11

    .prologue
    .line 105
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->requestCode:I

    if-ne v4, v5, :cond_2

    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 106
    const-string/jumbo v4, "PhoneNumberPicker"

    const-string/jumbo v5, "received intent is "

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 107
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object v1, v4

    .line 110
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_3

    .line 111
    const-string/jumbo v4, "//com.android.contacts/data"

    move-object v2, v4

    .line 116
    :goto_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    const/4 v4, 0x0

    move-object v2, v4

    .line 118
    const/4 v4, 0x0

    move-object v3, v4

    .line 120
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_4

    .line 121
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameProjection()[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:[Ljava/lang/String;

    .line 122
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v5, v1

    sget-object v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 124
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 126
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataProjection()[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[Ljava/lang/String;

    .line 127
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    sget-object v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 128
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V

    .line 129
    .line 135
    :goto_1
    const-string/jumbo v4, "PhoneNumberPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Contact name = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", phone number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", emailAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", contactPhotoUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 145
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 146
    move-object v4, v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 149
    move-object v4, v3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_1
    :goto_2
    move-object v4, v0

    const-string/jumbo v5, "The PhoneNumberPicker component have no \'After Picking\' return value."

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->AfterPicking(Ljava/lang/String;)V

    .line 155
    :cond_2
    return-void

    .line 113
    :cond_3
    const-string/jumbo v4, "//contacts/phones"

    move-object v2, v4

    goto/16 :goto_0

    .line 130
    :cond_4
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v5, v1

    sget-object v6, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 132
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->preHoneycombGetContactInfo(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 142
    :try_start_2
    const-string/jumbo v4, "PhoneNumberPicker"

    const-string/jumbo v5, "Exception in resultReturned"

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 143
    move-object v4, v0

    const/16 v5, 0x453

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->puntContactSelection(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    move-object v4, v2

    if-eqz v4, :cond_5

    .line 146
    move-object v4, v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_5
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 149
    move-object v4, v3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 145
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v2

    if-eqz v4, :cond_6

    .line 146
    move-object v4, v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_6
    move-object v4, v3

    if-eqz v4, :cond_7

    .line 149
    move-object v4, v3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_7
    move-object v4, v1

    throw v4
.end method
