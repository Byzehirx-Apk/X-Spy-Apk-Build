.class public interface abstract annotation Lcom/google/appinventor/components/annotations/androidmanifest/ProviderElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ProviderElement;
        directBootAware = "false"
        enabled = ""
        exported = ""
        grantUriPermissionElement = {}
        grantUriPermissions = ""
        icon = ""
        initOrder = ""
        label = ""
        metaDataElements = {}
        multiprocess = ""
        pathPermissionElement = {}
        permission = ""
        process = ""
        readPermission = ""
        syncable = ""
        writePermission = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract authorities()Ljava/lang/String;
.end method

.method public abstract directBootAware()Ljava/lang/String;
.end method

.method public abstract enabled()Ljava/lang/String;
.end method

.method public abstract exported()Ljava/lang/String;
.end method

.method public abstract grantUriPermissionElement()[Lcom/google/appinventor/components/annotations/androidmanifest/GrantUriPermissionElement;
.end method

.method public abstract grantUriPermissions()Ljava/lang/String;
.end method

.method public abstract icon()Ljava/lang/String;
.end method

.method public abstract initOrder()Ljava/lang/String;
.end method

.method public abstract label()Ljava/lang/String;
.end method

.method public abstract metaDataElements()[Lcom/google/appinventor/components/annotations/androidmanifest/MetaDataElement;
.end method

.method public abstract multiprocess()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract pathPermissionElement()[Lcom/google/appinventor/components/annotations/androidmanifest/PathPermissionElement;
.end method

.method public abstract permission()Ljava/lang/String;
.end method

.method public abstract process()Ljava/lang/String;
.end method

.method public abstract readPermission()Ljava/lang/String;
.end method

.method public abstract syncable()Ljava/lang/String;
.end method

.method public abstract writePermission()Ljava/lang/String;
.end method
