IF l_return_status != 'S' THEN
DBMS_OUTPUT.PUT_LINE('unexpected errors found!'); 
IF l_msg_count = 1 Then 
DBMS_OUTPUT.PUT_LINE('l_msg_data '||l_msg_data);
ELSIF l_msg_count > 1 Then
LOOP
p_count := p_count+1;
p_msg_data := FND_MSG_PUB.Get(FND_MSG_PUB.G_NEXT,FND_API.G_FALSE);
IF p_msg_data is NULL Then
EXIT;
END IF;
DBMS_OUTPUT.PUT_LINE('Message' || p_count ||'.'||l_msg_data);
END LOOP;
END IF;
ELSE
DBMS_OUTPUT.PUT_LINE(' Got Created Sucessfully : '||lx_customer_trx_id);
END IF;
