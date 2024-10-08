.class public Lcom/mesalabs/cerberus/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genericGetField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 49
    .local v0, "requiredObj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 50
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 54
    goto :goto_1

    .line 52
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils.genericGetField"

    invoke-static {v3, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static genericGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "requiredObj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 40
    goto :goto_1

    .line 38
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils.genericGetField"

    invoke-static {v3, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static varargs genericInvokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 205
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p3

    .line 207
    .local v0, "paramCount":I
    const/4 v1, 0x0

    .line 208
    .local v1, "requiredObj":Ljava/lang/Object;
    new-array v2, v0, [Ljava/lang/Class;

    .line 209
    .local v2, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 211
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    if-ne v4, v5, :cond_0

    .line 212
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    goto :goto_1

    .line 213
    :cond_0
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_1

    .line 214
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    goto :goto_1

    .line 216
    :cond_1
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 209
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v3    # "i":I
    :cond_2
    :try_start_0
    invoke-virtual {p0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 220
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 221
    invoke-virtual {v3, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 224
    goto :goto_3

    .line 222
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Utils.genericInvokeMethod"

    invoke-static {v5, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v1
.end method

.method public static varargs genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 146
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p2

    .line 148
    .local v0, "paramCount":I
    const/4 v1, 0x0

    .line 149
    .local v1, "requiredObj":Ljava/lang/Object;
    new-array v2, v0, [Ljava/lang/Class;

    .line 150
    .local v2, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 152
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    if-ne v4, v5, :cond_0

    .line 153
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    goto :goto_1

    .line 154
    :cond_0
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_1

    .line 155
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    goto :goto_1

    .line 157
    :cond_1
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 150
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "i":I
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 161
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 162
    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 165
    goto :goto_3

    .line 163
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Utils.genericInvokeMethod"

    invoke-static {v5, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v1
.end method

.method public static varargs genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 121
    array-length v0, p2

    .line 123
    .local v0, "paramCount":I
    const/4 v1, 0x0

    .line 124
    .local v1, "requiredObj":Ljava/lang/Object;
    new-array v2, v0, [Ljava/lang/Class;

    .line 125
    .local v2, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 127
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    if-ne v4, v5, :cond_0

    .line 128
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    goto :goto_1

    .line 129
    :cond_0
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_1

    .line 130
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    goto :goto_1

    .line 132
    :cond_1
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 125
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "i":I
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 136
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 137
    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 140
    goto :goto_3

    .line 138
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Utils.genericInvokeMethod"

    invoke-static {v5, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v1
.end method

.method public static varargs genericInvokeMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 171
    const-string v0, "Utils.genericInvokeMethod"

    array-length v1, p3

    .line 173
    .local v1, "paramCount":I
    const/4 v2, 0x0

    .line 175
    .local v2, "requiredObj":Ljava/lang/Object;
    new-array v3, v1, [Ljava/lang/Class;

    .line 178
    .local v3, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 182
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 184
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 186
    aget-object v6, p3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Boolean;

    if-ne v6, v7, :cond_0

    .line 187
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    goto :goto_1

    .line 188
    :cond_0
    aget-object v6, p3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    if-ne v6, v7, :cond_1

    .line 189
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    goto :goto_1

    .line 191
    :cond_1
    aget-object v6, p3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v5

    .line 184
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    .end local v5    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {v4, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 195
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 196
    invoke-virtual {v5, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    .line 199
    goto :goto_3

    .line 197
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v5

    .line 198
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v2

    .line 179
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4
    move-exception v4

    .line 180
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v2
.end method

.method public static varargs genericInvokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 82
    const-string v0, "Utils.genericInvokeMethod"

    array-length v1, p2

    .line 85
    .local v1, "paramCount":I
    const-string v2, "SemPerfManager"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 88
    .local v3, "requiredObj":Ljava/lang/Object;
    :goto_0
    new-array v5, v1, [Ljava/lang/Class;

    .line 91
    .local v5, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 95
    .local v6, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 97
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_3

    .line 99
    aget-object v8, p2, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Boolean;

    if-ne v8, v9, :cond_1

    .line 100
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    goto :goto_2

    .line 101
    :cond_1
    aget-object v8, p2, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_2

    .line 102
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    goto :goto_2

    .line 104
    :cond_2
    aget-object v8, p2, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v5, v7

    .line 97
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 107
    .end local v7    # "i":I
    :cond_3
    :try_start_1
    invoke-virtual {v6, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 108
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 109
    invoke-virtual {v7, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 111
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    move-object v0, v3

    :goto_3
    return-object v0

    .line 113
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v3

    .line 92
    .end local v6    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v3
.end method

.method public static genericNewInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 230
    .local p1, "conCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Utils.genericNewInstance"

    const/4 v1, 0x0

    .line 232
    .local v1, "requiredObj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 234
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 238
    .local v3, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 241
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_1
    new-array v7, v6, [Ljava/lang/Class;

    aput-object v3, v7, v5

    aput-object p1, v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v7

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v7

    .line 243
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object p2, v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    .line 250
    goto :goto_2

    .line 248
    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    .line 249
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    return-object v1

    .line 235
    .end local v3    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4
    move-exception v3

    .line 236
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object v1
.end method

.method public static genericSetField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "fieldValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 73
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 74
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_1

    .line 76
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils.genericSetField"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static genericSetField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/Object;

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 63
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 64
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 65
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils.genericSetField"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 256
    invoke-static {}, Lcom/mesalabs/cerberus/utils/Utils;->isInSamsungMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x1

    return v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public static isInSamsungDeXMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isInSamsungMultiWindowMode()Z
    .locals 3

    .line 267
    const-string v0, "sys.multiwindow.running"

    const-string v1, "not-support"

    invoke-static {v0, v1}, Lcom/mesalabs/cerberus/utils/PropUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "mwState":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const-string v1, "Utils.isInSamsungMultiWindowMode"

    const-string v2, "S Multi Window feature is not available"

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x0

    return v1

    .line 274
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 278
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 279
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0401ce

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 281
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static isTabletDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 285
    invoke-static {p0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x2ad

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
