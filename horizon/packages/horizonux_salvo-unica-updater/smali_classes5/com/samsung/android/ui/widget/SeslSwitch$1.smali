.class Lcom/samsung/android/ui/widget/SeslSwitch$1;
.super Landroid/util/Property;
.source "SeslSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/samsung/android/ui/widget/SeslSwitch;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 78
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/samsung/android/ui/widget/SeslSwitch;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/samsung/android/ui/widget/SeslSwitch;

    .line 81
    invoke-static {p1}, Lcom/samsung/android/ui/widget/SeslSwitch;->access$000(Lcom/samsung/android/ui/widget/SeslSwitch;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Lcom/samsung/android/ui/widget/SeslSwitch;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslSwitch$1;->get(Lcom/samsung/android/ui/widget/SeslSwitch;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/samsung/android/ui/widget/SeslSwitch;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/android/ui/widget/SeslSwitch;
    .param p2, "value"    # Ljava/lang/Float;

    .line 86
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->setThumbPosition(F)V

    .line 87
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lcom/samsung/android/ui/widget/SeslSwitch;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslSwitch$1;->set(Lcom/samsung/android/ui/widget/SeslSwitch;Ljava/lang/Float;)V

    return-void
.end method
