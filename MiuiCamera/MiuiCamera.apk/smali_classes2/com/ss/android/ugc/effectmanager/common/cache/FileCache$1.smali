.class public Lcom/ss/android/ugc/effectmanager/common/cache/FileCache$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/common/cache/FileCache;->removePattern(Ljava/util/regex/Pattern;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ss/android/ugc/effectmanager/common/cache/FileCache;

.field public final synthetic val$pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/common/cache/FileCache;Ljava/util/regex/Pattern;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/cache/FileCache$1;->this$0:Lcom/ss/android/ugc/effectmanager/common/cache/FileCache;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/common/cache/FileCache$1;->val$pattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/cache/FileCache$1;->val$pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
