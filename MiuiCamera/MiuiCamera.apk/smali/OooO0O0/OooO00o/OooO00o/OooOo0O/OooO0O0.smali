.class public LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO0o0:Ljava/lang/Object;


# instance fields
.field public final OooO00o:Landroid/content/Context;

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0Oo;

.field public final OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0O0/OooO00o/OooO00o/OooO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0o0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;LOooO0O0/OooO00o/OooO00o/OooO0Oo;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "LOooO0O0/OooO00o/OooO00o/OooO0Oo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0O0/OooO00o/OooO00o/OooO;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0O0:Ljava/lang/String;

    :cond_0
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_1

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0Oo:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o:Landroid/content/Context;

    return-void

    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o:Landroid/content/Context;

    iput-object p4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0Oo:Ljava/util/Map;

    invoke-virtual {p0, p3}, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0Oo;)V

    return-void
.end method

.method private OooO0O0(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0o0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0O0/OooO00o/OooO00o/OooO;

    invoke-virtual {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO;->OooO00o(Landroid/graphics/Bitmap;)V

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooO;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO;->OooO00o()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0Oo;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, LOooO0O0/OooO00o/OooO00o/OooO0Oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0O0(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO;->OooO0OO()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v5, 0xa0

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v5, "data:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "base64,"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    const/16 v0, 0x2c

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, v0

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0O0(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "data URL did not have correct base64 format."

    :goto_1
    invoke-static {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0OO(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_4
    :try_start_1
    iget-object v4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO;->OooO0o()I

    move-result v2

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO;->OooO0Oo()I

    move-result v0

    invoke-static {v1, v2, v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    const-string v0, "Unable to open asset."

    goto :goto_1
.end method

.method public OooO00o(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0Oo:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0O0/OooO00o/OooO00o/OooO;

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooO;->OooO00o()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooO;->OooO00o(Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooO;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO;->OooO00o()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0O0(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0Oo;)V
    .locals 0

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0Oo;

    return-void
.end method

.method public OooO00o(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
