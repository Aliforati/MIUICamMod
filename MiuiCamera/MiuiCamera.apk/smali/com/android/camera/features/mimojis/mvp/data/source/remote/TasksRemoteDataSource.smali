.class public Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;


# static fields
.field public static INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource; = null

.field public static final SERVICE_LATENCY_IN_MILLIS:I = 0x1388

.field public static final TASKS_SERVICE_DATA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mvp/data/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    const-string v0, "Build tower in Pisa"

    const-string v1, "Ground looks good, no foundation work required."

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->addTask(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Finish bridge in Tacoma"

    const-string v1, "Found awesome girders at half the cost!"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->addTask(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    return-object v0
.end method

.method public static addTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

    return-object v0
.end method


# virtual methods
.method public activateTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 3

    new-instance v0, Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/features/mimojis/mvp/data/Task;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public activateTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clearCompletedTasks()V
    .locals 2

    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public completeTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 4

    new-instance v0, Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mvp/data/Task;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public completeTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deleteAllTasks()V
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public deleteTask(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getTask(Ljava/lang/String;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;)V
    .locals 2

    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/data/Task;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;-><init>(Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getTasks(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$1;-><init>(Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public refreshTasks()V
    .locals 0

    return-void
.end method

.method public saveTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 2

    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->TASKS_SERVICE_DATA:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
